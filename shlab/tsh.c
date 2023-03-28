/*
 * tsh - A tiny shell program with job control
 *
 * HU Yiwen 2021201719
 */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <errno.h>
#include <setjmp.h>
#include <sys/time.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <math.h>
#include <pthread.h>
#include <semaphore.h>
#include <sys/socket.h>
#include <netdb.h>
#include <netinet/in.h>
#include <arpa/inet.h>


/* Misc manifest constants */
#define MAXLINE    1024   /* max line size */
#define MAXARGS     128   /* max args on a command line */
#define MAXJOBS      16   /* max jobs at any point in time */
#define MAXJID    1<<16   /* max job ID */

/* Job states */
#define UNDEF 0 /* undefined */
#define FG 1    /* running in foreground */
#define BG 2    /* running in background */
#define ST 3    /* stopped */


/*
 * Jobs states: FG (foreground), BG (background), ST (stopped)
 * Job state transitions and enabling actions:
 *     FG -> ST  : ctrl-z
 *     ST -> FG  : fg command
 *     ST -> BG  : bg command
 *     BG -> FG  : fg command
 * At most 1 job can be in the FG state.
 */

 /* Simplifies calls to bind(), connect(), and accept() */
/* $begin sockaddrdef */
typedef struct sockaddr SA;
/* $end sockaddrdef */

/* Persistent state for the robust I/O (Rio) package */
/* $begin rio_t */
#define RIO_BUFSIZE 8192
typedef struct {
    int rio_fd; /* Descriptor for this internal buf */
    int rio_cnt; /* Unread bytes in internal buf */
    char * rio_bufptr; /* Next unread byte in internal buf */
    char rio_buf[RIO_BUFSIZE]; /* Internal buffer */
}
rio_t;
/* $end rio_t */

/* External variables */
extern int h_errno; /* Defined by BIND for DNS errors */
extern char ** environ; /* Defined by libc */

/* Misc constants */
#define MAXBUF 8192 /* Max I/O buffer size */
#define LISTENQ 1024 /* Second argument to listen() */

/* Process control wrappers */
pid_t Fork(void);
void Execve(const char * filename, char *
    const argv[], char *
        const envp[]);
pid_t Wait(int * status);
pid_t Waitpid(pid_t pid, int * iptr, int options);
void Kill(pid_t pid, int signum);
unsigned int Sleep(unsigned int secs);
void Pause(void);
unsigned int Alarm(unsigned int seconds);
void Setpgid(pid_t pid, pid_t pgid);
pid_t Getpgrp();

/* Signal wrappers */
typedef void handler_t(int);
handler_t * Signal(int signum, handler_t * handler);
void Sigprocmask(int how,
    const sigset_t * set, sigset_t * oldset);
void Sigemptyset(sigset_t * set);
void Sigfillset(sigset_t * set);
void Sigaddset(sigset_t * set, int signum);
void Sigdelset(sigset_t * set, int signum);
int Sigismember(const sigset_t * set, int signum);

/* Safe I/O */
static void sio_reverse(char s[]);
static void sio_ltoa(long v, char s[], int b);
static size_t sio_strlen(char s[]);
ssize_t sio_puts(char s[]);
ssize_t sio_putl(long v);
void sio_error(char s[]);
ssize_t Sio_putl(long v);
ssize_t Sio_puts(char s[]);


/* Global variables */
extern char **environ;      /* defined in libc */
char prompt[] = "tsh> ";    /* command line prompt (DO NOT CHANGE) */
int verbose = 0;            /* if true, print additional output */
int nextjid = 1;            /* next job ID to allocate */
char sbuf[MAXLINE];         /* for composing sprintf messages */

struct job_t {              /* The job struct */
    pid_t pid;              /* job Parent ID */
    int jid;                /* job ID [1, 2, ...] */
    int state;              /* UNDEF, BG, FG, or ST */
    char cmdline[MAXLINE];  /* command line */
};
struct job_t jobs[MAXJOBS]; /* The job list */
/* End global variables */


/* Function prototypes */

/* Macro */
#define Vprintf(...) if(verbose) { printf(__VA_ARGS__); }
#define VSputs(msg) if(verbose) { Sio_puts(msg); }
#define VSputl(val) if(verbose) { Sio_putl(val); }
#define VSputjob(pid,jid) if(verbose) { Sio_puts("Job "); Sio_putl(pid); Sio_puts(" ("); Sio_putl(jid); Sio_puts(") "); }

/* Here are the functions that you will implement */
void eval(char *cmdline);  // done
int builtin_cmd(char **argv);  // done
void do_bgfg(char **argv);  // done
void waitfg(pid_t pid);  // done

void sigchld_handler(int sig);
void sigtstp_handler(int sig);
void sigint_handler(int sig);

/* Here are helper routines that we've provided for you */
int parseline(const char *cmdline, int *argc, char **argv);
void sigquit_handler(int sig);

void clearjob(struct job_t *job);
void initjobs(struct job_t *jobs);
int maxjid(struct job_t *jobs);
int addjob(struct job_t *jobs, pid_t pid, int state, char *cmdline);
int deletejob(struct job_t *jobs, pid_t pid);
pid_t fgpid(struct job_t *jobs);
struct job_t *getjobpid(struct job_t *jobs, pid_t pid);
struct job_t *getjobjid(struct job_t *jobs, int jid);
int pid2jid(pid_t pid);
void listjobs(struct job_t *jobs);
void unix_error(char *msg);
void app_error(char *msg);
void usage(void);

/* Other helper functions */
void Exceve(const char *filename, char *const argv[], char *const envp[]);

/*
 * main - The shell's main routine
 */
int main(int argc, char **argv) {
    char c;
    char cmdline[MAXLINE];
    int emit_prompt = 1; /* emit prompt (default) */

    /* Redirect stderr to stdout (so that driver will get all output
     * on the pipe connected to stdout) */
    dup2(1, 2);

    /* Parse the command line */
    while ((c = getopt(argc, argv, "hvp")) != EOF) {
        switch (c) {
            case 'h':             /* print help message */
                usage();
                break;
            case 'v':             /* emit additional diagnostic info */
                verbose = 1;
                break;
            case 'p':             /* don't print a prompt */
                emit_prompt = 0;  /* handy for automatic testing */
                break;
            default:
                usage();
        }
    }

    /* Install the signal handlers */

    /* These are the ones you will need to implement */
    Signal(SIGINT,  sigint_handler);   /* ctrl-c */
    Signal(SIGTSTP, sigtstp_handler);  /* ctrl-z */
    Signal(SIGCHLD, sigchld_handler);  /* Terminated or stopped child */

    /* This one provides a clean way to kill the shell */
    Signal(SIGQUIT, sigquit_handler);

    /* Initialize the job list */
    initjobs(jobs);

    /* Execute the shell's read/eval loop */
    while (1) {
        /* Read command line */
        if (emit_prompt) {
            printf("%s", prompt);
            fflush(stdout);
        }
        if ((fgets(cmdline, MAXLINE, stdin) == NULL) && ferror(stdin)) {
            app_error("fgets error");
        }
        if (feof(stdin)) { /* End of file (ctrl-d) */
            fflush(stdout);
            exit(0);
        }

        /* Evaluate the command line */
        eval(cmdline);
        fflush(stdout);
        fflush(stdout);
    }

    exit(0); /* control never reaches here */
}

/*
 * eval - Evaluate the command line that the user has just typed in
 *
 * If the user has requested a built-in command (quit, jobs, bg or fg)
 * then execute it immediately. Otherwise, fork a child process and
 * run the job in the context of the child. If the job is running in
 * the foreground, wait for it to terminate and then return.  Note:
 * each child process must have a unique process group ID so that our
 * background children don't receive SIGINT (SIGTSTP) from the kernel
 * when we type ctrl-c (ctrl-z) at the keyboard.
*/
void eval(char *cmdline) {

    // (1) Parseline
    static char* argv[MAXARGS];
    int argc;
    int job_state = parseline(cmdline, &argc, argv);
    if (argc == 0 || argv[0] == NULL || builtin_cmd(argv)) {
        return ;
    }

    // (2) Fork
    sigset_t sigmask;
    Sigemptyset(&sigmask);
    Sigaddset(&sigmask, SIGCHLD);
    Sigprocmask(SIG_BLOCK, &sigmask, NULL);

    pid_t pid;
    if ((pid = Fork()) == 0) {
        // Child: excute
        Sigprocmask(SIG_UNBLOCK, &sigmask, NULL);
        Setpgid(0, 0);
        Exceve(argv[0], argv, environ);
        // won't reach here
    }

    // Parent: add job
    addjob(jobs, pid, job_state, cmdline);
    Sigprocmask(SIG_UNBLOCK, &sigmask, NULL);

    if (job_state == BG) {
        printf("[%d] (%d) %s", pid2jid(pid), (int)pid, cmdline);
    } else {
        waitfg(pid);
    }

    return ;
}

/*
 * parseline - Parse the command line and build the argv array.
 *
 * Characters enclosed in single quotes are treated as a single
 * argument.  Return Job State directly.
 */
int parseline(const char *cmdline, int *argc, char **argv) {
    static char array[MAXLINE]; /* holds local copy of command line */
    char *buf = array;          /* ptr that traverses command line */
    char *delim;                /* points to first space delimiter */
    int bg;                     /* background job? */

    strcpy(buf, cmdline);       /* copy cmdline to local buffer */
    buf[strlen(buf)-1] = ' ';   /* replace trailing '\n' with space */
    while (*buf && (*buf == ' ')) { /* ignore leading spaces */
        buf++;
    }
    /* Build the argv list */
    *argc = 0;
    if (*buf == '\'') {
        buf++;
        delim = strchr(buf, '\'');
    } else {
        delim = strchr(buf, ' ');
    }

    while (delim) {
        argv[(*argc)++] = buf;
        *delim = '\0';
        buf = delim + 1;
        while (*buf && (*buf == ' ')) {/* ignore spaces */
            buf++;
        }
        if (*buf == '\'') {
            buf++;
            delim = strchr(buf, '\'');
        } else {
            delim = strchr(buf, ' ');
        }
    }
    argv[*argc] = NULL;

    if (*argc == 0) {  /* ignore blank line */
        return 1;
    }
    /* should the job run in the background? */
    if ((bg = (*argv[(*argc)-1] == '&')) != 0) {
        argv[--(*argc)] = NULL;
    }
    return bg ? BG : FG;
}

/*
 * builtin_cmd - If the user has typed a built-in command then execute
 *    it immediately.
 */
int builtin_cmd(char **argv) {
    if (strcmp(argv[0], "jobs") == 0) {
        listjobs(jobs);
        return 1;

    } else if (strcmp(argv[0], "fg") == 0 || strcmp(argv[0], "bg") == 0) {
        do_bgfg(argv);
        return 1;

    } else if (strcmp(argv[0], "quit") == 0) {
        exit(0);      /* exit normally */

    } else {
        return 0;     /* not a builtin command */
    }
}

/*
 * do_bgfg - Execute the builtin bg and fg commands
 * require the first argument to be PID or jobid and ignore the following
 * arguments
 */
void do_bgfg(char **argv) {

    // (1) check argument

    if (argv[1] == NULL) {
        printf("%s command requires PID or %%jobid argument\n", argv[0]);
        return ;
    }

    if (!isdigit(argv[1]) || (argv[1][0] != '%' && !isdigit(argv[1]+1))) {
        printf("%s: argument must be a PID or %%jobid\n", argv[0]);
    }

    // (2) Get _job by PID or jobid

    struct job_t* _job;
    if (argv[1][0] == '%') {
        // jobid
        int _jid = atoi(argv[1]+1);
        _job = getjobjid(jobs, _jid);
        if (_job == NULL) {
            printf("(%d): No such job\n", _jid);
            return ;
        }
    } else {
        // pid
        pid_t _pid = atoi(argv[1]);
        _job = getjobjid(jobs, _pid);
        if (_job == NULL) {
            printf("(%d): No such process\n", _pid);
        }
    }

    // (3) Change state and continue

    if (strcmp(argv[0], "fg") == 0) {
        // foreground
        _job->state = FG;
        Kill(-_job->pid, SIGCONT);
        waitfg(_job->pid);
    } else {
        // background
        _job->state = BG;
        Kill(-_job->pid, SIGCONT);
        printf("[%d] (%d) %s", _job->jid, _job->pid, _job->cmdline);
    }
}

/*
 * waitfg - Block until process pid is no longer the foreground process
 * waitpid() is useless here, because it cannot capture the status coversion
 * from background to foreground
 */
void waitfg(pid_t pid) {
    struct job_t* _job = getjobpid(jobs, pid);
    while (_job->state == FG) {
        sleep(1);
    }
    Vprintf("waitfg: Process (%d) no longer the fg process\n", (int) pid);
    return;
}

/*****************
 * Signal handlers
 *****************/

/*
 * sigchld_handler - The kernel sends a SIGCHLD to the shell whenever
 *     a child job terminates (becomes a zombie), or stops because it
 *     received a SIGSTOP or SIGTSTP signal. The handler reaps all
 *     available zombie children, but doesn't wait for any other
 *     currently running children to terminate.
 */
void sigchld_handler(int sig) {
    int _errno = errno;  // save errno and restore before return
    pid_t _pid;
    int _jid;
    int status;
    VSputs("Caught sigchld\n");
    while ((_pid = waitpid(-1, &status, WNOHANG | WUNTRACED)) > 0) {
        _jid = pid2jid(_pid);
        VSputjob(_jid, _jid);

        if (WIFEXITED(status)) {
            // Exit normally
            deletejob(jobs, _pid);
            VSputs(" normal termination with status ");
        } else if (WIFSIGNALED(status)) {
            // Exit by signal
            deletejob(jobs, _pid);
            VSputs(" terminated by signal ");
        } else if (WIFSTOPPED(status)) {
            // Signal stop (cannot be captured or ignored): change state manually
            sigset_t mask_all, prev_all;
            Sigfillset(&mask_all);
            Sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
            getjobpid(jobs, _pid)->state = ST;
            Sigprocmask(SIG_SETMASK, &prev_all, NULL);
            VSputs(" stopped by signal ");
        } else {
            VSputs(" unknown status ");
        }
        VSputl(WTERMSIG(status));
        VSputs("\n");
    }

    errno = _errno;
    return ;
}

/*
 * sigint_handler - The kernel sends a SIGINT to the shell whenver the
 *    user types ctrl-c at the keyboard.  Catch it and send it along
 *    to the foreground job.
 */
void sigint_handler(int sig) {
    int _errno = errno;  // save errno and restore before return
    pid_t _pid = fgpid(jobs);
    if (_pid) {
        Kill(-_pid, SIGINT);  // forward to all process in the same process group
        int _jid = pid2jid(_pid);
        VSputjob(_pid, _jid);
        VSputs(" and its entire foreground jobs with same process group are killed\n");
    }
    errno = _errno;
    return;
}

/*
 * sigtstp_handler - The kernel sends a SIGTSTP to the shell whenever
 *     the user types ctrl-z at the keyboard. Catch it and suspend the
 *     foreground job by sending it a SIGTSTP.
 */
void sigtstp_handler(int sig) {
    int _errno = errno;  // save errno and restore before return
    pid_t _pid = fgpid(jobs);
    if (_pid) {
        Kill(-_pid, SIGTSTP);  // forward to all process in the same process group
        int _jid = pid2jid(_pid);
        VSputjob(_pid, _jid);
        VSputs(" and its entire foreground jobs with same process group are killed\n");
    }
    errno = _errno;
    return;
}

/*********************
 * End signal handlers
 *********************/

/***********************************************
 * Helper routines that manipulate the job list
 **********************************************/

/* clearjob - Clear the entries in a job struct */
void clearjob(struct job_t *job) {
    job->pid = 0;
    job->jid = 0;
    job->state = UNDEF;
    job->cmdline[0] = '\0';
}

/* initjobs - Initialize the job list */
void initjobs(struct job_t *jobs) {
    int i;
    for (i = 0; i < MAXJOBS; i++)
    clearjob(&jobs[i]);
}

/* maxjid - Returns largest allocated job ID */
int maxjid(struct job_t *jobs) {
    int i, max=0;

    for (i = 0; i < MAXJOBS; i++) {
        if (jobs[i].jid > max) {
            max = jobs[i].jid;
        }
    }
    return max;
}

/* addjob - Add a job to the job list */
int addjob(struct job_t *jobs, pid_t pid, int state, char *cmdline) {
    int i;

    if (pid < 1)
    return 0;

    for (i = 0; i < MAXJOBS; i++) {
        if (jobs[i].pid == 0) {
            jobs[i].pid = pid;
            jobs[i].state = state;
            jobs[i].jid = nextjid++;
            if (nextjid > MAXJOBS) {
                nextjid = 1;
            }
            strcpy(jobs[i].cmdline, cmdline);
            Vprintf("addjob: Added job [%d] %d %s\n", jobs[i].jid, jobs[i].pid, jobs[i].cmdline);
            return 1;
        }
    }
    printf("Tried to create too many jobs\n");
    return 0;
}

/* deletejob - Delete a job whose PID=pid from the job list */
int deletejob(struct job_t *jobs, pid_t pid) {
    int i;

    if (pid < 1)
    return 0;

    for (i = 0; i < MAXJOBS; i++) {
        if (jobs[i].pid == pid) {
            clearjob(&jobs[i]);
            nextjid = maxjid(jobs)+1;
            return 1;
        }
    }
    return 0;
}

/* fgpid - Return PID of current foreground job, 0 if no such job */
pid_t fgpid(struct job_t *jobs) {
    int i;

    for (i = 0; i < MAXJOBS; i++) {
        if (jobs[i].state == FG) {
            return jobs[i].pid;
        }
    }
    return 0;
}

/* getjobpid  - Find a job (by PID) on the job list */
struct job_t *getjobpid(struct job_t *jobs, pid_t pid) {
    int i;
    if (pid < 1) {
        return NULL;
    }
    for (i = 0; i < MAXJOBS; i++) {
        if (jobs[i].pid == pid) {
            return &jobs[i];
        }
    }
    return NULL;
}

/* getjobjid  - Find a job (by JID) on the job list */
struct job_t *getjobjid(struct job_t *jobs, int jid) {
    int i;

    if (jid < 1) {
        return NULL;
    }
    for (i = 0; i < MAXJOBS; i++) {
        if (jobs[i].jid == jid) {
            return &jobs[i];
        }
    }
    return NULL;
}

/* pid2jid - Map process ID to job ID */
int pid2jid(pid_t pid) {
    int i;

    if (pid < 1) {
        return 0;
    }
    for (i = 0; i < MAXJOBS; i++) {
        if (jobs[i].pid == pid) {
                return jobs[i].jid;
            }
    }
    return 0;
}

/* listjobs - Print the job list */
void listjobs(struct job_t *jobs) {
    int i;

    for (i = 0; i < MAXJOBS; i++) {
        if (jobs[i].pid != 0) {
            printf("[%d] (%d) ", jobs[i].jid, jobs[i].pid);
            switch (jobs[i].state) {
                case BG:
                    printf("Running ");
                    break;
                case FG:
                    printf("Foreground ");
                    break;
                case ST:
                    printf("Stopped ");
                    break;
                default:
                    printf("listjobs: Internal error: job[%d].state=%d ",
                    i, jobs[i].state);
            }
            printf("%s", jobs[i].cmdline);
        }
    }
}
/******************************
 * end job list helper routines
 ******************************/


/***********************
 * Other helper routines
 ***********************/

/*
 * usage - print a help message
 */
void usage(void) {
    printf("Usage: shell [-hvp]\n");
    printf("   -h   print this message\n");
    printf("   -v   print additional diagnostic information\n");
    printf("   -p   do not emit a command prompt\n");
    exit(1);
}

/*
 * sigquit_handler - The driver program can gracefully terminate the
 *    child shell by sending it a SIGQUIT signal.
 */
void sigquit_handler(int sig) {
    printf("Terminating after receipt of SIGQUIT signal\n");
    exit(1);
}


void Exceve(const char *filename, char *const argv[], char *const envp[]) {
    if (execve(filename, argv, environ) < 0) {
        printf("%s: Command not found.\n", argv[0]);
        exit(0);
    }
}


/*********************************************
 ** Wrappers for Unix process control functions
 *********************************************/

/* $begin forkwrapper */
pid_t Fork(void) {
    pid_t pid;

    if ((pid = fork()) < 0)
        unix_error("Fork error");
    return pid;
}
/* $end forkwrapper */

void Execve(const char * filename, char *
    const argv[], char *
        const envp[]) {
    if (execve(filename, argv, envp) < 0)
        unix_error("Execve error");
}

/* $begin wait */
pid_t Wait(int * status) {
    pid_t pid;

    if ((pid = wait(status)) < 0)
        unix_error("Wait error");
    return pid;
}
/* $end wait */

pid_t Waitpid(pid_t pid, int * iptr, int options) {
    pid_t retpid;

    if ((retpid = waitpid(pid, iptr, options)) < 0)
        unix_error("Waitpid error");
    return (retpid);
}

/* $begin kill */
void Kill(pid_t pid, int signum) {
    int rc;

    if ((rc = kill(pid, signum)) < 0)
        unix_error("Kill error");
}
/* $end kill */

void Pause() {
    (void) pause();
    return;
}

unsigned int Sleep(unsigned int secs) {
    unsigned int rc;

    if ((rc = sleep(secs)) < 0)
        unix_error("Sleep error");
    return rc;
}

unsigned int Alarm(unsigned int seconds) {
    return alarm(seconds);
}

void Setpgid(pid_t pid, pid_t pgid) {
    int rc;

    if ((rc = setpgid(pid, pgid)) < 0)
        unix_error("Setpgid error");
    return;
}

pid_t Getpgrp(void) {
    return getpgrp();
}

/************************************
 ** Wrappers for Unix signal functions
 ************************************/

/* $begin sigaction */
handler_t * Signal(int signum, handler_t * handler) {
    struct sigaction action, old_action;

    action.sa_handler = handler;
    sigemptyset( & action.sa_mask); /* Block sigs of type being handled */
    action.sa_flags = SA_RESTART; /* Restart syscalls if possible */

    if (sigaction(signum, & action, & old_action) < 0)
        unix_error("Signal error");
    return (old_action.sa_handler);
}
/* $end sigaction */

/*
 * unix_error - unix-style error routine
 */
void unix_error(char *msg)
{
    sio_puts(msg);
    sio_puts(": ");
    sio_puts(strerror(errno));
    sio_error("\n");
}

/*
 * app_error - application-style error routine
 */
void app_error(char *msg)
{
    sio_puts(msg);
    sio_error("\n");
}

void Sigprocmask(int how,
    const sigset_t * set, sigset_t * oldset) {
    if (sigprocmask(how, set, oldset) < 0)
        unix_error("Sigprocmask error");
    return;
}

void Sigemptyset(sigset_t * set) {
    if (sigemptyset(set) < 0)
        unix_error("Sigemptyset error");
    return;
}

void Sigfillset(sigset_t * set) {
    if (sigfillset(set) < 0)
        unix_error("Sigfillset error");
    return;
}

void Sigaddset(sigset_t * set, int signum) {
    if (sigaddset(set, signum) < 0)
        unix_error("Sigaddset error");
    return;
}

void Sigdelset(sigset_t * set, int signum) {
    if (sigdelset(set, signum) < 0)
        unix_error("Sigdelset error");
    return;
}

int Sigismember(const sigset_t * set, int signum) {
    int rc;
    if ((rc = sigismember(set, signum)) < 0)
        unix_error("Sigismember error");
    return rc;
}



/*************************************************************
 * The Sio (Signal-safe I/O) package - simple reentrant output
 * functions that are safe for signal handlers.
 *************************************************************/

/* Private sio functions */

/* $begin sioprivate */
/* sio_reverse - Reverse a string (from K&R) */
static void sio_reverse(char s[])
{
    int c, i, j;

    for (i = 0, j = strlen(s)-1; i < j; i++, j--) {
        c = s[i];
        s[i] = s[j];
        s[j] = c;
    }
}

/* sio_ltoa - Convert long to base b string (from K&R) */
// 将v转换成它的基b字符串表示，保存在s中
static void sio_ltoa(long v, char s[], int b)
{
    int c, i = 0;
    int neg = v < 0;

    if (neg)
        v = -v;

    do {
        s[i++] = ((c = (v % b)) < 10)  ?  c + '0' : c - 10 + 'a';
    } while ((v /= b) > 0);

    if (neg)
        s[i++] = '-';

    s[i] = '\0';
    sio_reverse(s);
}

/* sio_strlen - Return length of string (from K&R) */
static size_t sio_strlen(char s[])
{
    int i = 0;

    while (s[i] != '\0')
        ++i;
    return i;
}
/* $end sioprivate */

/* Public Sio functions */
/* $begin siopublic */

ssize_t sio_puts(char s[]) /* Put string */
{
    return write(STDOUT_FILENO, s, sio_strlen(s)); //line:csapp:siostrlen
}

ssize_t sio_putl(long v) /* Put long */
{
    char s[128];

    sio_ltoa(v, s, 10); /* Based on K&R itoa() */  //line:csapp:sioltoa
    return sio_puts(s);
}

// _exit 是 exit 异步信号安全的一个变种
void sio_error(char s[]) /* Put error message and exit */
{
    sio_puts(s);
    _exit(1);                                      //line:csapp:sioexit
}
/* $end siopublic */

/*******************************
 * Wrappers for the SIO routines
 ******************************/
ssize_t Sio_putl(long v)
{
    ssize_t n;

    if ((n = sio_putl(v)) < 0)
        sio_error("Sio_putl error");
    return n;
}

ssize_t Sio_puts(char s[])
{
    ssize_t n;

    if ((n = sio_puts(s)) < 0)
        sio_error("Sio_puts error");
    return n;
}

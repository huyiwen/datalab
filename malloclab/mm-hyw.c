/*
 * Memory management using segregated list. Support x86-64 architecture only.
 */
#include "memlib.h"
#include "mm.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>

/* Team structure */
team_t team = {
    "Segregated",
    "HU Yiwen", "huyiwen@ruc.edu.cn",
    "", ""
};

/* Basic constants and macros */
#define WSIZE 4 /* word size (bytes) */
#define DSIZE 8 /* doubleword size (bytes) */
#define CHUNKSIZE (1 << 9) /* initial heap size (bytes) */
#define OVERHEAD 8 /* overhead of header and footer (bytes) */

/* Segregated list (bytes) */
#define LISTSIZE 19

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define PALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7) /* pointer */
#define BALIGN(size) ((size) + (size & 1)) /* bytes */

/* Offset (bytes) */
#define W0 0
#define W1 4
#define W2 8
#define W3 12

#define MAX(x, y) ((x) > (y) ? (x) : (y))
#define MIN(x, y) ((x) < (y) ? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc) ((size) | (alloc))

/* Read and write a word at address p as unsigned int*/
#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

/* Read the size and allocated fields from address p */
#define GET_SIZE(p) (GET((p)) & ~0x7)
#define GET_ALLOC(p) (GET((p)) & 0x1)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp) ((void *)(bp) - WSIZE)
#define FTRP(bp) ((void *)(bp) + GET_SIZE(HDRP((bp))) - DSIZE + (!GET_SIZE(HDRP((bp)))) * WSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp) ((void *)(bp) + GET_SIZE(HDRP((bp))))
#define PREV_BLKP(bp) ((void *)(bp) - GET_SIZE(((void *)(bp) - DSIZE)))

/* Segregated linked list */
#define NEXT_FREE(bp) ((void **)(bp))
#define PREV_FREE(bp) ((void **)(bp) + 1)  /* add 1 unit (8 bytes in x86-64) */
#define GET_NEXT_FREE(bp) (*NEXT_FREE((bp)))
#define GET_PREV_FREE(bp) (*PREV_FREE((bp)))
#define PUT_NEXT_FREE(bp, val) *NEXT_FREE((bp)) = (void *)(val)
#define PUT_PREV_FREE(bp, val) *PREV_FREE((bp)) = (void *)(val)

/* An atomic action of adding a new block */
#define ADDB(bp, size, alloc) \
    do { \
        PUT(HDRP(bp), PACK(size, alloc)); \
        PUT(FTRP(bp), PACK(size, alloc)); \
    } while (0)

/* pointer to first block */
static void *heap_listp;
static void **list_base;
static void **list_limit;
#ifdef DEBUG
static int *nullp = NULL;
#endif

/* function prototypes for internal helper routines */
static void* extend_heap(size_t words);
static void place(void* bp, size_t asize);
static void* find_fit(size_t asize);
static void* coalesce(void* bp);
static void regist(void* bp);
static void unregist(void* bp);
static void* get_root(size_t size, int insert);

/* function prototypes for heap consistency checker */
#ifdef DEBUG
static void printblock(void* bp);
static void checkblock(void* bp);
#endif
void mm_checkheap(int verbose);

/*
 * mm_init - Initialize the memory manager
 */
int mm_init(void)
{
    const int initsize = LISTSIZE * DSIZE + 4 * WSIZE;

    if ((heap_listp = mem_sbrk(initsize)) == (void*)-1) {
        printf("ERROR: mem_sbrk failed in mm_init\n");
        return -1;
    }

    list_base = heap_listp;
    list_limit = heap_listp + LISTSIZE * DSIZE;

    // initialize pointers to free lists
    memset(heap_listp, 0, LISTSIZE * sizeof(void *));

    // initsize
    // {LIST} [padding] [prologue H] [prologue F] [epilogue H/F]
    //                               ^heap_listp

    heap_listp += initsize - DSIZE;
    ADDB(heap_listp, DSIZE, 1);
    PUT(HDRP(NEXT_BLKP(heap_listp)), PACK(0, 1));

    // after extend heap
    // {LIST} [prologue H] [prologue F] [New H] [prev] [next] {...} [New F] [epilogue H/F]
    //                                          ^heap_listp

    if (extend_heap(CHUNKSIZE) == NULL)
        return -1;

    #ifdef DEBUG
    mm_checkheap(0);
    #endif

    return 0;
}

/*
 * mm_malloc - Allocate a block with at least size bytes of payload
 */
void* mm_malloc(size_t size)
{
    /* Ignore spurious requests */
    if (size <= 0) {
        return NULL;
    }

    /* Adjust block size to include overhead and alignment reqs. */
    size_t asize = PALIGN(size + OVERHEAD);

    char* bp;
    /* Search the free list for a fit */
    if ((bp = find_fit(asize)) != NULL) {
        place(bp, asize);
        return bp;
    }

    /* No fit found. Get more memory and place the block */
    size_t extendsize = MAX(asize >> 2, CHUNKSIZE);
    if ((bp = extend_heap(extendsize)) == NULL)
        return NULL;
    place(bp, asize);

    #ifdef DEBUG
    mm_checkheap(0);
    #endif

    return bp;
}

/*
 * mm_free - Free a block
 */
void mm_free(void* bp)
{
    if (bp == NULL) {
        return ;
    }
    size_t size = GET_SIZE(HDRP(bp));
    ADDB(bp, size, 0);
    coalesce(bp);

    #ifdef DEBUG
    mm_checkheap(0);
    #endif
}

/*
 * mm_realloc - naive implementation of mm_realloc
 */
void* mm_realloc(void* ptr, size_t size)
{
    if (ptr == NULL) {
        return mm_malloc(size);
    } else if (size == 0){
        mm_free(ptr);
        return NULL;
    }

    size_t copy_size = GET_SIZE(HDRP(ptr));
    if (copy_size == size) {
        return ptr;
    }

    char prev = GET_ALLOC(FTRP(PREV_BLKP(ptr)));
    char next = GET_ALLOC(HDRP(NEXT_BLKP(ptr)));
    size_t next_size = GET_SIZE(HDRP(NEXT_BLKP(ptr)));
    size_t asize = PALIGN(size);
    size_t total_size = copy_size;
    void *next_ptr = NEXT_BLKP(ptr);
    void *newp = ptr;

    if (prev && !next && (copy_size + next_size >= asize)) {  // extend
        total_size += next_size;
        unregist(next_ptr);
        ADDB(ptr, total_size, 1);
        place(ptr, total_size);

    } else if (!next_size && asize >= copy_size) {
        size_t extend_size = PALIGN(asize - copy_size);
        if((mem_sbrk(extend_size)) == (void *)-1) {
            return NULL;
        }
        ADDB(ptr, total_size + extend_size, 1);
        PUT(HDRP(NEXT_BLKP(ptr)), PACK(0, 1));
        place(ptr, asize);

    } else {
        // update newp here
        if ((newp = mm_malloc(size)) == NULL) {
            return NULL;
        }
        memcpy(newp, ptr, MIN(size, copy_size));
        mm_free(ptr);
    }

    #ifdef DEBUG
    mm_checkheap(0);
    #endif

    return newp;
}

static void* extend_heap(size_t words)
{
    char* bp;
    size_t incr = BALIGN(words) * WSIZE;
    if ((bp = mem_sbrk(incr)) == (void*)-1)
        return NULL;

    ADDB(bp, incr, 0);
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));

    return coalesce(bp);
}

static void place(void* bp, size_t asize)
{
    size_t csize = GET_SIZE(HDRP(bp));

    unregist(bp);
    if ((csize - asize) > (DSIZE + OVERHEAD)) {
        ADDB(bp, asize, 1);
        bp = NEXT_BLKP(bp);
        ADDB(bp, csize - asize, 0);
        regist(bp);
    } else {
        // allocate the whole block
        ADDB(bp, csize, 1);
    }
}

static void* find_fit(size_t asize)
{
    #ifdef DEBUG
    static int cnt = 0;
    static int cnt2 = 0;
    cnt++;
    #endif
    void **root = get_root(asize, 0);
    while (root < list_limit) {
        void *bp = *root;
        while (bp) {
            if (asize <= GET_SIZE(HDRP(bp))) {
                return bp;
            }
            #ifdef DEBUG
            if (bp == GET_NEXT_FREE(bp)) {
                printf("Dead loop %d\n", *nullp);
            }
            cnt2++;
            #endif
            bp = GET_NEXT_FREE(bp);
        }
        root++;
    }
    return NULL;
}

static void* get_root(size_t size, int insert)
{
    // printf("%lu\n", size);
    int i = 0;
    // size_t res = 1 << 4;
    static size_t res[LISTSIZE - 1] = {16, 24, 32, 64, 128, 192, 256, 384, 512, 768, 1024, 1536, 2048, 4096, 8192, 16384, 32768, 114688};

    if (size > res[LISTSIZE - 2]) {
        return list_base + LISTSIZE - 1;
    }

    // leave the last list for large blocks
    for (i = 0; i < LISTSIZE - 1; i++)
        if (size <= res[i])
            break;
    return list_base + i;
}

static void regist(void* bp)
{
    #ifdef DEBUG
    static int cnt = 0;
    cnt++;
    #endif
    void **root = get_root(GET_SIZE(HDRP(bp)), 1);

    // [*root]-> [NEXT, -> [NEXT, -> [NEXT,
    //   NULL <-  PREV] <-  PREV] <-  PREV]
    //           ^bp       ^(old)*root
    PUT_NEXT_FREE(bp, *root);
    if (*root) {
        PUT_PREV_FREE(*root, bp);
    }
    PUT_PREV_FREE(bp, NULL);

    #ifdef DEBUG
    if ((long)root == 0x7ffff67ff050) {
        // bp = 0x7ffff68000f0
        printf("root = 0x7ffff67ff050, bp = %lx, NEXT = %lx, PREV = %lx\n", (unsigned long)bp, (unsigned long)GET_NEXT_FREE(bp), (unsigned long)GET_PREV_FREE(bp));
        if (GET_NEXT_FREE(bp)) {
            printf("NEXT NEXT = %lx, NEXT PREV = %lx\n", (unsigned long)GET_NEXT_FREE(GET_NEXT_FREE(bp)), (unsigned long)GET_PREV_FREE(GET_NEXT_FREE(bp)));
        }
    }
    #endif

    *root = bp;
}

static void unregist(void* bp)
{
    if (bp == NULL) {
        return ;
    }
    void **root = get_root(GET_SIZE(HDRP(bp)), 1);

    // [root] -> [NEXT, -> [NEXT, -> [NEXT,
    //  NULL  <-  PREV] <-  PREV] <-  PREV]
    void *prev = GET_PREV_FREE(bp), *next = GET_NEXT_FREE(bp);
    int state = ((next == NULL) << 1) + (prev == NULL);
    switch (state) {
    case 0: // prev: exist, next: exist
        PUT_NEXT_FREE(prev, next);
        PUT_PREV_FREE(next, prev);
        break;
    case 1: // prev: NULL, next: exist
        PUT_PREV_FREE(next, NULL);
        *root = next;
        break;
    case 2: // prev: exist, next: NULL
        PUT_NEXT_FREE(prev, NULL);
        break;
    case 3: // prev: NULL, next: NULL
        *root = NULL;
        break;
    }
}

static void* coalesce(void* bp)
{
    #ifdef DEBUG
    static int cnt = 0;
    cnt++;
    #endif

    void *prev = HDRP(PREV_BLKP(bp)), *next = FTRP(NEXT_BLKP(bp));
    int alloc = (GET_ALLOC(prev) << 1) + GET_ALLOC(next);
    size_t size = GET_SIZE(HDRP(bp));

    switch (alloc) {
    case 0: // prev: free, next: free
        unregist(PREV_BLKP(bp));
        unregist(NEXT_BLKP(bp));
        size += GET_SIZE(prev) + GET_SIZE(next);
        PUT(prev, size);
        PUT(next, size);
        bp = PREV_BLKP(bp);
        break;
    case 1: // prev: free, next: alloc
        unregist(PREV_BLKP(bp));
        size += GET_SIZE(prev);
        // change the footer first
        PUT(FTRP(bp), size);
        PUT(prev, size);
        bp = PREV_BLKP(bp);
        break;
    case 2: // prev: alloc, next: free
        unregist(NEXT_BLKP(bp));
        size += GET_SIZE(next);
        PUT(HDRP(bp), size);
        PUT(next, size);
        break;
    default: // prev: alloc, next: alloc
        break;
    }

    regist(bp);

    return bp;
}

void mm_checkheap(int verbose)
{
    #ifdef DEBUG
    static int cnt = 0;
    cnt++;
    void* bp = heap_listp;

    int loc = 0;
    if (verbose) {
        loc = 1;
        printf("Heap (%p):\n", heap_listp);
    }

    if ((GET_SIZE(HDRP(heap_listp)) != DSIZE) || !GET_ALLOC(HDRP(heap_listp))) {
        if (loc == 0) {
            printf("Heap (%p):\n", heap_listp);
            loc = 1;
        }
        printf("Bad epilogue header %d\n", *nullp);
    }
    checkblock(heap_listp);

    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if (verbose)
            printblock(bp);
        checkblock(bp);
    }

    if (verbose)
        printblock(bp);
    checkblock(bp);

    if ((GET_SIZE(HDRP(bp)) != 0) || !(GET_ALLOC(HDRP(bp)))) {
        if (loc == 0) {
            printf("Heap (%p):\n", heap_listp);
            loc = 1;
        }
        printf("Bad epilogue header %d\n", *nullp);
    }
    #endif
}

#ifdef DEBUG
static void printblock(void* bp)
{
    size_t hsize, halloc, fsize, falloc;

    hsize = GET_SIZE(HDRP(bp));
    halloc = GET_ALLOC(HDRP(bp));
    fsize = GET_SIZE(FTRP(bp));
    falloc = GET_ALLOC(FTRP(bp));

    if (hsize == 0) {
        printf("%p: EOL\n", bp);
        return;
    }

    printf("%p: header: [%zu:%c] footer: [%zu:%c]\n", bp,
        hsize, (halloc ? 'a' : 'f'),
        fsize, (falloc ? 'a' : 'f'));
}

static void checkblock(void* bp)
{
    if ((size_t)bp % 8)
        printf("Error: %p is not doubleword aligned\n", bp);
    if (GET(HDRP(bp)) != GET(FTRP(bp)))
        printf("Error: header %x does not match footer %x\n", *(int *)HDRP(bp), *(int *)FTRP(bp));
}
#endif

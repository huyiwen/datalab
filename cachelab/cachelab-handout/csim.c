/* Cache lab
 * 胡译文 2021201719
 *
 */

#include "cachelab.h"
#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#define BUF_SIZE 1007


char HELP[] = "Usage: ./csim [-hv] -s <num> -E <num> -b <num> -t <file>\n\
Options:\n\
  -h         Print this help message.\n\
  -v         Verbose\n\
  -s <num>   Number of set index bits.\n\
  -E <num>   Number of lines per set.\n\
  -b <num>   Number of block offset bits.\n\
  -t <file>  Trace file.\n\
\n\
Examples:\n\
  linux>  ./csim -s 4 -E 1 -b 4 -t traces/yi.trace\n\
  linux>  ./csim -v -s 8 -E 2 -b 4 -t traces/yi.trace\n\
  ";


int HIT = 0, MISS = 0, EVICTION = 0;
int E;  // Number of set index bits
int s;  // Number of signal bits
int b;  // Number of block offset bits
int S;  // 2^s = Number of all groups
char t[BUF_SIZE];  // Trace file name
int v = 0;

unsigned index_mask;
int MIN = -1e9;

typedef struct {
    int valid, tag, idle;  // There's no need to store the read content of cache
} CacheLine;

CacheLine **cache;

void parse_opt(int, char**);
void simulate();
void step();
void access(unsigned address);


inline void access(unsigned address) {
    unsigned index = (address >> b) & index_mask;
    unsigned tag = address >> (b + s);

    CacheLine *current_group = cache[index];
    int miss_idx = -1;

    // hit
    for (int i = 0; i < E; i++) {
        if (miss_idx == -1 && current_group[i].valid == 0) {
            miss_idx = i;
        }
        if (current_group[i].tag == tag) {
            current_group[i].idle = 0;
            HIT++;
            return ;
        }
    }

    MISS++;

    // miss
    if (miss_idx != -1) {
        current_group[miss_idx].valid = 1;
        current_group[miss_idx].tag = tag;
        current_group[miss_idx].idle = 0;
        return ;
    }

    // miss & eviction
    EVICTION++;
    int max_idle = MIN, max_idle_idx;
    for (int i = 0; i < E; i++) {
        if (current_group[i].idle > max_idle) {
            max_idle = current_group[i].idle;
            max_idle_idx = i;
        }
    }
    current_group[max_idle_idx].tag = tag;
    current_group[max_idle_idx].idle = 0;
}

inline void step() {
    for (int i = 0; i < S; i++) {
        for (int j = 0; j < E; j++) {
            if (cache[i][j].valid == 1) {
                cache[i][j].idle++;
            }
        }
    }

}


inline void simulate() {
    if (v) {
        printf("simulate\n");
    }
    FILE* pf;
    pf = fopen(t, "r");
    
    char identifier;
    int address;
    int size;

    cache = (CacheLine**)malloc(sizeof(CacheLine*) * S);
    for (int i = 0; i < S; i++) {
        cache[i] = (CacheLine*)malloc(sizeof(CacheLine) * E);
        for (int j = 0; j < E; j++) {
            cache[i][j].valid = cache[i][j].idle = 0;
            cache[i][j].tag = -1;
        }
    }
    if (v) {
        printf("Cache memory alloced\n");
    }

    while (fscanf(pf, " %c %x,%d\n", &identifier, &address, &size) > 0) {
        if (identifier == 'I') {
            continue;
        }

        access(address);
        if (identifier == 'M') {
            access(address);
        }

        if (v) {
            printf("%d %c %d %d %d\n", address, identifier, HIT, MISS, EVICTION);
        }

        step();
    }

    fclose(pf);

    for (int i = 0; i < S; i++) {
        free(cache[i]);
    }
    free(cache);
}


inline void parse_opt(int argc, char** argv) {
    int opt;
    while (-1 != (opt = getopt(argc, argv, "hvs:E:b:t:"))) {
        switch (opt) {
            case 'v' :
                v = 1;
                break;
            case 's' :
                s = atoi(optarg);  // external variable optarg
                break;
            case 'E' :
                E = atoi(optarg);
                break;
            case 'b' :
                b = atoi(optarg);
                break;
            case 't' :
                strncpy(t, optarg, BUF_SIZE);
                break;
            default :
                puts(HELP);
                exit(1);
        }
    }
    if (s <= 0 || E <= 0 || b <= 0 || t == 0) {
        exit(1);
    }

    S = 1 << s;
    index_mask = -1U >> (64 - s);
}


int main(int argc, char** argv) {
    parse_opt(argc, argv);
    simulate();
    printSummary(HIT, MISS, EVICTION);
    return 0;
}

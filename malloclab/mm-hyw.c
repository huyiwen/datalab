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

#define DEBUG

/* Team structure */
team_t team = {
    "Segregated",
    "HU Yiwen", "huyiwen@ruc.edu.cn",
    "", ""
};

/* Basic constants and macros */
#define WSIZE 4 /* word size (bytes) */
#define DSIZE 8 /* doubleword size (bytes) */
#define CHUNKSIZE (1 << 10) /* initial heap size (bytes) */
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

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc) ((size) | (alloc))

/* Read and write a word at address p as unsigned int*/
#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

/* Read the size and allocated fields from address p */
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp) ((void *)(bp) - WSIZE)
#define FTRP(bp) ((void *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE + (!GET_SIZE(HDRP(bp))) * WSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp) ((void *)(bp) + GET_SIZE(HDRP(bp)))
#define PREV_BLKP(bp) ((void *)(bp) - GET_SIZE(((void *)(bp) - DSIZE)))

/* An atomic action of adding a new block */
#define ADDB(bp, size, alloc) \
    do { \
        PUT(HDRP(bp), PACK(size, alloc)); \
        PUT(FTRP(bp), PACK(size, alloc)); \
    } while (0)

#define _LOG1(n) (((n) >= 2) ? 1 : 0)
#define _LOG2(n) (((n) >= 1 <<  2) ? ( 2 + _LOG1((n) >>  2)) : _LOG1(n))
#define _LOG4(n) (((n) >= 1 <<  4) ? ( 4 + _LOG2((n) >>  4)) : _LOG2(n))
#define _LOG8(n) (((n) >= 1 <<  8) ? ( 8 + _LOG4((n) >>  8)) : _LOG4(n))
#define LOG(n)   (((n) >= 1 << 16) ? (16 + _LOG8((n) >> 16)) : _LOG8(n))

/* pointer to first block */
static void *heap_listp;
static void *rover;
static int *nullp = NULL;

/* function prototypes for internal helper routines */
static void* extend_heap(size_t words);
static void place(void* bp, size_t asize);
static void* find_fit(size_t asize);
static void* coalesce(void* bp);
static void printblock(void* bp);
static void checkblock(void* bp);
void mm_checkheap(int verbose);

/*
 * mm_init - Initialize the memory manager
 */
int mm_init(void)
{
    const int initsize = LISTSIZE * DSIZE + 4 * WSIZE;

    if ((heap_listp = mem_sbrk(initsize)) == (void*)-1) {
        printf("ERROR: mem_sbrk failed in mm_init\n");
        exit(1);
    }

    // initialize pointers to free lists
    memset(heap_listp, 0, LISTSIZE * DSIZE);

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

    rover = heap_listp;

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
    size_t asize = (size + OVERHEAD + DSIZE - 1) & (~0x7);

    char* bp;
    /* Search the free list for a fit */
    if ((bp = find_fit(asize)) != NULL) {
        place(bp, asize);
        return bp;
    }

    /* No fit found. Get more memory and place the block */
    size_t extendsize = MAX(asize / WSIZE, CHUNKSIZE);
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
    void* newp;
    size_t copySize;

    if ((newp = mm_malloc(size)) == NULL) {
        printf("ERROR: mm_malloc failed in mm_realloc\n");
        exit(1);
    }
    copySize = GET_SIZE(HDRP(ptr));
    if (size < copySize)
        copySize = size;
    memcpy(newp, ptr, copySize);
    mm_free(ptr);

    #ifdef DEBUG
    mm_checkheap(0);
    #endif

    return newp;
}

void mm_checkheap(int verbose)
{
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

    if ((csize - asize) >= (DSIZE + OVERHEAD)) {
        ADDB(bp, asize, 1);
        bp = NEXT_BLKP(bp);
        ADDB(bp, csize - asize, 0);
    } else {
        // allocate the whole block
        ADDB(bp, csize, 1);
    }
}


static void* find_fit(size_t asize)
{
    void *oldrover = rover;

    /* search from the rover to the end of list */
    for ( ; GET_SIZE(HDRP(rover)) > 0; rover = NEXT_BLKP(rover))
	if (!GET_ALLOC(HDRP(rover)) && (asize <= GET_SIZE(HDRP(rover))))
	    return rover;

    /* search from start of list to old rover */
    for (rover = heap_listp; rover < oldrover; rover = NEXT_BLKP(rover))
	if (!GET_ALLOC(HDRP(rover)) && (asize <= GET_SIZE(HDRP(rover))))
	    return rover;

    return NULL;  /* no fit found */
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
        size += GET_SIZE(prev) + GET_SIZE(next);
        PUT(prev, size);
        PUT(next, size);
        bp = PREV_BLKP(bp);
        break;
    case 1: // prev: free, next: alloc
        size += GET_SIZE(prev);
        // change the footer first
        PUT(FTRP(bp), size);
        PUT(prev, size);
        bp = PREV_BLKP(bp);
        break;
    case 2: // prev: alloc, next: free
        size += GET_SIZE(next);
        PUT(HDRP(bp), size);
        PUT(next, size);
        break;
    default: // prev: alloc, next: alloc
        break;
    }

    if ((rover > bp) && (rover < NEXT_BLKP(bp))) {
        rover = bp;
    }

    return bp;
}

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

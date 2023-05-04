/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 *
 * We are going to implement this malloc by using implicit link first.
 * The little optimiazation is to use two bits to store information.
 * As described in the powerpoint.
 * An allocated block requires header. Telling its length.
 * The last bit is used to note its allocated or not allocated.
 * The second last bit is used to note the previous block is allocated or not.
 * 
 * An unallocted block requires header and footer(To help coalesce)
 * Both will give the infomation of length.
 * 
 * NOTE: This program is a little improvement of given program 'mm_implicit.c'
 * A lot marcos are referenced from mm_implicit.c
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

team_t team = {
    /* Team name */
    "SF_1819",
    /* First member's full name */
    "Shenzhi Yang",
    /* First member's email address */
    "2021201773@ruc.edu.cn",
    /* Second member's full name (leave blank if none) */
    "",
    /* Second member's email address (leave blank if none) */
    ""
};

/* Constants */
#define WSIZE       4       /* word size (bytes) */
#define DSIZE       8       /* doubleword size (bytes) */
#define CHUNKSIZE  (1<<12)  /* initial heap size (bytes) */
#define OVERHEAD    8       /* overhead of header and footer (bytes) */
#define ALIGNMENT   8       /* single word (4) or double word (8) alignment */
#define MIN_EMPTY   16      /* An unallocated block has a header and a footer, sum up to 16.*/

/* Macro functions.*/
/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT - 1)) & ~0x7)

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)  ((size) | (alloc))

/* Compare two different values.*/
#define MAX(x, y) ((x) > (y)? (x) : (y))
#define MIN(x ,y) ((x) > (y)? (y) : (x))

/* Read and write a word at address p */
#define GET(p)             (*(unsigned int *)(p))
#define PUT(p, val)        (*(unsigned int *)(p) = (val))

/* Set and remove the infomation to indicated the previous block. */
#define SETPREV(p)   (*(unsigned int *)(p) = GET(p) | 0b10)
#define MOVEPREV(p)  (*(unsigned int *)(p) = GET(p) & ~0b10)

/* Get SIZE/ALLOCATION and previous ALLOCATION of the block. */
#define GET_SIZE(p)  (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)
#define GET_PREV(p)  (GET(p) & 0b10)

/* Given block ptr bp, compute address of its header and footer */
/* NOTE: An allocated block does not have a footer.*/
#define HDRP(bp)       ((char *)(bp) - WSIZE)
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))    // Call this function only at coalesce

/* Global variables */
static char *heap_listp;  /* pointer to first block */
static char *rover;       /* Next fit rover */

static void *extend_heap(size_t words);
static void place(void *bp, size_t asize);
static void *find_fit(size_t asize);
static void *coalesce(void *bp);
static void printblock(void *bp);
static void checkblock(void *bp);
static void mm_checkheap(int verbose);

/*
 * mm_init - initialize the malloc package.
 * In init, we do the following:
 * 1. Get enough space.
 * 2. Mark this block as unallocated.
 * These two function(mm_init, extend_heap) are from mm-implicit.c
 * For simplicity, we use the same dummy header. But only a header will result in alignment failed.
 * So espcially, we use a header and a footer to set the prologue. And set the next header's second bit always 1.
 * NOTE: We also use a dummy header to avoid border coalesce.
 * EXPECT: None
 * OUTPUT: A heap. both the beginning and the end has a header as malloced.
 */
int mm_init(void)
{
    if ((heap_listp = mem_sbrk(DSIZE + DSIZE)) == (void *) -1)     /* Three block in order to get padding.*/
	    return -1;
    PUT(heap_listp, 0);                             /* alignment padding */
    PUT(heap_listp + WSIZE, PACK(OVERHEAD, 1));     /* prologue header */
    PUT(heap_listp + DSIZE, PACK(OVERHEAD, 1));     /* prologue footer */
    PUT(heap_listp + WSIZE + DSIZE, PACK(0, 1));    /* epilogue header */
    SETPREV(heap_listp + WSIZE + DSIZE);
    heap_listp += DSIZE;
    rover = heap_listp;
    if (extend_heap(CHUNKSIZE / WSIZE) == NULL)
    {
        return -1;
    }
    return 0;
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 * We do the following:
 * 1. Get its proper size. (That is, (size + header) and round up to alignment)
 * 2. Find space for it. (Here we use first fit in order to get better throughout)
 * 3. mark the block as allocated and mark the next block.
 * Two helper functions are find_fit and place.
 * EXPECT: An SIZE.
 * OUTPUT: Get the position, and change two bits of the two block.
 */
void *mm_malloc(size_t size)
{
    size_t asize;      /* adjusted block size */
    size_t extendsize; /* amount to extend heap if no fit */
    char *bp;

    /* Ignore spurious requests */
    if (size <= 0)
	    return NULL;

    asize = ALIGN(size + DSIZE);    // origin size + header.

    /* Search the free list for a fit */
    if ((bp = find_fit(asize)) != NULL)
    {
        place(bp, asize);
    }
    else
    {
        extendsize = MAX(asize,CHUNKSIZE);
        if ((bp = extend_heap(extendsize/WSIZE)) == NULL)
            return NULL;
        place(bp, asize);
    }
    /* No fit found. Get more memory and place the block */
    return bp;
}

/*
 * mm_free - Free a block.
 * We do the following:
 * 1. Clear the header of the allocation.
 * 2. If coalesce is possible, then coalesce.
 * 3. If not, change the next block's second last bit.(Change in function coalesce)
 * one helper function: coalesce.
 */
void mm_free(void *ptr)
{
    size_t size = GET_SIZE(HDRP(ptr));
    PUT(HDRP(ptr), PACK(size, 0) | GET_PREV(HDRP(ptr)));
    coalesce(ptr);
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 * We do the following:
 * Check if the next block is free (and large enough to realloc the memory)
 *  a. If possible. Use malloc approach(Not calling function!) and return the ptr;
 *  b. If not. Then we have to find another place.
 *      1) Search a place by calling Find_fit (Not avoidable)
 *      2) use memcpy to copy all information.
 *      3) Mark the old block as free (Not calling function!)
 *     Keep trace of the new ptr and the old ptr;
 */

// This realloc is truly... Interesting....
void *mm_realloc(void *ptr, size_t size)
{
    void *oldptr = ptr;
    void *newptr;
    size_t copySize;
    /* Special case. */
    if (ptr == NULL)        /*equivalent to malloc.*/
    {
        return mm_malloc(size); // ! this may hurt thoughtout.
    }
    if (size == 0)          /*equivalent to free.*/
    {
        mm_free(ptr);           // ! this may hurt through out.
        return NULL;
    }

    size_t asize = ALIGN(size + DSIZE);
    size_t moresize = asize - GET_SIZE(HDRP(oldptr));
    size_t originsize = GET_SIZE(HDRP(ptr));
    newptr = mm_malloc(size);
    memmove(newptr,oldptr,MIN(originsize,asize) - WSIZE);
    mm_free(oldptr);
    return newptr;
}

/*
 * The following function is internel helper functions.
*/

/*
 * Extend_heap: Extend the heap size by "words".
 * EXPECT: None.
 * OUTPUT: Extend the heap. And to change the second bit of the relevant blocks
 *  (old epilogue block and new epilogue block)
*/
static void *extend_heap(size_t words)
{

    char *bp;
    size_t size;

    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;
    if ((bp = mem_sbrk(size)) == (void *)-1)
	    return NULL;
    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK(size, 0) | GET_PREV(HDRP(bp)));              /* free block header */
    PUT(FTRP(bp), PACK(size, 0) | GET_PREV(HDRP(bp)) );             /* free block footer */
    PUT(HDRP(NEXT_BLKP(bp)), PACK(WSIZE, 1));                       /* new epilogue header */
    return coalesce(bp);
}

/*
 * Find_fit: Find the first block that larger than the asize.
 * return its pointer.
 * To get a better throughout, we may do the next-fit approach.
 * Upd: Using next-fit approach.
*/
static void *find_fit(size_t asize)
{
    char *oldrover = rover;
    /* Search from the rover to the end of list */
    for ( ; GET_SIZE(HDRP(rover)) > 0; rover = NEXT_BLKP(rover))
    {
        //printf("%p %ld %ld\n",rover,asize, GET_SIZE(HDRP(rover)));
        if ((!GET_ALLOC(HDRP(rover)) && (asize <= GET_SIZE(HDRP(rover)))))
            return rover;
    }
    /* search from start of list to old rover */
    for (rover = heap_listp; rover < oldrover; rover = NEXT_BLKP(rover))
    {
        //printf("%p %ld %ld\n",rover,asize, GET_SIZE(HDRP(rover)));
        if ((!GET_ALLOC(HDRP(rover)) && (asize <= GET_SIZE(HDRP(rover)))))
            return rover;
    }
    //printf("\n");

    return NULL;  /* no fit found */

    void *bp;
    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) 
    {
        if (!GET_ALLOC(HDRP(bp)) && (asize <= GET_SIZE(HDRP(bp))))
        {
            return bp;
        }
    }
    return NULL;
}

/*
 * Place: mark the block and its following block.
 * if the empty block can split into two enough blocks, then split.
*/

static void place(void *ptr, size_t asize)
{

    size_t empty_size = GET_SIZE(HDRP(ptr));
    size_t left = empty_size - asize;
    if (left > MIN_EMPTY)                                                  /* split */
    {
        PUT(HDRP(ptr), PACK(asize,1) | GET_PREV(HDRP(ptr)) );               /* Allocated block only has header.*/
        PUT(HDRP(NEXT_BLKP(ptr)), PACK(left, 0));                           /* free block's header*/
        PUT(FTRP(NEXT_BLKP(ptr)), PACK(left, 0));                           /* free block's footer*/
        SETPREV(HDRP(NEXT_BLKP(ptr)));                                      /* Set bit of the next block as malloced*/
        SETPREV(FTRP(NEXT_BLKP(ptr)));
    }
    else                                                                    /* Do not split*/
    {
        PUT(HDRP(ptr), PACK(empty_size,1) | GET_PREV(HDRP(ptr)));           /* Only header.*/
        /* If we do not split. The next block may be free or allocted.*/
        SETPREV(HDRP(NEXT_BLKP(ptr)));
        if (!GET_ALLOC(NEXT_BLKP(ptr)))                                     /* If it is a free block, it has a footer.*/
        {
            SETPREV(FTRP(NEXT_BLKP(ptr)));
        }
    }
    return;
}

/*
 * Coalesce: boundary tag coalescing. Return ptr to coalesced block
 * We do the following.
 * 1. Check its next block is free or not.
 *   a. if is free, then coalesce.
 *   b. if is not. Change its second bit.
 * 2. Check its previous block is free or not by checking the second bit.
 *   a. if is.
 *   b. if is not.
 * EXPECT: a newly freed block. Only has a header.
 * OUTPUT: locate its header and length. Add a footer for the free block.
*/
static void *coalesce(void *bp)
{
    //mm_checkheap(1);
    size_t prev_alloc = GET_PREV(HDRP(bp));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    if (prev_alloc && next_alloc)                                           /* prev and next are all allocated.*/
    {
        //printf("Co 1\n");
        PUT(FTRP(bp), PACK(size, 0) | GET_PREV(HDRP(bp)));
        MOVEPREV(HDRP(NEXT_BLKP(bp)));
        MOVEPREV(FTRP(NEXT_BLKP(bp)));
    }

    else if (prev_alloc && !next_alloc)                                     /* prev allocted, next not allocated.*/
    {
        //printf("Co 2\n");
	    size += GET_SIZE(HDRP(NEXT_BLKP(bp)));                              /* add size of next free block.*/
	    PUT(HDRP(bp), PACK(size, 0) | GET_PREV(HDRP(bp)));                  /* The next block should has a footer.*/
	    PUT(FTRP(bp), PACK(size, 0) | GET_PREV(HDRP(bp)));                  /* Do not require to change the second bit.*/
    }

    else if (!prev_alloc && next_alloc)                                     /* prev not allocted, next allocated.*/
    {
        //printf("Co 3\n");
        void *bp2 = (HDRP(PREV_BLKP(bp)));
        size_t psize = GET_SIZE(bp2);
	    size += GET_SIZE(HDRP(PREV_BLKP(bp)));                              /* free block has a footer.*/
	    PUT(FTRP(bp), PACK(size, 0) | GET_PREV(HDRP(PREV_BLKP(bp))));               /* Set the block of the current block*/
	    PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0) | GET_PREV(HDRP(PREV_BLKP(bp))));    /* Put the header.*/
        MOVEPREV(HDRP(NEXT_BLKP(bp)));
	    bp = PREV_BLKP(bp);
    }

    else                                                                    /* both are not allocated.*/
    {
        //printf("Co 4\n");
	    size += GET_SIZE(HDRP(PREV_BLKP(bp))) +
	        GET_SIZE(FTRP(NEXT_BLKP(bp)));
	    PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0) | GET_PREV(HDRP(PREV_BLKP(bp))));    /* header exists.*/
	    PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0) | GET_PREV(HDRP(PREV_BLKP(bp))));    /* footer exists.*/
	    bp = PREV_BLKP(bp);
    }
    if ((rover > (char *)bp) && (rover < NEXT_BLKP(bp)))
        rover = bp;
    return bp;
}



static void printblock(void *bp) 
{
    size_t hsize, halloc, fsize, falloc;
    hsize = GET_SIZE(HDRP(bp));
    halloc = GET_ALLOC(HDRP(bp));

    if (hsize == 0) {
        printf("%p: End of the heap\n", bp);
        return;
    }
    if (GET_ALLOC(HDRP(bp)))
    {
        printf("pointer %p is allocted,  %d length long.\n",bp,GET_SIZE(HDRP(bp)));
    }
    else
    {
        printf("pointer %p is freed, information: prev alloc [%d], hdlength [%d], ftlength [%d]\n",bp,GET_PREV(HDRP(bp)),GET_SIZE(HDRP(bp)),GET_SIZE(FTRP(bp)));
    }
}

/* bp is the pointer of the data.*/
static void checkblock(void *bp)
{
    if ((size_t)bp % 8)
        printf("Error: %p is not doubleword aligned\n", bp);
    if (GET_ALLOC(HDRP(bp)))
    {
        if (!GET_PREV(HDRP(NEXT_BLKP(bp))))
        {
            printf("Error. allocated block is not marked on the following block.\n");
            //exit(0);
        }
    }
    else
    {
        if (GET(HDRP(bp)) != (GET(FTRP(bp))))
        {
            printf("Error: header does not match footer\n");
            printf("Detailed: %ld %ld\n",GET(HDRP(bp)),GET(FTRP(bp)));
        }
        if (GET_PREV(HDRP(NEXT_BLKP(bp))))
        {
            printf("Error. Freed previous block mark as allocated.\n");
        }
    }
}

/*
 * checkheap - Minimal check of the heap for consistency
 */
void mm_checkheap(int verbose)
{
    char *bp = heap_listp;
    char ch;

    if (verbose)
        printf("Heap (%p):\n", heap_listp);

    if (( (GET_SIZE(HDRP(heap_listp)))  !=  DSIZE))
    {
        printf("%p:",HDRP(heap_listp));
        printf("Prologue header is not large.\n");
    }
    if (!GET_ALLOC(HDRP(heap_listp)))
    {
        printf("prologue header is not allocated.\n");
    }
    printf("\n---------------------------------------\n");
    printf("Begin checking block...\n");

    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) 
    {
        printf("%p::\n",bp);
        if (verbose)
        {
            printblock(bp);
            printf("Info extraction. %ld\n", GET(HDRP(bp)));
        }
        checkblock(bp);
        printf("\n");
        scanf("%c",&ch);
    }

    if (verbose)
        printblock(bp);
    printf("All blocks checked.------------------------\n");
    printf("Current rover: %p\n",rover);
    if ((GET_SIZE(HDRP(bp)) != 0) || !(GET_ALLOC(HDRP(bp))))
        printf("Bad epilogue header\n");
}
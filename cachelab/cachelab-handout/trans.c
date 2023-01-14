/* 
 * 胡译文 2021201719
 *
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);
void _t_32(int A[N][M], int B[M][N]);
void _t_64(int A[N][M], int B[M][N]);
void _t_gen(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N]) {
    if (M == 32 && N == 32) {
        _t_32(A, B);
    } else if (M == 64 && N == 64) {
        _t_64(A, B);
    } else {
        _t_gen(M, N, A, B);
    }
}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

inline void _t_32(int A[N][M], int B[N][M]) {
    int i, gi, gj;
    int t0, t1, t2, t3, t4, t5, t6, t7;
    for (gi = 0; gi < 32; gi += 8) {
        for (gj = 0; gj < 32; gj += 8) {
            for (i = gi; i < gi + 8; i++) {
                t0 = A[i][gj];
                t1 = A[i][gj+1];
                t2 = A[i][gj+2];
                t3 = A[i][gj+3];
                t4 = A[i][gj+4];
                t5 = A[i][gj+5];
                t6 = A[i][gj+6];
                t7 = A[i][gj+7];
                B[gj][i] = t0;
                B[gj+1][i] = t1;
                B[gj+2][i] = t2;
                B[gj+3][i] = t3;
                B[gj+4][i] = t4;
                B[gj+5][i] = t5;
                B[gj+6][i] = t6;
                B[gj+7][i] = t7;
            }
        }
    }
}

inline void _t_64(int M, int N, int A[N][M], int B[N][M]) {
    int i, gi, gj;
    int t0, t1, t2, t3, t4, t5, t6, t7;
    for (gi = 0; gi < 32; gi += 8) {
        for (gj = 0; gj < 32; gj += 8) {
            for (i = gi; i < gi + 8; i++) {
                t0 = A[i][gj];
                t1 = A[i][gj+1];
                t2 = A[i][gj+2];
                t3 = A[i][gj+3];
                t4 = A[i][gj+4];
                t5 = A[i][gj+5];
                t6 = A[i][gj+6];
                t7 = A[i][gj+7];
                B[gj][i] = t0;
                B[gj+1][i] = t1;
                B[gj+2][i] = t2;
                B[gj+3][i] = t3;
                B[gj+4][i] = t4;
                B[gj+5][i] = t5;
                B[gj+6][i] = t6;
                B[gj+7][i] = t7;
            }
        }
    }
    for (gi = 32; gi < 64; gi += 8) {
        for (gj = 32; gj < 64; gj += 8) {
            for (i = gi; i < gi + 8; i++) {
                t0 = A[i][gj];
                t1 = A[i][gj+1];
                t2 = A[i][gj+2];
                t3 = A[i][gj+3];
                t4 = A[i][gj+4];
                t5 = A[i][gj+5];
                t6 = A[i][gj+6];
                t7 = A[i][gj+7];
                B[gj][i] = t0;
                B[gj+1][i] = t1;
                B[gj+2][i] = t2;
                B[gj+3][i] = t3;
                B[gj+4][i] = t4;
                B[gj+5][i] = t5;
                B[gj+6][i] = t6;
                B[gj+7][i] = t7;
            }
        }
    }
    for (gi = 32; gi < 64; gi += 4) {
        for (gj = 0; gj < 32; gj += 4) {
            for (i = gi; i < gi + 4; i++) {
                t0 = A[i][gj];
                t1 = A[i][gj+1];
                t2 = A[i][gj+2];
                t3 = A[i][gj+3];
                B[gj][i] = t0;
                B[gj+1][i] = t1;
                B[gj+2][i] = t2;
                B[gj+3][i] = t3;
            }
        }
    }
    for (gi = 0; gi < 32; gi += 4) {
        for (gj = 32; gj < 64; gj += 4) {
            for (i = gi; i < gi + 4; i++) {
                t0 = A[i][gj];
                t1 = A[i][gj+1];
                t2 = A[i][gj+2];
                t3 = A[i][gj+3];
                B[gj][i] = t0;
                B[gj+1][i] = t1;
                B[gj+2][i] = t2;
                B[gj+3][i] = t3;
            }
        }
    }
}

inline void _t_gen(int M, int N, int A[N][M], int B[N][M]) {
    int i, gi, gj;
    int t0, t1, t2, t3;
    for (gi = 0; gi < N; gi += 16) {
        for (gj = 0; gj < M; gj += 16) {
            for (i = gi; i < gi + 16; i++) {
                t0 = A[i][gj];
                t1 = A[i][gj+1];
                t2 = A[i][gj+2];
                t3 = A[i][gj+3];
                B[gj][i] = t0;
                B[gj+1][i] = t1;
                B[gj+2][i] = t2;
                B[gj+3][i] = t3;
            }
        }
    }
}

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N]) {
    int i, j, tmp;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions() {
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N]) {
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}


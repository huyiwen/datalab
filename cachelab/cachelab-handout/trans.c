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
void _t_32(int A[32][32], int B[32][32]);
void _t_64(int A[64][64], int B[64][64]);
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

inline void _t_32(int A[32][32], int B[32][32]) {
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

inline void _t_64(int A[64][64], int B[64][64]) {
    int k, gi, gj;
    int t0, t1, t2, t3, t4, t5, t6, t7;
    for (gi = 0; gi < 64; gi += 8) {
        for (gj = 0; gj < 64; gj += 8) {
            
            for (k = gi; k < gi + 4; k++) {
                t0 = A[k][gj  ];
                t1 = A[k][gj+1];
                t2 = A[k][gj+2];
                t3 = A[k][gj+3];
                t4 = A[k][gj+4];
                t5 = A[k][gj+5];
                t6 = A[k][gj+6];
                t7 = A[k][gj+7];
                B[gj  ][k] = t0;
                B[gj+1][k] = t1;
                B[gj+2][k] = t2;
                B[gj+3][k] = t3;
                B[gj  ][k + 4] = t4;  // borrow
                B[gj+1][k + 4] = t5;
                B[gj+2][k + 4] = t6;
                B[gj+3][k + 4] = t7;
            }

            for (k = gj; k < gj + 4; k++) {
                t0 = B[k][gi+4];
                t1 = B[k][gi+5];
                t2 = B[k][gi+6];
                t3 = B[k][gi+7];
                t4 = A[gi+4][k];
                t5 = A[gi+5][k];
                t6 = A[gi+6][k];
                t7 = A[gi+7][k];
                B[k][gi+4] = t4;
                B[k][gi+5] = t5;
                B[k][gi+6] = t6;
                B[k][gi+7] = t7;
                B[k+4][gi  ] = t0;
                B[k+4][gi+1] = t1;
                B[k+4][gi+2] = t2;
                B[k+4][gi+3] = t3;
            }

            for (t0 = gi+4; t0 < gi+8; t0++) {
                for (t1 = gj+4; t1 < gj+8; t1++) {
                    B[t1][t0] = A[t0][t1];
                }
            }

        }
    }
}


inline void _t_gen(int M, int N, int A[N][M], int B[M][N]) {
    int gi, gj;
    int n = (N >> 3) << 3, m = (M >> 3) << 3;
    int t0, t1, t2, t3, t4, t5, t6, t7;
    for (gj = 0; gj < m; gj += 8) {
        for (gi = 0; gi < n; gi++) {
            t0 = A[gi][gj  ];
            t1 = A[gi][gj+1];
            t2 = A[gi][gj+2];
            t3 = A[gi][gj+3];
            t4 = A[gi][gj+4];
            t5 = A[gi][gj+5];
            t6 = A[gi][gj+6];
            t7 = A[gi][gj+7];
            B[gj  ][gi] = t0;
            B[gj+1][gi] = t1;
            B[gj+2][gi] = t2;
            B[gj+3][gi] = t3;
            B[gj+4][gi] = t4;
            B[gj+5][gi] = t5;
            B[gj+6][gi] = t6;
            B[gj+7][gi] = t7;
            /*
            t0 = A[gi][gj+8];
            t1 = A[gi][gj+9];
            t2 = A[gi][gj+10];
            t3 = A[gi][gj+11];
            t4 = A[gi][gj+12];
            t5 = A[gi][gj+13];
            t6 = A[gi][gj+14];
            t7 = A[gi][gj+15];
            B[gj+8][gi] = t0;
            B[gj+9][gi] = t1;
            B[gj+10][gi] = t2;
            B[gj+11][gi] = t3;
            B[gj+12][gi] = t4;
            B[gj+13][gi] = t5;
            B[gj+14][gi] = t6;
            B[gj+15][gi] = t7;
            */
        }
    }

    for (gi = n; gi < N; gi++) {
        for (gj = m; gj < M; gj++) {
            t0 = A[gi][gj];
            B[gj][gi] = t0;
        }
    }
    for (gi = n; gi < N; gi++) {
        for (gj = 0; gj < m; gj++) {
            t0 = A[gi][gj];
            B[gj][gi] = t0;
        }
    }
    for (gi = 0; gi < n; gi++) {
        for (gj = m; gj < M; gj++) {
            t0 = A[gi][gj];
            B[gj][gi] = t0;
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


#include<stdio.h>


int byteSwap(int x, int n, int m) {
    int octuple_n = n << 3;
    int octuple_m = m << 3;
    int mask_n = 0xff << octuple_n;
    int mask_m = 0xff << octuple_m;
    int get_n = ((x & mask_n) >> octuple_n);
    int get_m = ((x & mask_m) >> octuple_m);
    int mix = (get_n ^ get_m) & 0xff;
    return x ^ (mix << octuple_m) ^ (mix << octuple_n);
}

int main ()
{
    int x, y, m, n;
    scanf("%d%d%d", &x, &n, &m);


    printf("%08x\n", byteSwap(x, n, m)     );




    return 0;
}

#include<stdio.h>

int main ()
{
    int x, y;
    scanf("%d%d", &x, &y);
    int m = (x >> 1) + (x & 1);
    int n = (y >> 1) + (y & 1 ^ (y >> 31));
    int diff = n + (~m) + 2;
    int sign = diff >> 31;
    int ans = !(((diff + sign) ^ sign) + diff);

    printf("%08x\n", x);
    printf("%08x\n", diff    );
    printf("%08x\n", ans    );  // [log_m(32)] * 2(m-1)

    

    return 0;
}

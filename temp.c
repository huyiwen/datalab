#include<stdio.h>


int main ()
{
    while(1) {
        int x, y, m, n, num = 2, ans;
        if (num == 1) scanf("%d", &x), y = m = n = x;
        else if (num == 2) scanf("%d%d", &x, &n), y = n;
        else if (num == 3) scanf("%d%d%d", &x, &n, &m);

        ans = ((x | ((~x) + 1)) >> 31) + 1;
        printf("%08x %d\n", ans, ans     );


    }
    return 0;
}

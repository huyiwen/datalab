#include<stdio.h>

#define print(xx) printf(#xx ":\t%08x %d\n", (xx), (xx));


int main ()
{
    while(1) {
        int x, y, m, n, num = 1, ans;
        if (num == 1) scanf("%d", &x), y = m = n = x;
        else if (num == 2) scanf("%d%d", &x, &n), y = n;
        else if (num == 3) scanf("%d%d%d", &x, &n, &m);
        int highbit = x, lowbit = n;



        y = x >> 2;
        int two = x & 0x3;
        int min = two + (~(x >> 31)) + !(two);
        print(x);
        print(y);
        print(min);
        ans = (y << 1) + y + min;
        print(ans);



    }
    return 0;
}

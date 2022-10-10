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

        int nn = !n;
        int ret = ((~nn) << (~n + !nn));
        int _ans = ((~0) << ((~n)+33)) + (!n);
        print(ret);
        print(nn);
        print(!(n & 0x20));
        print(_ans);

    }
    return 0;
}

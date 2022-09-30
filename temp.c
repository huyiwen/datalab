#include<stdio.h>

#define print(xx) printf(#xx ":\t%08x %d\n", (xx), (xx));


int main ()
{
    while(1) {
        int x, y, m, n, num = 2, ans;
        if (num == 1) scanf("%d", &x), y = m = n = x;
        else if (num == 2) scanf("%d%d", &x, &n), y = n;
        else if (num == 3) scanf("%d%d%d", &x, &n, &m);
        int highbit = x, lowbit = n;



        // ans = ((1 << 31) >> n) ^ (x >> n);
        print(x);
        print(x >> n);
        int tmp = (x >> 31) << (~n + 33);
        print(tmp);
        ans = tmp ^ (x >> n);
        print(ans);



    }
    return 0;
}

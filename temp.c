#include<stdio.h>

#define print(xx) printf(#xx ":\t%08x %d\n", (xx), (xx));
#define fprint(xx) printf(#xx ":\t%08x %d %f\n", (xx), (xx), (*(float*)&xx));




int main ()
{
    while(1) {
        int num = 2;
        if (num > 0) {
            int x, y, m, n, ans;
            if (num == 1) scanf("%d", &x), y = m = n = x;
            else if (num == 2) scanf("%d%d", &x, &n), y = n;
            else if (num == 3) scanf("%d%d%d", &x, &n, &m);
            int highbit = x, lowbit = n;

            int ry = ~y;
            int sub = x + ry;
            int min_overflow = x & ry;  // x- y+
            int max_overflow = x ^ ry;  // x- y- or x+ y+
            int sign = (min_overflow | (sub & max_overflow)) >> 31;
            // t s 0  1
            // 0   0  0
            // 1   -1 0
            print(sub);
            print(min_overflow);
            print(max_overflow);
            print(!sign);


        } else {
            unsigned int x, y, m, n, ans;
            if (num == -1) scanf("%u", &x), y = m = n = x;
            else if (num == -2) scanf("%u%u", &x, &n), y = n;
            else if (num == -3) scanf("%u%u%u", &x, &n, &m);

            x ^= (1 << 31);
            fprint(x);

        }


    }
    return 0;
}

#include<stdio.h>

#define print(xx) printf(#xx ":\t%08x %d\n", (xx), (xx));
#define fprint(xx) printf(#xx ":\t%08x %d %f\n", (xx), (xx), (*(float*)&xx));




int main ()
{
    while(1) {
        int num = 1;
        if (num > 0) {
            int x, y, m, n, ans;
            if (num == 1) scanf("%d", &x), y = m = n = x;
            else if (num == 2) scanf("%d%d", &x, &n), y = n;
            else if (num == 3) scanf("%d%d%d", &x, &n, &m);

            int _x = (x >> 31) ^ x;

            int pos16 = (!!(_x >> 16)) << 4;
            _x >>= pos16;
            int pos8 = (!!(_x >> 8)) << 3;
            _x >>= pos8;
            int pos4 = (!!(_x >> 4)) << 2;
            _x >>= pos4;
            int pos2 = (!!(_x >> 2)) << 1;
            _x >>= pos2;
            int pos1 = _x >> 1;
            _x >>= pos1;
            int ret = pos16 + pos8 + pos4 + pos2 + pos1 + 2;
            print(ret);



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

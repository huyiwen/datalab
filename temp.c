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
            int highbit = x, lowbit = n;

    int double_x = x << 1;
    int over = (double_x ^ x) >> 31;
    // overflow: -1  else: 0
    int _double_x = (~over) & double_x;
    // overflow: 0  else: double_x
    int max_min = over & ((1 << 31) + (double_x >> 31));
    // overflow: 0x7FFFFFFF(+)  0x80000000(-)  else: 0
    int ret = _double_x | max_min;

            print(_double_x);
            print(_sign);
            print(over);
            print(max_min);
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

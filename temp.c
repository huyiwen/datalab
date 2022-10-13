#include<stdio.h>

#define print(xx) printf(#xx ":\t%08x %d\n", (xx), (xx));
#define fprint(xx) printf(#xx ":\t%08x %u %f\n", (xx), (xx), (*(float*)&xx));

unsigned f (int x) {
    unsigned sign = 0;
    unsigned exponent = 159;
    unsigned mantissa = x;
    unsigned round = 0;
    if (x == 0) {
        return 0;
    } else if (x < 0) {
        sign = 0x80000000U;
        mantissa = -x;
    }
    while (1) {
        unsigned tmp = mantissa;
        mantissa <<= 1;
        exponent--;
        if (tmp >= 0x80000000U) {
            break;
        }
    }
    if (mantissa & 0x100U) {  // 5
        if (mantissa & 0x2FFU) {  // even or >5
            round = 1;
        }
    }
    return sign + (exponent << 23) + (mantissa >> 9) + round;
}


int main ()
{
    while(1) {
        int num = 1;
        if (num > 0) {
            int x, y, m, n, ans;
            if (num == 1) scanf("%d", &x), y = m = n = x;
            else if (num == 2) scanf("%d%d", &x, &n), y = n;
            else if (num == 3) scanf("%d%d%d", &x, &n, &m);

            int ret = f(x);
            fprint(ret);


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

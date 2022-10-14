#include<stdio.h>

#define print(xx) printf(#xx ":\t%08x %d\n", (xx), (xx));
#define fprint(xx) printf(#xx ":\t%08x %u %.16f\n", (xx), (xx), (*(float*)&xx));

unsigned f (int x) {
    unsigned sign = 0;
    unsigned exponent = 159;
    unsigned mantissa = x;
    unsigned tmp;
    if (x < 0) {
        sign = 0x80000000U;
        mantissa = -x;
    }

    int cnt = 0;
    while (exponent) {
        cnt ++;
        tmp = mantissa;
        mantissa <<= 1;
        exponent--;
        if (tmp >= 0x80000000U) {
            break;
        }
    }
    print(cnt);
    print(mantissa);
    print(exponent);
    return sign + (exponent << 23) + (mantissa >> 9) + ((mantissa & 0x100U) && (mantissa & 0x2FFU));
}

unsigned ff (int x) {
    unsigned sign = 0;
    unsigned exponent = 158;
    unsigned mantissa = x, _x = x;
    unsigned tmp;
    if (x < 0) {
        sign = 0x80000000U;
        _x = mantissa = -x;
    }
    if (x == 0) {
        return 0;
    }
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
    int pos = pos16 + pos8 + pos4 + pos2 + pos1 + _x;
    print(pos);
    int diff = 33 + ~pos;
    print(diff);
    print(mantissa);
    mantissa <<= diff;
    mantissa <<= 1;
    print(mantissa);
    exponent -= diff;
    print(exponent);
    return sign + (exponent << 23) + (mantissa >> 9) + ((mantissa & 0x100U) && (mantissa & 0x2FFU));
}


int main ()
{
    while(1){
        int num = 1;
        if (num > 0) {
            int x, y, m, n, ans;
            if (num == 1) scanf("%d", &x), y = m = n = x;
            else if (num == 2) scanf("%d%d", &x, &n), y = n;
            else if (num == 3) scanf("%d%d%d", &x, &n, &m);

            int quarter = x >> 2;
            int sign = x >> 31;
            int two = x & 0x3;
            print(two);
            int min = two + ((sign & 1) | !two) + ~0;
            print(min);
            int ret = (quarter << 1) + quarter + min;
            print(ret);



        } else {
            unsigned int x, y, m, n, ans, uf;
            if (num == -1) scanf("%u", &x), uf = y = m = n = x;
            else if (num == -2) scanf("%u%u", &x, &n), y = n;
            else if (num == -3) scanf("%u%u%u", &x, &n, &m);

            int ret = ff(x);
            fprint(ret);

        }

    }
    return 0;
}

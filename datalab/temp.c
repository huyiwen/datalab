#include<stdio.h>

#define print(xx) printf(#xx ":\t%08x %d\n", (xx), (xx));
#define fprint(xx) printf(#xx ":\t%08x %u %.16f\n", (xx), (xx), (*(float*)&xx));

unsigned f (int x) {
    volatile int _x = (x >> 31) ^ x;

    int pos16 = (!!(_x >> 16)) << 4;
    _x >>= pos16;
    int pos8 = (!!(_x >> 8)) << 3;
    _x >>= pos8;
    int pos4 = (!!(_x >> 4)) << 2;
    _x >>= pos4;
    int pos2 = (!!(_x >> 2)) << 1;
    _x >>= pos2;
    print(_x);
    _x = ！
    print(_x);
    return pos16 + pos8 + pos4 + pos2 + _x;
}

unsigned ff (unsigned uf) {
    unsigned exponents = 0x7f800000U;
    unsigned div_man = 0x800000U;
    unsigned _sign = 0x80000000U & uf;
    unsigned uf_exp = uf & exponents;
    if (uf_exp == exponents) {
        return uf;
    } else if (uf_exp > div_man) {
        return uf - div_man;
    } else {
        unsigned div_exp = (uf + ((uf & 3) == 3) ^ _sign) >> 1;
        return _sign | div_exp;
    }
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

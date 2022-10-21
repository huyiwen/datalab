#include <bits/stdc++.h>
#include <x86intrin.h>

const int BUFFER_LEN = 100010;
const uint64_t INF = 0x7FF0000000000000ull;
const uint64_t NaN = 0x7FF00000001F1E33ull;
const uint64_t NINF = 0xFFF0000000000000ull;

uint64_t read_from_string(char*);
char* write_to_string(uint64_t);

uint64_t add(uint64_t, uint64_t);
uint64_t subtract(uint64_t, uint64_t);
uint64_t multiply(uint64_t, uint64_t);
uint64_t divide(uint64_t, uint64_t);

inline int Prior(char);
inline int Sign(uint64_t);
inline bool isNaN(uint64_t);
inline bool isINF(uint64_t);
inline bool isZero(uint64_t);
inline int64_t Exp(uint64_t);
inline uint64_t LowBit(uint64_t);
inline uint64_t Fraction(uint64_t);
inline uint64_t Negative(uint64_t);
inline uint64_t Evaluate(uint64_t, uint64_t, char);

typedef __int128 intEx;

int main(){ // Function: Parse & Evaluate
    char* const expr = (char*)malloc(BUFFER_LEN * sizeof(char));
    char* const stackops = (char*)malloc(BUFFER_LEN * sizeof(char));
    uint64_t* const stacknum = (uint64_t*)malloc(BUFFER_LEN * sizeof(uint64_t));

    char* opstop = stackops;
    uint64_t* numtop = stacknum;

    fgets(expr, BUFFER_LEN - 1, stdin);

    {
        bool noprev = true;
        char* cur = expr;
        while(*cur != '\0'){
            if(isspace(*cur))
                cur++;
            else if(isdigit(*cur)){
                noprev=false;
                char* num = (char*)malloc(BUFFER_LEN * sizeof(char));
                char* numcur = num;
                while(*cur != '\0' && (isdigit(*cur) || *cur == '.'))
                    *(numcur++) = *(cur++);
                *(numcur++) = '\0';
                *(numtop++) = read_from_string(num);
                free(num);
            }
            else if(*cur == ')'){
                while(*(opstop - 1) != '('){
                    assert(opstop != stackops);

                    if(*(opstop - 1) == 'n'){
                        *(numtop - 1) = Negative(*(numtop - 1));
                        --opstop;
                    }
                    else{
                        uint64_t rhs = *(--numtop);
                        uint64_t lhs = *(--numtop);
                        *(numtop++) = Evaluate(lhs, rhs, *(--opstop));
                    }
                }
                --opstop;
                cur++;
            }
            else if(*cur == '('){
                *(opstop++) = *cur;
                cur++;
                noprev = true;
            }else if(*cur == '-' && noprev){
                *(opstop++) = 'n';
                cur++;
            }
            else{
                while(opstop != stackops && Prior(*(opstop - 1)) >= Prior(*cur)){
                    if(*(opstop - 1) == 'n'){
                        *(numtop - 1) = Negative(*(numtop - 1));
                        --opstop;
                    }
                    else{
                        uint64_t rhs = *(--numtop);
                        uint64_t lhs = *(--numtop);
                        *(numtop++) = Evaluate(lhs, rhs, *(--opstop));
                    }
                }
                *(opstop++) = *cur;
                if(*cur == '(')
                    noprev = true;
                cur++;
            }
        }
        for(char* x = cur; *x != '\0'; x++)
            putchar(*x);
        while(opstop != stackops){
            if(*(opstop - 1) == 'n'){
                *(numtop - 1) = Negative(*(numtop - 1));
                --opstop;
            }
            else{
                uint64_t rhs = *(--numtop);
                uint64_t lhs = *(--numtop);
                *(numtop++) = Evaluate(lhs, rhs, *(--opstop));
            }
        }
    }

    char* ans = write_to_string(*stacknum);
    printf("%s\n", ans);
    free(ans);

    free(expr);
    free(stacknum);
    free(stackops);
    return 0;
}

inline bool isNaN(uint64_t x){
    return (Exp(x) == (1ull << 11) - 1ull) && (Fraction(x) & ((1ull << 52) - 1ull)) != 0;
}

inline bool isINF(uint64_t x){
    return (Exp(x) == (1ull << 11) - 1ull) && (Fraction(x) & ((1ull << 52) - 1ull)) == 0;
}

inline bool isZero(uint64_t x){
    return (x & ((1ull << 63) - 1ull)) == 0;
}

uint64_t add(uint64_t lhs, uint64_t rhs){
    if(isNaN(lhs) || isNaN(rhs))
        return NaN;

    if(Sign(lhs) != Sign(rhs)) // only handle same sign
        return subtract(lhs, Negative(rhs));

    if(isINF(lhs) || isINF(rhs)){
        if(isINF(lhs))
            return lhs;
        else{
            assert(isINF(rhs));
            return rhs;
        }
    }

    if(Exp(lhs) < Exp(rhs)){
        std::swap(lhs, rhs);
    }

    int ediff = Exp(lhs) - Exp(rhs);
    assert(ediff >= 0);

    uint64_t ans = 0;
    bool roundup = false;
    uint64_t ansexp = Exp(lhs);
    uint64_t rhsf = Fraction(rhs) << 1;
    uint64_t ansf = Fraction(lhs) << 1;

    while(rhsf != 0){
        uint64_t cur = (ediff < 64) ? (LowBit(rhsf) >> ediff) : 0;
        if(cur == 0)
            roundup = true;
        else
            ansf += cur;
        rhsf -= LowBit(rhsf);
    }

    // Adjust EXP
    while(ansf >= (1ull << 54)){
        roundup = roundup || (ansf & 1) != 0;
        ansf >>= 1;
        ++ansexp;
    }
    if(ansexp == 0){ // subnormalized
        assert((ansf & 1) == 0);
        ansf >>= 1;
        assert(ansexp < (1ull << 53));
    }
    // Rounding
    if((ansf & 1) == 0)
        ansf >>= 1;
    else{
        ansf >>= 1;
        if(roundup || ((ansf & 3) == 3))
            ++ansf;
    }
    // NOTE: only 011111 -> 100000, no more rounding required
    if(ansf >= (1ull << 53)){
        assert(ansexp != 0);
        assert((ansf & 1) == 0);
        ansf >>= 1;
        ++ansexp;
    }
    if(ansexp == 0 && ansf >= (1ull << 52))
        ++ansexp;

    assert((ansexp != 0 && ansf < (1ull << 53)) || (ansexp == 0 && ansf < (1ull << 52)));

    if(ansexp >= ((1ull << 11) - 1)) // overflow
        ans = INF;
    else
        ans = ansexp << 52 | (ansf & ((1ull << 52) - 1));

    ans |= (1ull << 63) & lhs; // Add sign
    return ans;
}

uint64_t subtract(uint64_t lhs, uint64_t rhs){
    if(isNaN(lhs) || isNaN(rhs))
        return NaN;

    if(Sign(lhs) != Sign(rhs)) // only handle same sign
        return add(lhs, Negative(rhs));

    if(isINF(lhs) && isINF(rhs))
        return NaN;
    if(isINF(lhs))
        return lhs;
    if(isINF(rhs))
        return Negative(rhs);
    if(lhs == rhs)
        return 0; // avoid unexpected negative 0

    bool negflag = false;
    if(Exp(lhs) < Exp(rhs) || (Exp(lhs) == Exp(rhs) && Fraction(lhs) < Fraction(rhs))){
        negflag = true;
        std::swap(lhs, rhs);
    }

    int ediff = Exp(lhs) - Exp(rhs);
    assert(ediff >= 0);

    uint64_t ans = 0;
    bool roundup = false;
    uint64_t ansexp = Exp(lhs);
    uint64_t ansf = Fraction(lhs) << 2;
    uint64_t rhsf = Fraction(rhs) << 2;

    while(rhsf != 0){
        uint64_t cur = (ediff < 64) ? (LowBit(rhsf) >> ediff) : 0;
        if(cur == 0)
            roundup = true;
        else
            ansf -= cur;
        rhsf -= LowBit(rhsf);
    }

    // Adjust EXP
    while(ansexp > 0 && (ansf & (1ull << 54)) == 0){
        --ansexp;
        ansf <<= 1;
    }
    if(ansexp == 0) // subnormalized
        ansf >>= 1;
    // Rounding
    if((ansf & 3) < 2)
        ansf >>= 2;
    else if((ansf & 3) > 2)
        ansf = (ansf >> 2) + 1;
    else{
        ansf >>= 2;
        if(!roundup && (ansf & 1) != 0) // ties to even
            ++ansf;
    }
    // NOTE: only 011111 -> 100000, no more rounding required
    if(ansf >= (1ull << 53)){
        if(ansexp > 0)
            ansf >>= 1;
        ++ansexp;
    }
    if(ansexp == 0 && ansf >= (1ull << 52))
        ++ansexp;

    ans = ansexp << 52 | (ansf & ((1ull << 52) - 1));

    ans |= lhs & (1ull << 63); // Add sign
    return negflag ? Negative(ans) : ans;
}

uint64_t multiply(uint64_t lhs, uint64_t rhs){
    if(isNaN(lhs) || isNaN(rhs))
        return NaN;

    if((isINF(lhs) && isZero(rhs)) || (isINF(rhs) && isZero(lhs)))
        return NaN;
    if(isINF(lhs) || isINF(rhs))
        return Sign(lhs) * Sign(rhs) > 0 ? INF : NINF;

    uint64_t ans = 0;
    bool roundup = false;
    int64_t ansexp = Exp(lhs) + Exp(rhs) - 1023ll - 51ll;
    intEx ansf = ((intEx)(Fraction(lhs)) * (intEx)(Fraction(rhs)));

    // Adjusting exp
    while(ansexp < 0 || ansf >= (1ull << 54)){
        ++ansexp;
        roundup |= ansf & 1;
        ansf >>= 1;
    }
    while(ansexp > 0 && (ansf & (1ull << 53)) == 0){
        --ansexp;
        ansf <<= 1;
    }
    while(ansexp < 0){
        ++ansexp;
        roundup |= ansf & 1;
        ansf >>= 1;
    }

    if(ansexp == 0){ // subnormal handling
        roundup |= ansf & 1;
        ansf >>= 1;
    }

    // Rounding
    if((ansf & 1) == 0)
        ansf >>= 1;
    else{
        ansf >>= 1;
        if(roundup)
            ++ansf;
    }

    if(ansf >= (1ull << 53)){
        if(ansexp > 0)
            ansf >>= 1;
        ++ansexp;
    }

    if(ansexp >= ((1ull << 11) - 1)) // overflow
        ans = INF;
    else
        ans = ansexp << 52 | (ansf & ((1ull << 52) - 1));

    ans |= ((1ull << 63) & lhs) ^ ((1ull << 63) & rhs); // Add sign
    //printf("%.120lf\n", ans);
    return ans;
}

uint64_t divide(uint64_t lhs, uint64_t rhs){
    if(isNaN(lhs) || isNaN(rhs))
        return NaN;

    if(isZero(rhs)){ // divided by zero
        if(isZero(lhs))
            return NaN;
        else if ((1ull << 63) & (lhs ^ rhs))
            return NINF;
        else
            return INF;
    }
    if(isINF(rhs)){  // divided by INF
        if(isINF(lhs))
            return NaN;
        else
            return ((1ull << 63) & (lhs ^ rhs)); // signed zero
    }
    if(isINF(lhs)){
        if ((1ull << 63) & (lhs ^ rhs))
            return NINF;
        else
            return INF; // INF/INF handled, other return INF
    }

    uint64_t ans = 0;
    bool roundup = false;
    int64_t ansexp = Exp(lhs) - Exp(rhs) + 1023ll;
    uint64_t ansf = (((intEx)(Fraction(lhs))) << 54) / (intEx)(Fraction(rhs));

    if((((intEx)(Fraction(lhs))) << 54) % (intEx)(Fraction(rhs)) != 0)
        roundup = true;

    // Adjusting exp
    while(ansexp < 0 || ansf >= (1ull << 55)){
        ++ansexp;
        roundup |= ansf & 1;
        ansf >>= 1;
    }
    while(ansexp > 0 && (ansf & (1ull << 54)) == 0){
        --ansexp;
        ansf <<= 1;
    }
    while(ansexp < 0){
        ++ansexp;
        roundup |= ansf & 1;
        ansf >>= 1;
    }

    if(ansexp == 0){ // subnormal handling
        roundup |= ansf & 1;
        ansf >>= 1;
    }

    // Rounding
    if((ansf & 3) < 2)
        ansf >>= 2;
    else if((ansf & 3) > 3)
        ansf = (ansf >> 2) + 1;
    else{
        ansf >>= 2;
        if(roundup)
            ++ansf;
    }

    if(ansf >= (1ull << 53)){
        if(ansexp > 0)
            ansf >>= 1;
        ++ansexp;
    }

    if(ansexp >= ((1ull << 11) - 1)) // overflow
        ans = INF;
    else
        ans = ansexp << 52 | (ansf & ((1ull << 52) - 1));

    ans |= (1ull << 63) & (lhs ^ rhs); // Add sign
    //printf("%lf\n", ans);
    return ans;
}

inline uint64_t Evaluate(uint64_t lhs, uint64_t rhs, char op){
    uint64_t ans;
    switch(op){
        case '+':
            ans = add(lhs, rhs);
            break;
        case '-':
            ans = subtract(lhs, rhs);
            break;
        case '*':
            ans = multiply(lhs, rhs);
            break;
        case '/':
            ans = divide(lhs, rhs);
            break;
        default:
            assert(false);
    }
    return ans;
}

inline int Prior(char x){
    switch(x){
        case '+':
        case '-':
        case 'n':
            return 0;
        case '*':
        case '/':
            return 1;
        case '(':
            return -1;
        default:
            printf("ERROR: '%c'\n", x);
            assert(false);
    }
}

uint64_t read_from_string(char* str){
    uint64_t x;
    sscanf(str, "%lf", (double *)&x);
    return x;
}

char* write_to_string(uint64_t x){
    char* ans = (char*)malloc(BUFFER_LEN * sizeof(char));
    if(isNaN(x))
        strcpy(ans, "nan");
    else if(isINF(x))
        if(x & (1ull << 63)) {
            strcpy(ans, "-inf");
        } else {
            strcpy(ans, "inf");
        }
    else
        sprintf(ans, "%.1200f", _mm_cvtsi64_si128(x));
    return ans;
}

inline uint64_t LowBit(uint64_t x){
    return x & ((~x) + 1ull);
}

inline uint64_t Negative(uint64_t x){
    return isNaN(x)? x : (x ^ (1ull << 63));
}

inline int64_t Exp(uint64_t x){
    return (x >> 52) & ((1ull << 11) - 1);
}

inline int Sign(uint64_t x){
    return (x >> 63) == 0 ? 1 : -1;
}

inline uint64_t Fraction(uint64_t x){
    if(Exp(x) != 0)
        return 1ull << 52 | (x & ((1ull << 52) - 1));
    else
        return (x & ((1ull << 52) - 1)) << 1; // normalize subnormal
}

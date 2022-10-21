#include <bits/stdc++.h>

const int MAXN=1e5+10;

char s[MAXN];

int main(){
    int strlen = 0;
    char ch;
    while((ch = getchar()) != '\n') {
        s[strlen++] = ch;
    }
    for(int i = 0; i < strlen; ++i){
        if(std::isalpha(s[i]))
            s[i] ^= 1<<5;
    }
    printf("%s\n", s);
    return 0;
}

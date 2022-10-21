#include <iostream>
#include <cmath>

typedef unsigned ElemTypeA;
typedef float ElemTypeB;

struct Node {
    ElemTypeA exp;
    ElemTypeB base;

    Node() = default;
    Node(ElemTypeA e, ElemTypeB b) : exp(e), base(b) {}
};

ElemTypeB calcOnce(const Node& node);
ElemTypeB calc();

int main() {
    ElemTypeB result = calc();
    std::cout << result << std::endl;
    return 0;
}

ElemTypeB calc() {
    int n;
    std::cin >> n;
    Node * data = new Node[n];
    for(int i = 0; i < n; i++) {
        ElemTypeA a;
        ElemTypeB b;
        std::cin >> a >> b;
        data[i] = Node(a, b);
    }

    ElemTypeB result(0);
    for(int i = 0; i < n; i++) {
        result += calcOnce(data[i]);
    }

    delete [] data;
    return result;
}

ElemTypeB calcOnce(const Node& node) {
    ElemTypeB result(1), multiplier = node.base;
    ElemTypeA exp = node.exp;
    while (exp) {
        if (exp & 1) {
            result *= multiplier;
        }
        exp >>= 1;
        multiplier *= multiplier;
    }

    return result;
}

#include <iostream>
#include <string>
#define min(a,b) (a)<=(b)?(a):(b)

class price 
{
private:
    int n;                  // item's number
    std::string* items;     // item's name
    int* prices;            // item's price
    std::string store;      // store's name
public:
    price()
        : n(0)
    {
        store = "Violet";   
        items = new std::string[3]; // I'm poor, max 3 items
        prices = new int[3];
    }
    ~price()
    {
        delete[] items;
        delete[] prices;
    }
    void add_item(std::string name, int price) 
    {
        if (n >= 3) return;
        *(items + n) = name;
        *(prices + n) = price;
        n++;
    }
    void print_items() 
    {
        std::cout << "items of " << store << ":\n";
        for(int i = 0; i < n; ++i)
            std::cout << *(items + i) << ':' << *(prices + i) << std::endl;
    }
    int cheapest_item() // suppose only 3 items
    {
        int min_price = 1e9;
        for (int i = 0; i < n; ++i)
            min_price = min(min_price, prices[i]);
        return min_price;
    }
};

int main()
{
    auto test = std::make_unique<price>(price());
    test->add_item("apple", 1);
    test->add_item("banana", 3);
    test->add_item("cherry", 2);
    test->print_items();
    std::cout << "cheapest price: " <<  test->cheapest_item() << std::endl;
    return 0;
}

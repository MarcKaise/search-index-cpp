#include <iostream>
#include <vector>

int main (){
    int search_number;
    std::cin >> search_number;

    int x;
    std::vector<int> A;
    while(std::cin>>x) {
        A.push_back(x);
    }

    for (auto i: A) {
        if (search_number == i) {
            std::cout << "Found." << std::endl;
            return 0;
        }
    }

    std::cout << "Not found." << std::endl;
    return 1;
}

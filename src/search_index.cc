#include <search_index.h>
#include <iostream>
int SearchIndex::search_index(int num, std::vector<int> v) {
    int index = 0;
    for (auto val : v) {
        if (num == val) {
            return index;
        }
        index++;
    }
    return -1;
}

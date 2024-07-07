#include <gtest/gtest.h>

int search_index(int num, int* v) {
    return 0;
}

TEST(TestCase, return_zero) {
    ASSERT_EQ(0, search_index(0, 0));
}
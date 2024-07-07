#include <gtest/gtest.h>
#include <search_index.h>

TEST(TestCase, return_zero) {
    SearchIndex si;
    EXPECT_EQ(0, si.search_index());
}

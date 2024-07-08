TARGET = search_index
CXX = g++-14
INCLUDE = -Isrc
GTEST = -I/usr/local/include -L/usr/local/lib -lgtest_main -lgtest -lpthread

gtest:
	g++-14 -c -o src/search_index.o $(INCLUDE) src/search_index.cc
	g++-14 -c -o test/search_index_unittest.o $(INCLUDE) $(GTEST) test/search_index_unittest.cc
	g++-14 src/search_index.o test/search_index_unittest.o $(GTEST) -o test/search_index_unittest
	./test/search_index_unittest

clean:
	rm -f */*.o */search_index_unittest

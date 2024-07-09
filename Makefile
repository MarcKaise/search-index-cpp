TARGET = search_index
CXX = g++-14
INCLUDE = -Isrc
GTEST = -I/usr/local/include -L/usr/local/lib -lgtest_main -lgtest -lpthread

build:
	g++-14 -c src/search_index.cc -o src/search_index.o $(INCLUDE)
	g++-14 -c src/main.cc -o src/main.o $(INCLUDE)
	g++-14 src/search_index.o src/main.o -o search_index

gtest:
	g++-14 -c src/search_index.cc -o src/search_index.o $(INCLUDE)
	g++-14 -c test/search_index_unittest.cc -o test/search_index_unittest.o $(INCLUDE) $(GTEST)
	g++-14 src/search_index.o test/search_index_unittest.o $(GTEST) -o test/search_index_unittest
	./test/search_index_unittest

clean:
	rm -f *.out */*.o */search_index_unittest search_index

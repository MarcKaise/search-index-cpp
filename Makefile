TARGET = search_index
CXX = g++-14
SRC = main.cpp
ENV = -I/usr/local/include -L/usr/local/lib
LIB = -lgtest_main -lgtest -lpthread

$(TARGET):
	$(CXX) $(SRC) -o $(TARGET)

gtest:
	$(CXX) search_index.cpp $(ENV) $(LIB) -o gtest
	./gtest

TARGET = search_index
CXX = g++-14
SRC = main.cpp

$(TARGET):
	$(CXX) $(SRC) -o $(TARGET)

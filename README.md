# search-index-cpp

## setup for mac

Install googletest

```sh
brew install cmake
brew install gcc
brew install g++
git clone https://github.com/google/googletest.git
cd googletest
mkdir build
cd build
cmake -DCMAKE_C_COMPILER=/opt/homebrew/bin/gcc-14 -DCMAKE_CXX_COMPILER=/opt/homebrew/bin/g++-14 ..
make
```

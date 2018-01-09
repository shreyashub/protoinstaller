#! /bin/bash
sudo apt-get remove libprotobuf-dev
sudo rm -rf `which protoc`
sudo apt-get remove libprotobuf-dev protobuf-compiler
sudo apt-get remove libprotobuf-lite8 libprotoc8
sudo apt-get remove python-protobuf

sudo pip uninstall protobuf -y

sudo apt-get install libprotobuf-dev protobuf-compiler
sudo rm -rf /usr/local/include/google
sudo rm -rf /usr/include/google/protobufset -o errexit
set -o verbose

VERSION="v3.4.1"

# git clone https://github.com/google/protobuf.git
cd protobuf
git checkout tags/${VERSION}
# mkdir build
cd build
cmake -G Ninja \
  -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
  -DCMAKE_BUILD_TYPE=Release \
  -Dprotobuf_BUILD_TESTS=OFF \
  ../cmake
ninja
sudo ninja install
sudo apt-get install libprotobuf-dev
protoc --version
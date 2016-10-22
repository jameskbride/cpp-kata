FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
build-essential \
cmake \
libgtest-dev

WORKDIR /usr/src/gtest
RUN cmake CMakeLists.txt
RUN make

# copy or symlink libgtest.a and libgtest_main.a to your /usr/lib folder
RUN cp *.a /usr/lib

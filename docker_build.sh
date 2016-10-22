#!/bin/bash

docker build -t cpp-tdd/latest .
docker run -dit -w /usr/cpp-tdd -v $(PWD):/usr/cpp-tdd cpp-tdd/latest

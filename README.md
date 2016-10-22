# C++ Kata
This project is a skeleton for C++ practice via Test-Driven Development.  It includes a Dockerfile which will create a container which is preconfigured for testing via GTest.  

## Requirements
You'll need to have docker installed in order to build the container.

## Usage
1. To get running you can execute `docker_build.sh` from the root of the project to build the container and stand it up with a working directory of `/usr/cpp-tdd`, which is also the mounted volume for your current directory (Meaning you can make changes locally and see them instantly on the container).

2. Once that completes successfully you can find out what your container name is by running `docker ps`, and then `docker attach <YOUR CONTAINER>` to get a command prompt in the working directory.  

3. Create a `build` directory in the Kata folder.

4. Run `cmake .. && make` from the `Kata/build` directory to build the project, including test code.  Once it has been built you can execute the test runner via `./KataTest`.  Wash, rinse, and repeat this step as you test-drive your code.

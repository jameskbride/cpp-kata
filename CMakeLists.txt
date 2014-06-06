cmake_minimum_required (VERSION 2.6)
project (CppHello)

ENABLE_TESTING()

# The version number.
set (KATA_VERSION_MAJOR 1)
set (KATA_VERSION_MINOR 0)

# Where Google Test's .h files can be found.
#set(gtest_DIR "<location of gtest library>)
#include_directories(
#  ${gtest_DIR}/include
#  ${gtest_DIR})

# Greetings
include_directories(
  "${PROJECT_BINARY_DIR}"
  "${PROJECT_SOURCE_DIR}/Kata"
)
add_subdirectory(Kata)

configure_file (
  "${PROJECT_SOURCE_DIR}/KataConfig.h.in"
  "${PROJECT_BINARY_DIR}/KataConfig.h"
)

add_executable(KataCpp KataVersion.cpp)
target_link_libraries (KataCpp Kata)


if (${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
    message(FATAL_ERROR "Prevented in-tree build. Please create a build directory outside of the source code and call cmake from there")
endif ()

cmake_minimum_required(VERSION 3.13)
project(zero_cost_project LANGUAGES CXX)

if (NOT EXISTS conanbuildinfo.cmake)
  message(FATAL_ERROR "Conan needs to be executed: conan install <path_to_your_conanfile.txt>")
endif ()

##! Conan Setup
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake) ##! Bridge conan dependancies and CMake
conan_basic_setup(TARGETS) ##! Allow us to use our dependancies as CMake target such as CONAN_PKG::my_dependancies


##! Add subproject here.
add_subdirectory(client)
add_subdirectory(server)
add_subdirectory(launcher)

if (${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
    message(FATAL_ERROR "Prevented in-tree build. Please create a build directory outside of the source code and call cmake from there")
endif ()

cmake_minimum_required(VERSION 3.13)
project(zero_cost_project)

set(CMAKE_CXX_STANDARD 17) ##! Our project will use C++17, adapt according to your project.

##! Add subproject here.
add_subdirectory(client)
add_subdirectory(server)
add_subdirectory(launcher)
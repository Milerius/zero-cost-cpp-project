add_library(server-shared-deps INTERFACE)
target_compile_features(server-shared-deps INTERFACE cxx_std_17)

add_executable(server src/main.cpp)
target_link_libraries(server PUBLIC server-shared-deps)

add_executable(server-test test/server.test.cpp)
target_link_libraries(server-test PRIVATE CONAN_PKG::doctest PUBLIC server-shared-deps)

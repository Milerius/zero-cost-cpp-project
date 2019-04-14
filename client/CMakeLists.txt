add_library(client-shared-deps INTERFACE)
target_compile_features(client-shared-deps INTERFACE cxx_std_17)

add_executable(client src/main.cpp)
target_link_libraries(client PUBLIC client-shared-deps)

add_executable(client-test test/client.test.cpp)
target_link_libraries(client-test PRIVATE CONAN_PKG::doctest PUBLIC client-shared-deps)

add_executable(client src/main.cpp)
target_compile_features(client PRIVATE cxx_std_17)

add_executable(client-test test/client.test.cpp)
target_link_libraries(client-test PRIVATE CONAN_PKG::doctest)
target_compile_features(client PRIVATE cxx_std_17)

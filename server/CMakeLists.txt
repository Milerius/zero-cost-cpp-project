add_executable(server src/main.cpp)
target_compile_features(server PRIVATE cxx_std_17)

add_executable(server-test test/server.test.cpp)
target_link_libraries(server-test PRIVATE CONAN_PKG::doctest)
target_compile_features(server-test PRIVATE cxx_std_17)
add_executable(launcher src/main.cpp)
target_compile_features(launcher PRIVATE cxx_std_17)

add_executable(launcher-test test/launcher.test.cpp)
target_link_libraries(launcher-test PRIVATE CONAN_PKG::doctest)
target_compile_features(launcher-test PRIVATE cxx_std_17)
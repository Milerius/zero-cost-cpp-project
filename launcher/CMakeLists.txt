add_library(launcher-shared-deps INTERFACE)
target_compile_features(launcher-shared-deps INTERFACE cxx_std_17)

add_executable(launcher src/main.cpp)
target_link_libraries(launcher PUBLIC launcher-shared-deps)

add_executable(launcher-test test/launcher.test.cpp)
target_link_libraries(launcher-test PRIVATE CONAN_PKG::doctest PUBLIC launcher-shared-deps)

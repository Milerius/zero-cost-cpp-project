 if (NOT EXISTS conanbuildinfo.cmake)
     message(FATAL_ERROR "Conan need to be executed: conan install <path_to_your_conanfile.txt>")
 endif ()

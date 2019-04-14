macro(exec_conan)
    if (NOT EXISTS conanbuildinfo.cmake)
        message("Conan need to be executed")
        execute_process(COMMAND conan install ../
                RESULT_VARIABLE CMD_ERROR
                OUTPUT_FILE CMD_OUTPUT)
        MESSAGE(STATUS "CMD_ERROR:" ${CMD_ERROR})
        MESSAGE(STATUS "CMD_OUTPUT:" ${CMD_OUTPUT})
    else ()
        message("Conan doesn't need to be executed")
    endif ()
endmacro()
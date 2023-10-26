# targets
IF (DEFINED PTHREAD)
    ADD_DEFINITIONS(-DPTHREAD=${1})
ENDIF()
add_subdirectory(lib)

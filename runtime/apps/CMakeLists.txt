macro(SUBDIRLIST result curdir)
    file(GLOB children ${curdir}/*)
    set(dirlist "")
    foreach(child ${children})
        if(IS_DIRECTORY ${child})
            LIST(APPEND dirlist ${child})
        endif()
    endforeach()
    set(${result} ${dirlist})
endmacro()

SUBDIRLIST(SUBDIRS ${CMAKE_CURRENT_LIST_DIR})

foreach(SUBDIR ${SUBDIRS})
    get_filename_component(app ${SUBDIR} NAME)
    add_subdirectory(${SUBDIR})

    get_directory_property(_DIR_EXES DIRECTORY ${app} BUILDSYSTEM_TARGETS)
    add_custom_target(${app} DEPENDS ${_DIR_EXES})
endforeach()


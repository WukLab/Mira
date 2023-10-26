file(GLOB offload_SRC
     "apps/offload/*.c"
     "apps/offload/*.cc"
     "apps/offload/*.cpp"
)
add_library(common OBJECT
    net.c
    common.c

    #     cache.c
    #     packet.c
    #     offload.c
    #     remote_pool.c
    #     side_channel.c
    #     $<IF:$<BOOL:${COMMON_IMPL_SHM}>, common_shm.c,
    #     $<IF:$<BOOL:${COMMON_IMPL_TCP}>, common_tcp.c,
    #                                      common.c>>
    #     common_util.c
    #     apps/fromMLIR/assem.c
    # 
    #     offloads.c
    #     ${offload_SRC}
    )

    

# internal includes
include_directories(PRIVATE include)

target_include_directories(common PUBLIC ../include)
target_link_libraries(common PUBLIC ibverbs nng m pthread)

if(COMMON_IMPL_SHM)
    set(COMMON_EXE_SHM_EXECUTOR common-shm-executor)
    message("Build common library with shm. binary ${COMMON_EXE_SHM_EXECUTOR} can be built")

    add_executable(${COMMON_EXE_SHM_EXECUTOR} apps/shm_executor.c)
    target_link_libraries(${COMMON_EXE_SHM_EXECUTOR} common)
endif()

# include remote server
add_executable(remote_server apps/remote_server.c)
target_link_libraries(remote_server common)


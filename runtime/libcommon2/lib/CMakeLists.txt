add_library(common2 OBJECT
    net.c
    common.c
    rdmaop.cc
    common_init.c
    cache.cc
    )

# internal includes
target_include_directories(common2 PUBLIC ../include)
target_link_libraries(common2 PUBLIC ibverbs nng m pthread)

# include remote server
# add_executable(remote_server apps/remote_server.c)
# target_link_libraries(remote_server common)


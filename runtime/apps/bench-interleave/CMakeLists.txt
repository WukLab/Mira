set(MLIR_DIR /data/test/srcs/interleave)

add_executable(interlf-mlir-swap local.cc)
target_link_libraries(interlf-mlir-swap common2 ${MLIR_DIR}/local.o)

add_executable(interlf-mlir-remote remote.cc)
target_include_directories(interlf-mlir-remote PRIVATE ${MLIR_DIR}/../../include)
target_link_libraries(interlf-mlir-remote common2 ${MLIR_DIR}/lower.o)
# target_link_libraries(interlf-mlir-remote common2 /users/Zijian/Disagg-mlir/tools/disagg/example/interleave/mlir/lower.o)

add_executable(interlf-mlir-remote-ref remote.cc visit_remote.c)
target_link_libraries(interlf-mlir-remote-ref common2)


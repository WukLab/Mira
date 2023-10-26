set(MLIR_DIR /data/test/srcs/mt)

add_executable(mt-mlir mt-mlir.cc)
target_link_libraries(mt-mlir common2 ${MLIR_DIR}/lower_remote.o)

add_executable(mt-ref ref.cc)
target_link_libraries(mt-ref common ${MLIR_DIR}/lower_local.o)


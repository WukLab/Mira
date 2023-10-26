link_libraries(common)

add_executable(gemm ref.c)
add_executable(gemm-ring-cache  gemm-ring-cache.c)
add_executable(gemm-ring-direct gemm-ring-direct.c)
add_executable(gemm-with-mlir gemm-with-mlir.c)
add_executable(gemm-ring-test gemm-ring-test.c)

target_link_libraries(
  gemm-with-mlir
  /users/Zijian/Disagg-mlir/tools/disagg/example/matmul-c/gemm.o
)
# add_executable(prefetch-opt-ring prefetch.cc)
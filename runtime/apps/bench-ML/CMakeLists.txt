link_libraries(common)

add_executable(ml-mlir-ring with-mlir.c)

target_link_libraries(
  ml-mlir-ring
  /users/Zijian/Disagg-mlir/tools/disagg/example/gpt2/att_cxv/att_cxv.o
)
# add_executable(prefetch-opt-ring prefetch.cc)
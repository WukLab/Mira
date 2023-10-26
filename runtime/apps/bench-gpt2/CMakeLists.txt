add_executable(gpt2-local local_main.cpp)
add_executable(gpt2-remote remote_main.cpp)

target_link_libraries(gpt2-local
  common
  /users/Zijian/Disagg-mlir/tools/disagg/example/gpt2/medium/ae/lower_local.o
)

target_link_libraries(gpt2-remote
  common
  /users/Zijian/Disagg-mlir/tools/disagg/example/gpt2/medium/ae/lower_remote.o
)

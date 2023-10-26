#!/bin/bash

function mkd_out() {
  mkdir -p ./out
  rm -f ./out/*
}

function mkd_libs() {
  mkdir -p ./libs
  rm -f ./libs/*
}

# cmd [opt-level] [src.c]
function c_llvm-dialect_obj() {
  mkd_out
  # Compile to LLVM-dialect
  cgeist -v -S -O$1 $2 -emit-llvm-dialect -o out/base.mlir

  # Translate to llvm ir
  mlir-translate -mlir-to-llvmir out/base.mlir -o out/base.ll

  # Uncomment this and comment the above two if generate llvm-ir directly
  # cgeist -v -S -O$1 $2 -emit-llvm -o out/base.ll

  # From LLVM-IR to assembly
  llc --filetype=obj --relocation-model=pic out/base.ll -o ./out/base.o
  echo "Compile $2 complete"
}

function c++_llvm-dialect_obj() {
  mkd_out
  # Compile to LLVM-dialect
  cgeist -v -S -g -O$1 $2 -memref-abi=0 -std=c++11 -emit-llvm-dialect -o out/base.mlir

  # Translate to llvm ir
  mlir-translate -mlir-to-llvmir out/base.mlir -o out/base.ll

  # Uncomment this and comment the above two if generate llvm-ir directly
  # cgeist -v -S -O$1 $2 -emit-llvm -o out/base.ll

  # From LLVM-IR to assembly
  llc --filetype=obj --relocation-model=pic out/base.ll -o ./out/base.o
  echo "Compile $2 complete"
}

function cpp_from_llvm_dialect () {
  mlir-translate -mlir-to-llvmir $1 -o out/base.ll
  llc --filetype=obj --relocation-model=pic out/base.ll -o ./out/base.o
  clang-16 -std=c++11 -O0 -lstdc++ out/base.o -o out/$2
  echo "Compile $1 complete"
}

# cmd [lowered.mlir]
function from_remote_lowered() {
  mkd_out

  # lower to llvm dialect
  polygeist-opt --convert-polygeist-to-llvm $1 -o out/base_llvm.mlir

  # Translate to llvm ir
  mlir-translate -mlir-to-llvmir out/base_llvm.mlir -o out/base.ll

  llc-b -filetype=obj -relocation-model=pic out/base.ll -o ./out/base.o
  echo "Compile $1 complete"
}

# cmd target.c bin
function compile_target() {
  mkd_libs
  cp /users/Zijian/fake-rt/build/src/CMakeFiles/dissrt.dir/* libs/
  clang-b -fprofile-generate -lpthread -flto=thin -fuse-ld=ld libs/cache.c.o libs/common.c.o libs/remote_pool.c.o libs/tcp_rt.c.o libs/offload.c.o out/base.o -o out/run
  echo "Compile $1 complete"
}

function cpp_from_mlir() {
  polygeist-opt --convert-polygeist-to-llvm $1 -o out/base_llvm.mlir 
  mlir-translate -mlir-to-llvmir out/base_llvm.mlir -o out/base.ll 
  clang-b++ -std=c++14 out/base.ll -o out/base
}


function after_disagg_passes() {
  polygeist-opt --pass-pipeline="cse,canonicalize,convert-polygeist-to-llvm" $1 | mlir-translate --mlir-to-llvmir -o out/base.ll
  clang-b++ -std=c++14 -c out/base.ll -o /home/wuklab/projects/pl-zijian/raw_eth_pktgen/from_mlir/manual/base.o
}

#!/bin/bash

function build_step1() {
  make -C ../build main_step1
  rm -rf rt/*
  cp -r /home/wuklab/projects/pl-zijian/raw_eth_pktgen/build/libcommon/lib/CMakeFiles/common.dir/* ./rt
  objs=$(find rt/*.o)

  set -x
  clang-b++ -O3 -flto -lpthread -libverbs -lnng -lm -fprofile-instr-generate $objs /home/wuklab/AIFM/aifm/DataFrame/original/build/CMakeFiles/main_step1.dir/app/internal.cc.o base.ll -o main_step1 /home/wuklab/AIFM/aifm/DataFrame/original/build/lib/libDataFrame.a
  cp main_step1 /home/wuklab/projects/pl-zijian/raw_eth_pktgen/build/bin
  set +x
  echo "Link Complete"
}


function mlir_step_local() {
  set -x
  cgeist -S -std=c++14 app/main_step$1.cc -I include -emit-llvm -o out/step$1.ll
  objs=/home/wuklab/AIFM/aifm/DataFrame/original/build/CMakeFiles/main_step$1.dir/app/internal.cc.o
  clang-b++ -O3 -lpthread out/step$1.ll $objs /home/wuklab/AIFM/aifm/DataFrame/original/build/lib/libDataFrame.a -o out/step$1 
  set +x
  echo "Link Complete"
}
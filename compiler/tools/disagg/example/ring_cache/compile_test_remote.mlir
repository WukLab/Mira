module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%d %d\0A\00") {addr_space = 0 : i32}
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1 = arith.constant 1 : index
    %c4096_i64 = arith.constant 4096 : i64
    %c0_i32 = arith.constant 0 : i32
    %0 = rmem.malloc_ptr 2, %c4096_i64 : (i64) -> !rmem.rmref<1, !llvm.ptr<i8>>
    %1 = rmem.bitcast %0 : (!rmem.rmref<1, !llvm.ptr<i8>>) -> !rmem.rmref<1, !llvm.ptr<i32>>
    %2 = llvm.getelementptr %arg1[1] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %4 = llvm.call @atoi(%3) : (!llvm.ptr<i8>) -> i32
    %5 = llvm.getelementptr %arg1[2] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i8>>
    %7 = llvm.call @atoi(%6) : (!llvm.ptr<i8>) -> i32
    %8 = arith.index_cast %4 : i32 to index
    %9 = arith.index_cast %7 : i32 to index
    %10 = llvm.mlir.addressof @str0 : !llvm.ptr<array<7 x i8>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
    scf.for %arg2 = %9 to %8 step %c1 {
      %12 = arith.index_cast %arg2 : index to i32
      %13 = arith.index_cast %arg2 : index to i64
      %14 = rmem.llvm.getelementptr %1[%13 []] : (!rmem.rmref<1, !llvm.ptr<i32>>, i64) -> !rmem.rmref<1, !llvm.ptr<i32>>
      %15 = rmem.llvm.load %14 : (!rmem.rmref<1, !llvm.ptr<i32>>) -> i32
      %16 = llvm.call @printf(%11, %12, %15) : (!llvm.ptr<i8>, i32, i32) -> i32
    }
    return %c0_i32 : i32
  }
}


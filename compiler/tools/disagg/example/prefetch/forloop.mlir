module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c8_i64 = arith.constant 8 : i64
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.Dat", (i32, i32)> : (i64) -> !llvm.ptr<struct<"struct.Dat", (i32, i32)>>
    %1 = llvm.getelementptr %arg1[1] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<i8>>
    %3 = llvm.call @atoi(%2) : (!llvm.ptr<i8>) -> i32
    %4 = arith.extsi %3 : i32 to i64
    %5 = arith.muli %4, %c8_i64 : i64
    %6 = arith.muli %5, %4 : i64
    %7 = llvm.call @malloc(%6) : (i64) -> !llvm.ptr<i8>
    %8 = llvm.bitcast %7 : !llvm.ptr<i8> to !llvm.ptr<struct<"struct.Dat", (i32, i32)>>
    %9 = arith.index_cast %3 : i32 to index
    %10 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.Dat", (i32, i32)>>) -> !llvm.ptr<i32>
    %11 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<struct<"struct.Dat", (i32, i32)>>) -> !llvm.ptr<i32>
    scf.for %arg2 = %c0 to %9 step %c1 {
      %12 = arith.index_cast %arg2 : index to i32
      %13 = arith.muli %12, %3 : i32
      scf.for %arg3 = %c0 to %9 step %c1 {
        %14 = arith.index_cast %arg3 : index to i32
        %15 = arith.addi %13, %14 : i32
        %16 = arith.index_cast %15 : i32 to index
        %17 = arith.index_cast %16 : index to i64
        %18 = llvm.getelementptr %8[%17] : (!llvm.ptr<struct<"struct.Dat", (i32, i32)>>, i64) -> !llvm.ptr<struct<"struct.Dat", (i32, i32)>>
        llvm.store %12, %10 : !llvm.ptr<i32>
        llvm.store %14, %11 : !llvm.ptr<i32>
        %19 = llvm.load %0 : !llvm.ptr<struct<"struct.Dat", (i32, i32)>>
        llvm.store %19, %18 : !llvm.ptr<struct<"struct.Dat", (i32, i32)>>
      }
    }
    return %c0_i32 : i32
  }
}

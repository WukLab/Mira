module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @channel_destroy(i32)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c512_i32 = arith.constant 512 : i32
    %c134_i32 = arith.constant 134 : i32
    %c1_i32 = arith.constant 1 : i32
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
    %7 = rmem.malloc_ptr 2, %6 : (i64) -> !rmem.rmref<1, !llvm.ptr<i8>>
    %8 = rmem.bitcast %7 : (!rmem.rmref<1, !llvm.ptr<i8>>) -> !rmem.rmref<1, !llvm.ptr<struct<"struct.Dat", (i32, i32)>>>
    %9 = arith.index_cast %3 : i32 to index
    %10 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.Dat", (i32, i32)>>) -> !llvm.ptr<i32>
    %11 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<struct<"struct.Dat", (i32, i32)>>) -> !llvm.ptr<i32>
    scf.for %arg2 = %c0 to %9 step %c1 {
      %12 = arith.index_cast %arg2 : index to i32
      %13 = arith.muli %12, %3 : i32
      %14 = arith.index_cast %13 : i32 to index
      %15 = arith.index_cast %14 : index to i64
      %16 = rmem.llvm.getelementptr %8[%15 []] : (!rmem.rmref<1, !llvm.ptr<struct<"struct.Dat", (i32, i32)>>>, i64) -> !rmem.rmref<1, !llvm.ptr<struct<"struct.Dat", (i32, i32)>>>
      %17 = rmem.trivial.sizeof {src = !llvm.struct<"struct.Dat", (i32, i32)>} : i32
      %18 = arith.ceildivui %c512_i32, %17 : i32
      %19 = arith.addi %18, %c134_i32 : i32
      %20 = rmem.channel.create %16, %9, %17, %19, %18, %c134_i32, %c1_i32 : (!rmem.rmref<1, !llvm.ptr<struct<"struct.Dat", (i32, i32)>>>, index, i32, i32, i32, i32, i32) -> i32
      scf.for %arg3 = %c0 to %9 step %c1 {
        %21 = arith.index_cast %arg3 : index to i32
        llvm.store %12, %10 : !llvm.ptr<i32>
        llvm.store %21, %11 : !llvm.ptr<i32>
        %22 = llvm.load %0 : !llvm.ptr<struct<"struct.Dat", (i32, i32)>>
        %23 = rmem.channel.access %20, %arg3 : (i32, index) -> !rmem.rmref<0, !llvm.ptr<struct<"struct.Dat", (i32, i32)>>>
        rmem.llvm.store %22 -> %23 : !llvm.struct<"struct.Dat", (i32, i32)>, !rmem.rmref<0, !llvm.ptr<struct<"struct.Dat", (i32, i32)>>>
      } {prefetched = true}
      llvm.call @channel_destroy(%20) : (i32) -> ()
    }
    return %c0_i32 : i32
  }
}


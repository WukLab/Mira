module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @channel_init()
  llvm.func @cache_init()
  llvm.func @init_client()
  llvm.func @channel_access(i32, i64) -> !llvm.ptr<i8>
  llvm.func @channel_create(i64, i64, i32, i32, i32, i32, i32) -> i32
  llvm.func @_disagg_alloc(i32, i64) -> !llvm.ptr<i8>
  llvm.func @channel_destroy(i32)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c198_i32 = arith.constant 198 : i32
    %c64_i32 = arith.constant 64 : i32
    %c8_i32 = arith.constant 8 : i32
    %0 = llvm.mlir.constant(2 : i32) : i32
    %c1_i64 = arith.constant 1 : i64
    %c0_i32 = arith.constant 0 : i32
    %c8_i64 = arith.constant 8 : i64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1_i32 = arith.constant 1 : i32
    %c134_i32 = arith.constant 134 : i32
    llvm.call @init_client() : () -> ()
    llvm.call @cache_init() : () -> ()
    llvm.call @channel_init() : () -> ()
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"struct.Dat", (i32, i32)> : (i64) -> !llvm.ptr<struct<"struct.Dat", (i32, i32)>>
    %2 = llvm.getelementptr %arg1[1] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %4 = llvm.call @atoi(%3) : (!llvm.ptr<i8>) -> i32
    %5 = arith.extsi %4 : i32 to i64
    %6 = arith.muli %5, %c8_i64 : i64
    %7 = arith.muli %6, %5 : i64
    %8 = llvm.call @_disagg_alloc(%0, %7) : (i32, i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<struct<"struct.Dat", (i32, i32)>>
    %10 = arith.index_cast %4 : i32 to index
    %11 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.Dat", (i32, i32)>>) -> !llvm.ptr<i32>
    %12 = llvm.getelementptr %1[0, 1] : (!llvm.ptr<struct<"struct.Dat", (i32, i32)>>) -> !llvm.ptr<i32>
    scf.for %arg2 = %c0 to %10 step %c1 {
      %13 = arith.index_cast %arg2 : index to i32
      %14 = arith.muli %13, %4 : i32
      %15 = arith.index_cast %14 : i32 to index
      %16 = arith.index_cast %15 : index to i64
      %17 = llvm.getelementptr %9[%16] : (!llvm.ptr<struct<"struct.Dat", (i32, i32)>>, i64) -> !llvm.ptr<struct<"struct.Dat", (i32, i32)>>
      %18 = llvm.ptrtoint %17 : !llvm.ptr<struct<"struct.Dat", (i32, i32)>> to i64
      %19 = arith.index_cast %10 : index to i64
      %20 = llvm.call @channel_create(%18, %19, %c8_i32, %c198_i32, %c64_i32, %c134_i32, %c1_i32) : (i64, i64, i32, i32, i32, i32, i32) -> i32
      scf.for %arg3 = %c0 to %10 step %c1 {
        %21 = arith.index_cast %arg3 : index to i32
        llvm.store %13, %11 : !llvm.ptr<i32>
        llvm.store %21, %12 : !llvm.ptr<i32>
        %22 = llvm.load %1 : !llvm.ptr<struct<"struct.Dat", (i32, i32)>>
        %23 = arith.index_cast %arg3 : index to i64
        %24 = llvm.call @channel_access(%20, %23) : (i32, i64) -> !llvm.ptr<i8>
        %25 = llvm.bitcast %24 : !llvm.ptr<i8> to !llvm.ptr<struct<"struct.Dat", (i32, i32)>>
        llvm.store %22, %25 : !llvm.ptr<struct<"struct.Dat", (i32, i32)>>
      } {prefetched = true}
      llvm.call @channel_destroy(%20) : (i32) -> ()
    }
    return %c0_i32 : i32
  }
}


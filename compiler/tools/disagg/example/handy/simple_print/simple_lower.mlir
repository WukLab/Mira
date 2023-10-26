module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @cache_access(!llvm.ptr<i128>) -> !llvm.ptr<i8>
  llvm.func @cache_access_mut(!llvm.ptr<i128>) -> !llvm.ptr<i8>
  llvm.func @cache_request(i64) -> i128
  llvm.func @_disagg_alloc(i32, i64) -> !llvm.ptr<i8>
  llvm.func @shutdown_device()
  llvm.func @cache_create(i32, i32) -> i32
  llvm.func @cache_init()
  llvm.func @init_bufs()
  llvm.func @init_device()
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%d = %d * %d\0A\00")
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global external @as() {addr_space = 0 : i32} : !llvm.ptr<struct<(i32, i32)>> {
    %0 = llvm.mlir.undef : !llvm.ptr<struct<(i32, i32)>>
    llvm.return %0 : !llvm.ptr<struct<(i32, i32)>>
  }
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    llvm.call @init_device() : () -> ()
    llvm.call @init_bufs() : () -> ()
    llvm.call @cache_init() : () -> ()
    %0 = llvm.mlir.constant(64 : i32) : i32
    %1 = llvm.mlir.constant(16 : i32) : i32
    %2 = llvm.call @cache_create(%0, %1) : (i32, i32) -> i32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c8_i64 = arith.constant 8 : i64
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %3 = llvm.getelementptr %arg1[%c1_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i8>>
    %5 = llvm.call @atoi(%4) : (!llvm.ptr<i8>) -> i32
    %6 = llvm.mlir.addressof @as : !llvm.ptr<ptr<struct<(i32, i32)>>>
    %7 = arith.extsi %5 : i32 to i64
    %8 = arith.muli %7, %c8_i64 : i64
    %9 = llvm.mlir.constant(1 : i32) : i32
    %10 = llvm.call @_disagg_alloc(%9, %8) : (i32, i64) -> !llvm.ptr<i8>
    %11 = llvm.bitcast %10 : !llvm.ptr<i8> to !llvm.ptr<struct<(i32, i32)>>
    llvm.store %11, %6 : !llvm.ptr<ptr<struct<(i32, i32)>>>
    %12 = arith.index_cast %5 : i32 to index
    scf.for %arg2 = %c0 to %12 step %c1 {
      %14 = arith.index_cast %arg2 : index to i32
      %15 = llvm.mlir.addressof @as : !llvm.ptr<ptr<struct<(i32, i32)>>>
      %16 = llvm.load %15 : !llvm.ptr<ptr<struct<(i32, i32)>>>
      %17 = arith.index_cast %arg2 : index to i64
      %18 = llvm.getelementptr %16[%17] : (!llvm.ptr<struct<(i32, i32)>>, i64) -> !llvm.ptr<struct<(i32, i32)>>
      %19 = llvm.getelementptr %18[%c0_i32, 0] : (!llvm.ptr<struct<(i32, i32)>>, i32) -> !llvm.ptr<i32>
      %20 = llvm.ptrtoint %19 : !llvm.ptr<i32> to i64
      %21 = llvm.call @cache_request(%20) : (i64) -> i128
      %22 = llvm.mlir.constant(1 : i64) : i64
      %23 = llvm.alloca %22 x i128 : (i64) -> !llvm.ptr<i128>
      llvm.store %21, %23 : !llvm.ptr<i128>
      %24 = llvm.call @cache_access_mut(%23) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %25 = llvm.bitcast %24 : !llvm.ptr<i8> to !llvm.ptr<i32>
      llvm.store %14, %25 : !llvm.ptr<i32>
      %26 = llvm.mlir.addressof @as : !llvm.ptr<ptr<struct<(i32, i32)>>>
      %27 = llvm.load %26 : !llvm.ptr<ptr<struct<(i32, i32)>>>
      %28 = arith.index_cast %arg2 : index to i64
      %29 = llvm.getelementptr %27[%28] : (!llvm.ptr<struct<(i32, i32)>>, i64) -> !llvm.ptr<struct<(i32, i32)>>
      %30 = llvm.getelementptr %29[%c0_i32, 1] : (!llvm.ptr<struct<(i32, i32)>>, i32) -> !llvm.ptr<i32>
      %31 = arith.muli %14, %14 : i32
      %32 = llvm.ptrtoint %30 : !llvm.ptr<i32> to i64
      %33 = llvm.call @cache_request(%32) : (i64) -> i128
      %34 = llvm.mlir.constant(1 : i64) : i64
      %35 = llvm.alloca %34 x i128 : (i64) -> !llvm.ptr<i128>
      llvm.store %33, %35 : !llvm.ptr<i128>
      %36 = llvm.call @cache_access_mut(%35) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %37 = llvm.bitcast %36 : !llvm.ptr<i8> to !llvm.ptr<i32>
      llvm.store %31, %37 : !llvm.ptr<i32>
    }
    %13 = arith.index_cast %5 : i32 to index
    scf.for %arg2 = %c0 to %13 step %c1 {
      %14 = llvm.mlir.addressof @str0 : !llvm.ptr<array<14 x i8>>
      %15 = llvm.getelementptr %14[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %16 = llvm.mlir.addressof @as : !llvm.ptr<ptr<struct<(i32, i32)>>>
      %17 = llvm.load %16 : !llvm.ptr<ptr<struct<(i32, i32)>>>
      %18 = arith.index_cast %arg2 : index to i64
      %19 = llvm.getelementptr %17[%18] : (!llvm.ptr<struct<(i32, i32)>>, i64) -> !llvm.ptr<struct<(i32, i32)>>
      %20 = llvm.getelementptr %19[%c0_i32, 1] : (!llvm.ptr<struct<(i32, i32)>>, i32) -> !llvm.ptr<i32>
      %21 = llvm.ptrtoint %20 : !llvm.ptr<i32> to i64
      %22 = llvm.call @cache_request(%21) : (i64) -> i128
      %23 = llvm.mlir.constant(1 : i64) : i64
      %24 = llvm.alloca %23 x i128 : (i64) -> !llvm.ptr<i128>
      llvm.store %22, %24 : !llvm.ptr<i128>
      %25 = llvm.call @cache_access(%24) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %26 = llvm.bitcast %25 : !llvm.ptr<i8> to !llvm.ptr<i32>
      %27 = llvm.load %26 : !llvm.ptr<i32>
      %28 = llvm.getelementptr %19[%c0_i32, 0] : (!llvm.ptr<struct<(i32, i32)>>, i32) -> !llvm.ptr<i32>
      %29 = llvm.ptrtoint %28 : !llvm.ptr<i32> to i64
      %30 = llvm.call @cache_request(%29) : (i64) -> i128
      %31 = llvm.mlir.constant(1 : i64) : i64
      %32 = llvm.alloca %31 x i128 : (i64) -> !llvm.ptr<i128>
      llvm.store %30, %32 : !llvm.ptr<i128>
      %33 = llvm.call @cache_access(%32) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %34 = llvm.bitcast %33 : !llvm.ptr<i8> to !llvm.ptr<i32>
      %35 = llvm.load %34 : !llvm.ptr<i32>
      %36 = llvm.call @printf(%15, %27, %35, %35) : (!llvm.ptr<i8>, i32, i32, i32) -> i32
    }
    llvm.call @shutdown_device() : () -> ()
    return %c0_i32 : i32
  }
}


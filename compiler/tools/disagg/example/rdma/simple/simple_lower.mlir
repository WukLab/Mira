module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic", rmem._disagg_num_caches = 3 : i32} {
  llvm.func @cache_init()
  llvm.func @init_client()
  llvm.func @cache_access(!llvm.ptr<i128>) -> !llvm.ptr<i8>
  llvm.func @cache_access_mut(!llvm.ptr<i128>) -> !llvm.ptr<i8>
  llvm.func @cache_request(i64) -> i128
  llvm.func @_disagg_alloc(i32, i64) -> !llvm.ptr<i8>
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%d = %d * %d\0A\00") {addr_space = 0 : i32}
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global external @as() {addr_space = 0 : i32} : !llvm.ptr<struct<(i32, i32)>> {
    %0 = llvm.mlir.undef : !llvm.ptr<struct<(i32, i32)>>
    llvm.return %0 : !llvm.ptr<struct<(i32, i32)>>
  }
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    llvm.call @init_client() : () -> ()
    llvm.call @cache_init() : () -> ()
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c8_i64 = arith.constant 8 : i64
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.getelementptr %arg1[1] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i8>>
    %2 = llvm.call @atoi(%1) : (!llvm.ptr<i8>) -> i32
    %3 = llvm.mlir.addressof @as : !llvm.ptr<ptr<struct<(i32, i32)>>>
    %4 = arith.extsi %2 : i32 to i64
    %5 = arith.muli %4, %c8_i64 : i64
    %6 = llvm.mlir.constant(2 : i32) : i32
    %7 = llvm.call @_disagg_alloc(%6, %5) : (i32, i64) -> !llvm.ptr<i8>
    %8 = llvm.bitcast %7 : !llvm.ptr<i8> to !llvm.ptr<struct<(i32, i32)>>
    llvm.store %8, %3 : !llvm.ptr<ptr<struct<(i32, i32)>>>
    %9 = arith.index_cast %2 : i32 to index
    scf.for %arg2 = %c0 to %9 step %c1 {
      %11 = arith.index_cast %arg2 : index to i32
      %12 = llvm.mlir.addressof @as : !llvm.ptr<ptr<struct<(i32, i32)>>>
      %13 = llvm.load %12 : !llvm.ptr<ptr<struct<(i32, i32)>>>
      %14 = arith.index_cast %arg2 : index to i64
      %15 = llvm.getelementptr %13[%14] : (!llvm.ptr<struct<(i32, i32)>>, i64) -> !llvm.ptr<struct<(i32, i32)>>
      %16 = llvm.getelementptr %15[0, 0] : (!llvm.ptr<struct<(i32, i32)>>) -> !llvm.ptr<i32>
      %17 = llvm.ptrtoint %16 : !llvm.ptr<i32> to i64
      %18 = llvm.call @cache_request(%17) : (i64) -> i128
      %19 = llvm.mlir.constant(1 : i64) : i64
      %20 = llvm.alloca %19 x i128 : (i64) -> !llvm.ptr<i128>
      llvm.store %18, %20 : !llvm.ptr<i128>
      %21 = llvm.call @cache_access_mut(%20) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %22 = llvm.bitcast %21 : !llvm.ptr<i8> to !llvm.ptr<i32>
      llvm.store %11, %22 : !llvm.ptr<i32>
      %23 = llvm.mlir.addressof @as : !llvm.ptr<ptr<struct<(i32, i32)>>>
      %24 = llvm.load %23 : !llvm.ptr<ptr<struct<(i32, i32)>>>
      %25 = arith.index_cast %arg2 : index to i64
      %26 = llvm.getelementptr %24[%25] : (!llvm.ptr<struct<(i32, i32)>>, i64) -> !llvm.ptr<struct<(i32, i32)>>
      %27 = llvm.getelementptr %26[0, 1] : (!llvm.ptr<struct<(i32, i32)>>) -> !llvm.ptr<i32>
      %28 = arith.muli %11, %11 : i32
      %29 = llvm.ptrtoint %27 : !llvm.ptr<i32> to i64
      %30 = llvm.call @cache_request(%29) : (i64) -> i128
      %31 = llvm.mlir.constant(1 : i64) : i64
      %32 = llvm.alloca %31 x i128 : (i64) -> !llvm.ptr<i128>
      llvm.store %30, %32 : !llvm.ptr<i128>
      %33 = llvm.call @cache_access_mut(%32) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %34 = llvm.bitcast %33 : !llvm.ptr<i8> to !llvm.ptr<i32>
      llvm.store %28, %34 : !llvm.ptr<i32>
    }
    %10 = arith.index_cast %2 : i32 to index
    scf.for %arg2 = %c0 to %10 step %c1 {
      %11 = llvm.mlir.addressof @str0 : !llvm.ptr<array<14 x i8>>
      %12 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
      %13 = llvm.mlir.addressof @as : !llvm.ptr<ptr<struct<(i32, i32)>>>
      %14 = llvm.load %13 : !llvm.ptr<ptr<struct<(i32, i32)>>>
      %15 = arith.index_cast %arg2 : index to i64
      %16 = llvm.getelementptr %14[%15] : (!llvm.ptr<struct<(i32, i32)>>, i64) -> !llvm.ptr<struct<(i32, i32)>>
      %17 = llvm.getelementptr %16[0, 1] : (!llvm.ptr<struct<(i32, i32)>>) -> !llvm.ptr<i32>
      %18 = llvm.ptrtoint %17 : !llvm.ptr<i32> to i64
      %19 = llvm.call @cache_request(%18) : (i64) -> i128
      %20 = llvm.mlir.constant(1 : i64) : i64
      %21 = llvm.alloca %20 x i128 : (i64) -> !llvm.ptr<i128>
      llvm.store %19, %21 : !llvm.ptr<i128>
      %22 = llvm.call @cache_access(%21) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %23 = llvm.bitcast %22 : !llvm.ptr<i8> to !llvm.ptr<i32>
      %24 = llvm.load %23 : !llvm.ptr<i32>
      %25 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<struct<(i32, i32)>>) -> !llvm.ptr<i32>
      %26 = llvm.ptrtoint %25 : !llvm.ptr<i32> to i64
      %27 = llvm.call @cache_request(%26) : (i64) -> i128
      %28 = llvm.mlir.constant(1 : i64) : i64
      %29 = llvm.alloca %28 x i128 : (i64) -> !llvm.ptr<i128>
      llvm.store %27, %29 : !llvm.ptr<i128>
      %30 = llvm.call @cache_access(%29) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %31 = llvm.bitcast %30 : !llvm.ptr<i8> to !llvm.ptr<i32>
      %32 = llvm.load %31 : !llvm.ptr<i32>
      %33 = llvm.call @printf(%12, %24, %32, %32) : (!llvm.ptr<i8>, i32, i32, i32) -> i32
    }
    return %c0_i32 : i32
  }
}


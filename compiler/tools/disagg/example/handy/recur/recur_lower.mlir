module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @_disagg_stack_alloc(i64) -> !llvm.ptr<i8>
  llvm.func @cache_access(!llvm.ptr<i128>) -> !llvm.ptr<i8>
  llvm.func @cache_access_mut(!llvm.ptr<i128>) -> !llvm.ptr<i8>
  llvm.func @cache_request(i64) -> i128
  llvm.func @_disagg_alloc(i32, i64) -> !llvm.ptr<i8>
  llvm.func @shutdown_device()
  llvm.func @cache_create(i32, i32) -> i32
  llvm.func @cache_init()
  llvm.func @init_bufs()
  llvm.func @init_device()
  llvm.mlir.global internal constant @str1("%d\0A\00")
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("struct chasing from %d\0A\00")
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global external @glob() {addr_space = 0 : i32} : !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>> {
    %0 = llvm.mlir.undef : !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>
    llvm.return %0 : !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>
  }
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  func.func @expand(%arg0: !llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>, %arg1: i32) -> !llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>> {
    %c16_i64 = arith.constant 16 : i64
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.call @_disagg_alloc(%0, %c16_i64) : (i32, i64) -> !llvm.ptr<i8>
    %2 = llvm.bitcast %1 : !llvm.ptr<i8> to !llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>
    %3 = llvm.getelementptr %2[%c0_i32, 0] : (!llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<struct<(i32)>>
    %4 = llvm.getelementptr %3[%c0_i32, 0] : (!llvm.ptr<struct<(i32)>>, i32) -> !llvm.ptr<i32>
    %5 = llvm.ptrtoint %4 : !llvm.ptr<i32> to i64
    %6 = llvm.call @cache_request(%5) : (i64) -> i128
    %7 = llvm.mlir.constant(1 : i64) : i64
    %8 = llvm.alloca %7 x i128 : (i64) -> !llvm.ptr<i128>
    llvm.store %6, %8 : !llvm.ptr<i128>
    %9 = llvm.call @cache_access_mut(%8) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
    %10 = llvm.bitcast %9 : !llvm.ptr<i8> to !llvm.ptr<i32>
    llvm.store %arg1, %10 : !llvm.ptr<i32>
    %11 = llvm.getelementptr %2[%c0_i32, 1] : (!llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>
    %12 = llvm.mlir.null : !llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>
    %13 = llvm.ptrtoint %11 : !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>> to i64
    %14 = llvm.call @cache_request(%13) : (i64) -> i128
    %15 = llvm.mlir.constant(1 : i64) : i64
    %16 = llvm.alloca %15 x i128 : (i64) -> !llvm.ptr<i128>
    llvm.store %14, %16 : !llvm.ptr<i128>
    %17 = llvm.call @cache_access_mut(%16) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
    %18 = llvm.bitcast %17 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>
    llvm.store %12, %18 : !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>
    %19 = llvm.getelementptr %arg0[%c0_i32, 1] : (!llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>
    %20 = llvm.ptrtoint %19 : !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>> to i64
    %21 = llvm.call @cache_request(%20) : (i64) -> i128
    %22 = llvm.mlir.constant(1 : i64) : i64
    %23 = llvm.alloca %22 x i128 : (i64) -> !llvm.ptr<i128>
    llvm.store %21, %23 : !llvm.ptr<i128>
    %24 = llvm.call @cache_access_mut(%23) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
    %25 = llvm.bitcast %24 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>
    llvm.store %2, %25 : !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>
    llvm.return %2 : !llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>
  }
  func.func @visit(%arg0: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.mlir.addressof @glob : !llvm.ptr<ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>>
    %2 = arith.index_cast %arg0 : i32 to index
    %3 = arith.index_cast %2 : index to i64
    %4 = llvm.getelementptr %1[%3] : (!llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>, i64) -> !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>
    %6 = llvm.mlir.addressof @str0 : !llvm.ptr<array<24 x i8>>
    %7 = llvm.getelementptr %6[%c0_i32, %c0_i32] : (!llvm.ptr<array<24 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %8 = llvm.call @printf(%7, %arg0) : (!llvm.ptr<i8>, i32) -> i32
    %9 = llvm.mlir.null : !llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>
    %10 = llvm.mlir.addressof @str1 : !llvm.ptr<array<4 x i8>>
    %11 = llvm.getelementptr %10[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %12 = scf.while (%arg1 = %5) : (!llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>) -> !llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>> {
      %13 = llvm.icmp "ne" %arg1, %9 : !llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>
      scf.condition(%13) %arg1 : !llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>
    } do {
    ^bb0(%arg1: !llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>):
      %13 = llvm.getelementptr %arg1[%c0_i32, 0] : (!llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<struct<(i32)>>
      %14 = llvm.getelementptr %13[%c0_i32, 0] : (!llvm.ptr<struct<(i32)>>, i32) -> !llvm.ptr<i32>
      %15 = llvm.ptrtoint %14 : !llvm.ptr<i32> to i64
      %16 = llvm.call @cache_request(%15) : (i64) -> i128
      %17 = llvm.mlir.constant(1 : i64) : i64
      %18 = llvm.alloca %17 x i128 : (i64) -> !llvm.ptr<i128>
      llvm.store %16, %18 : !llvm.ptr<i128>
      %19 = llvm.call @cache_access(%18) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %20 = llvm.bitcast %19 : !llvm.ptr<i8> to !llvm.ptr<i32>
      %21 = llvm.load %20 : !llvm.ptr<i32>
      %22 = llvm.call @printf(%11, %21) : (!llvm.ptr<i8>, i32) -> i32
      %23 = llvm.getelementptr %arg1[%c0_i32, 1] : (!llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>
      %24 = llvm.ptrtoint %23 : !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>> to i64
      %25 = llvm.call @cache_request(%24) : (i64) -> i128
      %26 = llvm.mlir.constant(1 : i64) : i64
      %27 = llvm.alloca %26 x i128 : (i64) -> !llvm.ptr<i128>
      llvm.store %25, %27 : !llvm.ptr<i128>
      %28 = llvm.call @cache_access(%27) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>
      %30 = llvm.load %29 : !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>
      scf.yield %30 : !llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>
    }
    return
  }
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    llvm.call @init_device() : () -> ()
    llvm.call @init_bufs() : () -> ()
    llvm.call @cache_init() : () -> ()
    %0 = llvm.mlir.constant(64 : i32) : i32
    %1 = llvm.mlir.constant(16 : i32) : i32
    %2 = llvm.call @cache_create(%0, %1) : (i32, i32) -> i32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2_i64 = arith.constant 2 : i64
    %c8_i64 = arith.constant 8 : i64
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %3 = llvm.mlir.null : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    %4 = llvm.getelementptr %3[%c1_i64] : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i64) -> !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    %5 = llvm.ptrtoint %4 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>> to i64
    %6 = llvm.call @_disagg_stack_alloc(%5) : (i64) -> !llvm.ptr<i8>
    %7 = llvm.bitcast %6 : !llvm.ptr<i8> to !llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>
    %8 = llvm.getelementptr %arg1[%c1_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<i8>>
    %10 = llvm.call @atoi(%9) : (!llvm.ptr<i8>) -> i32
    %11 = llvm.getelementptr %arg1[%c2_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %12 = llvm.load %11 : !llvm.ptr<ptr<i8>>
    %13 = llvm.call @atoi(%12) : (!llvm.ptr<i8>) -> i32
    %14 = llvm.mlir.addressof @glob : !llvm.ptr<ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>>
    %15 = arith.extsi %10 : i32 to i64
    %16 = arith.muli %15, %c8_i64 : i64
    %17 = llvm.call @malloc(%16) : (i64) -> !llvm.ptr<i8>
    %18 = llvm.bitcast %17 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>
    llvm.store %18, %14 : !llvm.ptr<ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>>
    %19 = arith.index_cast %10 : i32 to index
    %20 = scf.for %arg2 = %c0 to %19 step %c1 iter_args(%arg3 = %7) -> (!llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>) {
      %21 = arith.index_cast %arg2 : index to i32
      %22 = func.call @expand(%arg3, %21) : (!llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>
      %23 = llvm.mlir.addressof @glob : !llvm.ptr<ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>>
      %24 = llvm.load %23 : !llvm.ptr<ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>>
      %25 = arith.index_cast %arg2 : index to i64
      %26 = llvm.getelementptr %24[%25] : (!llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>, i64) -> !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>
      llvm.store %22, %26 : !llvm.ptr<ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>>
      scf.yield %22 : !llvm.ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"_Lowered_disagg@polygeist@mlir@struct.A">>)>>
    }
    call @visit(%13) : (i32) -> ()
    llvm.call @shutdown_device() : () -> ()
    return %c0_i32 : i32
  }
}


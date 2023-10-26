module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str1("%d\0A\00")
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("struct chasing from %d\0A\00")
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global external @glob() : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>> {
    %0 = llvm.mlir.undef : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    llvm.return %0 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
  }
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2_i64 = arith.constant 2 : i64
    %c8_i64 = arith.constant 8 : i64
    %c16_i64 = arith.constant 16 : i64
    %c0_i32 = arith.constant 0 : i32
    %c16_i32 = arith.constant 16 : i32
    %c64_i32 = arith.constant 64 : i32
    %c1_i64 = arith.constant 1 : i64
    call @init_device() : () -> ()
    call @init_bufs() : () -> ()
    call @cache_init() : () -> ()
    %0 = call @cache_create(%c64_i32, %c16_i32) : (i32, i32) -> i32
    %1 = llvm.getelementptr %arg1[%c1_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<i8>>
    %3 = llvm.call @atoi(%2) : (!llvm.ptr<i8>) -> i32
    %4 = llvm.getelementptr %arg1[%c2_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.call @atoi(%5) : (!llvm.ptr<i8>) -> i32
    %7 = llvm.mlir.addressof @glob : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
    %8 = arith.extsi %3 : i32 to i64
    %9 = arith.muli %8, %c8_i64 : i64
    %10 = llvm.call @malloc(%9) : (i64) -> !llvm.ptr<i8>
    %11 = llvm.bitcast %10 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    llvm.store %11, %7 : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
    %12 = call @_disagg_stack_alloc(%c16_i64) : (i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    %14 = arith.index_cast %3 : i32 to index
    %15 = scf.for %arg2 = %c0 to %14 step %c1 iter_args(%arg3 = %13) -> (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>) {
      %16 = arith.index_cast %arg2 : index to i32
      %17 = func.call @expand(%arg3, %16) : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
      %18 = llvm.mlir.addressof @glob : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
      %19 = llvm.load %18 : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
      %20 = arith.index_cast %arg2 : index to i64
      %21 = llvm.getelementptr %19[%20] : (!llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>, i64) -> !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
      llvm.store %17, %21 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
      scf.yield %17 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    }
    call @visit(%6) : (i32) -> ()
    return %c0_i32 : i32
  }
  func.func private @init_device() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @init_bufs() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cache_init() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cache_create(i32, i32) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_disagg_stack_alloc(i64) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @expand(%arg0: !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, %arg1: i32) -> !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c16_i64 = arith.constant 16 : i64
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i128 : (i64) -> !llvm.ptr<i128>
    %1 = llvm.mlir.undef : i128
    llvm.store %1, %0 : !llvm.ptr<i128>
    %2 = llvm.alloca %c1_i64 x i128 : (i64) -> !llvm.ptr<i128>
    llvm.store %1, %2 : !llvm.ptr<i128>
    %3 = call @_disagg_alloc(%c1_i32, %c16_i64) : (i32, i64) -> !llvm.ptr<i8>
    %4 = llvm.bitcast %3 : !llvm.ptr<i8> to !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    %5 = llvm.ptrtoint %4 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>> to i64
    %6 = call @cache_request(%5) : (i64) -> i128
    llvm.store %6, %2 : !llvm.ptr<i128>
    %7 = call @cache_access_mut(%2) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
    %8 = llvm.bitcast %7 : !llvm.ptr<i8> to !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    %9 = llvm.getelementptr %8[%c0_i32, 0] : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<struct<(i32)>>
    %10 = llvm.getelementptr %9[%c0_i32, 0] : (!llvm.ptr<struct<(i32)>>, i32) -> !llvm.ptr<i32>
    llvm.store %arg1, %10 : !llvm.ptr<i32>
    %11 = llvm.getelementptr %8[%c0_i32, 1] : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    %12 = llvm.mlir.null : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    llvm.store %12, %11 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    %13 = llvm.ptrtoint %arg0 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>> to i64
    %14 = call @cache_request(%13) : (i64) -> i128
    llvm.store %14, %0 : !llvm.ptr<i128>
    %15 = call @cache_access_mut(%0) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
    %16 = llvm.bitcast %15 : !llvm.ptr<i8> to !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    %17 = llvm.getelementptr %16[%c0_i32, 1] : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    llvm.store %4, %17 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    return %4 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
  }
  func.func @visit(%arg0: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i128 : (i64) -> !llvm.ptr<i128>
    %1 = llvm.mlir.undef : i128
    llvm.store %1, %0 : !llvm.ptr<i128>
    %2 = llvm.mlir.addressof @glob : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
    %4 = arith.index_cast %arg0 : i32 to index
    %5 = arith.index_cast %4 : index to i64
    %6 = llvm.getelementptr %3[%5] : (!llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>, i64) -> !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    %8 = llvm.mlir.addressof @str0 : !llvm.ptr<array<24 x i8>>
    %9 = llvm.getelementptr %8[%c0_i32, %c0_i32] : (!llvm.ptr<array<24 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %10 = llvm.call @printf(%9, %arg0) : (!llvm.ptr<i8>, i32) -> i32
    %11 = llvm.mlir.null : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    %12 = llvm.mlir.addressof @str1 : !llvm.ptr<array<4 x i8>>
    %13 = llvm.getelementptr %12[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %14 = scf.while (%arg1 = %7) : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>) -> !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>> {
      %15 = llvm.icmp "ne" %arg1, %11 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
      scf.condition(%15) %arg1 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    } do {
    ^bb0(%arg1: !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>):
      %15 = llvm.ptrtoint %arg1 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>> to i64
      %16 = func.call @cache_request(%15) : (i64) -> i128
      llvm.store %16, %0 : !llvm.ptr<i128>
      %17 = func.call @cache_access(%0) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %18 = llvm.bitcast %17 : !llvm.ptr<i8> to !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
      %19 = llvm.getelementptr %18[%c0_i32, 0] : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<struct<(i32)>>
      %20 = llvm.getelementptr %19[%c0_i32, 0] : (!llvm.ptr<struct<(i32)>>, i32) -> !llvm.ptr<i32>
      %21 = llvm.load %20 : !llvm.ptr<i32>
      %22 = llvm.call @printf(%13, %21) : (!llvm.ptr<i8>, i32) -> i32
      %23 = llvm.getelementptr %18[%c0_i32, 1] : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
      %24 = llvm.load %23 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
      scf.yield %24 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    }
    return
  }
  func.func private @_disagg_alloc(i32, i64) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cache_request(i64) -> i128 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cache_access_mut(!llvm.ptr<i128>) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cache_access(!llvm.ptr<i128>) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
}

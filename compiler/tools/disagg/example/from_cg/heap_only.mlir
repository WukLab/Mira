module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%d-%f\0A\00") {addr_space = 0 : i32}
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c10 = arith.constant 10 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i32 = arith.constant 0 : i32
    %c5 = arith.constant 5 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %cst = arith.constant 9.990000e+01 : f64
    %c10_i32 = arith.constant 10 : i32
    %0 = call @init_min_heap(%c10_i32) : (i32) -> !llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>
    scf.for %arg0 = %c0 to %c10 step %c1 {
      %4 = arith.index_cast %arg0 : index to i32
      %5 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %6 = llvm.load %5 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %7 = arith.index_cast %arg0 : index to i64
      %8 = llvm.getelementptr %6[%7] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %9 = func.call @new_heap_node(%4, %cst) : (i32, f64) -> !llvm.ptr<struct<(f64, i32)>>
      llvm.store %9, %8 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %10 = llvm.getelementptr %0[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
      %11 = llvm.load %10 : !llvm.ptr<memref<?xi32>>
      memref.store %4, %11[%arg0] : memref<?xi32>
    }
    scf.for %arg0 = %c0 to %c5 step %c1 {
      %4 = arith.muli %arg0, %c-1 : index
      %5 = arith.addi %4, %c4 : index
      %6 = arith.index_cast %5 : index to i32
      func.call @heapify(%0, %6) : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>, i32) -> ()
    }
    %1 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
    %2 = llvm.mlir.addressof @str0 : !llvm.ptr<array<7 x i8>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
    scf.while : () -> () {
      %4 = llvm.load %1 : !llvm.ptr<i32>
      %5 = arith.cmpi ne, %4, %c0_i32 : i32
      scf.condition(%5)
    } do {
      %4 = func.call @extract_min(%0) : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<struct<(f64, i32)>>
      %5 = llvm.getelementptr %4[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %6 = llvm.load %5 : !llvm.ptr<i32>
      %7 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
      %8 = llvm.load %7 : !llvm.ptr<f64>
      %9 = llvm.call @printf(%3, %6, %8) : (!llvm.ptr<i8>, i32, f64) -> i32
      scf.yield
    }
    return %c0_i32 : i32
  }
  func.func @init_min_heap(%arg0: i32) -> !llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c4 = arith.constant 4 : index
    %c4_i64 = arith.constant 4 : i64
    %c8_i64 = arith.constant 8 : i64
    %c0_i32 = arith.constant 0 : i32
    %0 = "polygeist.typeSize"() {source = !llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>} : () -> index
    %1 = arith.index_cast %0 : index to i64
    %2 = llvm.call @malloc(%1) : (i64) -> !llvm.ptr<i8>
    %3 = llvm.bitcast %2 : !llvm.ptr<i8> to !llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>
    %4 = llvm.getelementptr %3[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
    %5 = arith.extsi %arg0 : i32 to i64
    %6 = arith.muli %5, %c4_i64 : i64
    %7 = arith.index_cast %6 : i64 to index
    %8 = arith.divui %7, %c4 : index
    %9 = memref.alloc(%8) : memref<?xi32>
    llvm.store %9, %4 : !llvm.ptr<memref<?xi32>>
    %10 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
    llvm.store %c0_i32, %10 : !llvm.ptr<i32>
    %11 = llvm.getelementptr %3[0, 2] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
    llvm.store %arg0, %11 : !llvm.ptr<i32>
    %12 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %13 = arith.extsi %arg0 : i32 to i64
    %14 = arith.muli %13, %c8_i64 : i64
    %15 = llvm.call @malloc(%14) : (i64) -> !llvm.ptr<i8>
    %16 = llvm.bitcast %15 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %16, %12 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    return %3 : !llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>
  }
  func.func @new_heap_node(%arg0: i32, %arg1: f64) -> !llvm.ptr<struct<(f64, i32)>> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c16_i64 = arith.constant 16 : i64
    %0 = llvm.call @malloc(%c16_i64) : (i64) -> !llvm.ptr<i8>
    %1 = llvm.bitcast %0 : !llvm.ptr<i8> to !llvm.ptr<struct<(f64, i32)>>
    %2 = llvm.getelementptr %1[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    llvm.store %arg0, %2 : !llvm.ptr<i32>
    %3 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    llvm.store %arg1, %3 : !llvm.ptr<f64>
    return %1 : !llvm.ptr<struct<(f64, i32)>>
  }
  func.func @heapify(%arg0: !llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>, %arg1: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c2_i32 = arith.constant 2 : i32
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.shli %arg1, %c1_i32 : i32
    %1 = arith.addi %0, %c1_i32 : i32
    %2 = arith.shli %arg1, %c1_i32 : i32
    %3 = arith.addi %2, %c2_i32 : i32
    %4 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
    %5 = llvm.load %4 : !llvm.ptr<i32>
    %6 = arith.cmpi slt, %1, %5 : i32
    %7 = scf.if %6 -> (i32) {
      %13 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %14 = llvm.load %13 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %15 = arith.index_cast %1 : i32 to index
      %16 = arith.index_cast %15 : index to i64
      %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %18 = llvm.load %17 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
      %20 = llvm.load %19 : !llvm.ptr<f64>
      %21 = arith.index_cast %arg1 : i32 to index
      %22 = arith.index_cast %21 : index to i64
      %23 = llvm.getelementptr %14[%22] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %24 = llvm.load %23 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %25 = llvm.getelementptr %24[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
      %26 = llvm.load %25 : !llvm.ptr<f64>
      %27 = arith.cmpf olt, %20, %26 : f64
      %28 = arith.select %27, %1, %arg1 : i32
      scf.yield %28 : i32
    } else {
      scf.yield %arg1 : i32
    }
    %8 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
    %9 = llvm.load %8 : !llvm.ptr<i32>
    %10 = arith.cmpi slt, %3, %9 : i32
    %11 = scf.if %10 -> (i32) {
      %13 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %14 = llvm.load %13 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %15 = arith.index_cast %3 : i32 to index
      %16 = arith.index_cast %15 : index to i64
      %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %18 = llvm.load %17 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
      %20 = llvm.load %19 : !llvm.ptr<f64>
      %21 = arith.index_cast %7 : i32 to index
      %22 = arith.index_cast %21 : index to i64
      %23 = llvm.getelementptr %14[%22] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %24 = llvm.load %23 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %25 = llvm.getelementptr %24[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
      %26 = llvm.load %25 : !llvm.ptr<f64>
      %27 = arith.cmpf olt, %20, %26 : f64
      %28 = arith.select %27, %3, %7 : i32
      scf.yield %28 : i32
    } else {
      scf.yield %7 : i32
    }
    %12 = arith.cmpi ne, %11, %arg1 : i32
    scf.if %12 {
      %13 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %14 = llvm.load %13 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %15 = arith.index_cast %11 : i32 to index
      %16 = arith.index_cast %15 : index to i64
      %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %18 = llvm.load %17 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %19 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %20 = llvm.load %19 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %21 = arith.index_cast %arg1 : i32 to index
      %22 = arith.index_cast %21 : index to i64
      %23 = llvm.getelementptr %20[%22] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %24 = llvm.load %23 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %25 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
      %26 = llvm.load %25 : !llvm.ptr<memref<?xi32>>
      %27 = llvm.getelementptr %18[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %28 = llvm.load %27 : !llvm.ptr<i32>
      %29 = arith.index_cast %28 : i32 to index
      memref.store %arg1, %26[%29] : memref<?xi32>
      %30 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
      %31 = llvm.load %30 : !llvm.ptr<memref<?xi32>>
      %32 = llvm.getelementptr %24[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %33 = llvm.load %32 : !llvm.ptr<i32>
      %34 = arith.index_cast %33 : i32 to index
      memref.store %11, %31[%34] : memref<?xi32>
      %35 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %36 = llvm.load %35 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %37 = arith.index_cast %11 : i32 to index
      %38 = arith.index_cast %37 : index to i64
      %39 = llvm.getelementptr %36[%38] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %40 = arith.index_cast %arg1 : i32 to index
      %41 = arith.index_cast %40 : index to i64
      %42 = llvm.getelementptr %36[%41] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      func.call @swap_heap_node(%39, %42) : (!llvm.ptr<ptr<struct<(f64, i32)>>>, !llvm.ptr<ptr<struct<(f64, i32)>>>) -> ()
      func.call @heapify(%arg0, %11) : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>, i32) -> ()
    }
    return
  }
  func.func @extract_min(%arg0: !llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<struct<(f64, i32)>> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-1_i32 = arith.constant -1 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
    %1 = llvm.load %0 : !llvm.ptr<i32>
    %2 = arith.cmpi eq, %1, %c0_i32 : i32
    %3 = scf.if %2 -> (!llvm.ptr<struct<(f64, i32)>>) {
      %4 = llvm.mlir.null : !llvm.ptr<struct<(f64, i32)>>
      scf.yield %4 : !llvm.ptr<struct<(f64, i32)>>
    } else {
      %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %5 = llvm.load %4 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %6 = llvm.load %5 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %7 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %8 = llvm.load %7 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %9 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
      %10 = llvm.load %9 : !llvm.ptr<i32>
      %11 = arith.addi %10, %c-1_i32 : i32
      %12 = arith.index_cast %11 : i32 to index
      %13 = arith.index_cast %12 : index to i64
      %14 = llvm.getelementptr %8[%13] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %15 = llvm.load %14 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %16 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %17 = llvm.load %16 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      llvm.store %15, %17 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %18 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
      %19 = llvm.load %18 : !llvm.ptr<memref<?xi32>>
      %20 = llvm.getelementptr %6[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %21 = llvm.load %20 : !llvm.ptr<i32>
      %22 = arith.index_cast %21 : i32 to index
      %23 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
      %24 = llvm.load %23 : !llvm.ptr<i32>
      %25 = arith.addi %24, %c-1_i32 : i32
      memref.store %25, %19[%22] : memref<?xi32>
      %26 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
      %27 = llvm.load %26 : !llvm.ptr<memref<?xi32>>
      %28 = llvm.getelementptr %15[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %29 = llvm.load %28 : !llvm.ptr<i32>
      %30 = arith.index_cast %29 : i32 to index
      memref.store %c0_i32, %27[%30] : memref<?xi32>
      %31 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
      %32 = llvm.load %31 : !llvm.ptr<i32>
      %33 = arith.addi %32, %c-1_i32 : i32
      llvm.store %33, %31 : !llvm.ptr<i32>
      func.call @heapify(%arg0, %c0_i32) : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>, i32) -> ()
      scf.yield %6 : !llvm.ptr<struct<(f64, i32)>>
    }
    return %3 : !llvm.ptr<struct<(f64, i32)>>
  }
  func.func @swap_heap_node(%arg0: !llvm.ptr<ptr<struct<(f64, i32)>>>, %arg1: !llvm.ptr<ptr<struct<(f64, i32)>>>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = llvm.load %arg0 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %1 = llvm.load %arg1 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %1, %arg0 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %0, %arg1 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    return
  }
}

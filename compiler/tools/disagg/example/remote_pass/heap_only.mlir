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
    %0 = call @init_min_heap(%c10_i32) : (i32) -> !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !rmem.rmref<memref<?xi32>>)>>>
    %1 = rmem.materialize %0 : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !rmem.rmref<memref<?xi32>>)>>>) -> !llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>
    scf.for %arg0 = %c0 to %c10 step %c1 {
      %5 = arith.index_cast %arg0 : index to i32
      %6 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %7 = llvm.load %6 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %8 = arith.index_cast %arg0 : index to i64
      %9 = llvm.getelementptr %7[%8] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %10 = func.call @new_heap_node(%5, %cst) : (i32, f64) -> !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
      %11 = rmem.materialize %10 : (!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>
      llvm.store %11, %9 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %12 = llvm.getelementptr %1[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
      %13 = llvm.load %12 : !llvm.ptr<memref<?xi32>>
      memref.store %5, %13[%arg0] : memref<?xi32>
    }
    scf.for %arg0 = %c0 to %c5 step %c1 {
      %5 = arith.muli %arg0, %c-1 : index
      %6 = arith.addi %5, %c4 : index
      %7 = arith.index_cast %6 : index to i32
      func.call @heapify(%0, %7) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !rmem.rmref<memref<?xi32>>)>>>, i32) -> ()
    }
    %2 = llvm.getelementptr %1[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
    %3 = llvm.mlir.addressof @str0 : !llvm.ptr<array<7 x i8>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
    scf.while : () -> () {
      %5 = llvm.load %2 : !llvm.ptr<i32>
      %6 = arith.cmpi ne, %5, %c0_i32 : i32
      scf.condition(%6)
    } do {
      %5 = func.call @extract_min(%0) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !rmem.rmref<memref<?xi32>>)>>>) -> !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
      %6 = rmem.materialize %5 : (!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>
      %7 = llvm.getelementptr %6[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %8 = llvm.load %7 : !llvm.ptr<i32>
      %9 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
      %10 = llvm.load %9 : !llvm.ptr<f64>
      %11 = llvm.call @printf(%4, %8, %10) : (!llvm.ptr<i8>, i32, f64) -> i32
      scf.yield
    }
    return %c0_i32 : i32
  }
  func.func @init_min_heap(%arg0: i32) -> !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !rmem.rmref<memref<?xi32>>)>>> {
    %c4 = arith.constant 4 : index
    %c4_i64 = arith.constant 4 : i64
    %c8_i64 = arith.constant 8 : i64
    %c0_i32 = arith.constant 0 : i32
    %0 = "polygeist.typeSize"() {source = !llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>} : () -> index
    %1 = arith.index_cast %0 : index to i64
    %2 = rmem.malloc_ptr %1 : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
    %3 = rmem.materialize %2 : (!rmem.rmref<!llvm.ptr<i8>>) -> !llvm.ptr<i8>
    %4 = llvm.bitcast %3 : !llvm.ptr<i8> to !llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>
    %5 = builtin.unrealized_conversion_cast %4 : !llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>> to !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !rmem.rmref<memref<?xi32>>)>>>
    %6 = llvm.getelementptr %4[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
    %7 = arith.extsi %arg0 : i32 to i64
    %8 = arith.muli %7, %c4_i64 : i64
    %9 = arith.index_cast %8 : i64 to index
    %10 = arith.divui %9, %c4 : index
    %11 = rmem.alloc_memref(%10) : !rmem.rmref<memref<?xi32>>
    %12 = rmem.materialize %11 : (!rmem.rmref<memref<?xi32>>) -> memref<?xi32>
    llvm.store %12, %6 : !llvm.ptr<memref<?xi32>>
    %13 = llvm.getelementptr %4[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
    llvm.store %c0_i32, %13 : !llvm.ptr<i32>
    %14 = llvm.getelementptr %4[0, 2] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
    llvm.store %arg0, %14 : !llvm.ptr<i32>
    %15 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %16 = arith.extsi %arg0 : i32 to i64
    %17 = arith.muli %16, %c8_i64 : i64
    %18 = rmem.malloc_ptr %17 : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
    %19 = rmem.materialize %18 : (!rmem.rmref<!llvm.ptr<i8>>) -> !llvm.ptr<i8>
    %20 = llvm.bitcast %19 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %20, %15 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    return %5 : !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !rmem.rmref<memref<?xi32>>)>>>
  }
  func.func @new_heap_node(%arg0: i32, %arg1: f64) -> !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>> {
    %c16_i64 = arith.constant 16 : i64
    %0 = rmem.malloc_ptr %c16_i64 : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
    %1 = rmem.materialize %0 : (!rmem.rmref<!llvm.ptr<i8>>) -> !llvm.ptr<i8>
    %2 = llvm.bitcast %1 : !llvm.ptr<i8> to !llvm.ptr<struct<(f64, i32)>>
    %3 = builtin.unrealized_conversion_cast %2 : !llvm.ptr<struct<(f64, i32)>> to !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
    %4 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    llvm.store %arg0, %4 : !llvm.ptr<i32>
    %5 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    llvm.store %arg1, %5 : !llvm.ptr<f64>
    return %3 : !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
  }
  func.func @heapify(%arg0: !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !rmem.rmref<memref<?xi32>>)>>>, %arg1: i32) {
    %0 = rmem.materialize %arg0 : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !rmem.rmref<memref<?xi32>>)>>>) -> !llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>
    %c2_i32 = arith.constant 2 : i32
    %c1_i32 = arith.constant 1 : i32
    %1 = arith.shli %arg1, %c1_i32 : i32
    %2 = arith.addi %1, %c1_i32 : i32
    %3 = arith.shli %arg1, %c1_i32 : i32
    %4 = arith.addi %3, %c2_i32 : i32
    %5 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
    %6 = llvm.load %5 : !llvm.ptr<i32>
    %7 = arith.cmpi slt, %2, %6 : i32
    %8 = scf.if %7 -> (i32) {
      %14 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %15 = llvm.load %14 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %16 = arith.index_cast %2 : i32 to index
      %17 = arith.index_cast %16 : index to i64
      %18 = llvm.getelementptr %15[%17] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %19 = llvm.load %18 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
      %21 = llvm.load %20 : !llvm.ptr<f64>
      %22 = arith.index_cast %arg1 : i32 to index
      %23 = arith.index_cast %22 : index to i64
      %24 = llvm.getelementptr %15[%23] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %25 = llvm.load %24 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %26 = llvm.getelementptr %25[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
      %27 = llvm.load %26 : !llvm.ptr<f64>
      %28 = arith.cmpf olt, %21, %27 : f64
      %29 = arith.select %28, %2, %arg1 : i32
      scf.yield %29 : i32
    } else {
      scf.yield %arg1 : i32
    }
    %9 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
    %10 = llvm.load %9 : !llvm.ptr<i32>
    %11 = arith.cmpi slt, %4, %10 : i32
    %12 = scf.if %11 -> (i32) {
      %14 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %15 = llvm.load %14 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %16 = arith.index_cast %4 : i32 to index
      %17 = arith.index_cast %16 : index to i64
      %18 = llvm.getelementptr %15[%17] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %19 = llvm.load %18 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
      %21 = llvm.load %20 : !llvm.ptr<f64>
      %22 = arith.index_cast %8 : i32 to index
      %23 = arith.index_cast %22 : index to i64
      %24 = llvm.getelementptr %15[%23] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %25 = llvm.load %24 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %26 = llvm.getelementptr %25[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
      %27 = llvm.load %26 : !llvm.ptr<f64>
      %28 = arith.cmpf olt, %21, %27 : f64
      %29 = arith.select %28, %4, %8 : i32
      scf.yield %29 : i32
    } else {
      scf.yield %8 : i32
    }
    %13 = arith.cmpi ne, %12, %arg1 : i32
    scf.if %13 {
      %14 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %15 = llvm.load %14 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %16 = arith.index_cast %12 : i32 to index
      %17 = arith.index_cast %16 : index to i64
      %18 = llvm.getelementptr %15[%17] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %19 = llvm.load %18 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %20 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %21 = llvm.load %20 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %22 = arith.index_cast %arg1 : i32 to index
      %23 = arith.index_cast %22 : index to i64
      %24 = llvm.getelementptr %21[%23] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %25 = llvm.load %24 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %26 = llvm.getelementptr %0[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
      %27 = llvm.load %26 : !llvm.ptr<memref<?xi32>>
      %28 = llvm.getelementptr %19[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %29 = llvm.load %28 : !llvm.ptr<i32>
      %30 = arith.index_cast %29 : i32 to index
      memref.store %arg1, %27[%30] : memref<?xi32>
      %31 = llvm.getelementptr %0[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
      %32 = llvm.load %31 : !llvm.ptr<memref<?xi32>>
      %33 = llvm.getelementptr %25[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %34 = llvm.load %33 : !llvm.ptr<i32>
      %35 = arith.index_cast %34 : i32 to index
      memref.store %12, %32[%35] : memref<?xi32>
      %36 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %37 = llvm.load %36 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %38 = arith.index_cast %12 : i32 to index
      %39 = arith.index_cast %38 : index to i64
      %40 = llvm.getelementptr %37[%39] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %41 = builtin.unrealized_conversion_cast %40 : !llvm.ptr<ptr<struct<(f64, i32)>>> to !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>
      %42 = arith.index_cast %arg1 : i32 to index
      %43 = arith.index_cast %42 : index to i64
      %44 = llvm.getelementptr %37[%43] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %45 = builtin.unrealized_conversion_cast %44 : !llvm.ptr<ptr<struct<(f64, i32)>>> to !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>
      func.call @swap_heap_node(%41, %45) : (!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>) -> ()
      func.call @heapify(%arg0, %12) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !rmem.rmref<memref<?xi32>>)>>>, i32) -> ()
    }
    return
  }
  func.func @extract_min(%arg0: !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !rmem.rmref<memref<?xi32>>)>>>) -> !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>> {
    %0 = rmem.materialize %arg0 : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !rmem.rmref<memref<?xi32>>)>>>) -> !llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>
    %c-1_i32 = arith.constant -1 : i32
    %c0_i32 = arith.constant 0 : i32
    %1 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
    %2 = llvm.load %1 : !llvm.ptr<i32>
    %3 = arith.cmpi eq, %2, %c0_i32 : i32
    %4 = scf.if %3 -> (!llvm.ptr<struct<(f64, i32)>>) {
      %6 = llvm.mlir.null : !llvm.ptr<struct<(f64, i32)>>
      scf.yield %6 : !llvm.ptr<struct<(f64, i32)>>
    } else {
      %6 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %7 = llvm.load %6 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %8 = llvm.load %7 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %9 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %10 = llvm.load %9 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %11 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
      %12 = llvm.load %11 : !llvm.ptr<i32>
      %13 = arith.addi %12, %c-1_i32 : i32
      %14 = arith.index_cast %13 : i32 to index
      %15 = arith.index_cast %14 : index to i64
      %16 = llvm.getelementptr %10[%15] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %17 = llvm.load %16 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %18 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %19 = llvm.load %18 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      llvm.store %17, %19 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %20 = llvm.getelementptr %0[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
      %21 = llvm.load %20 : !llvm.ptr<memref<?xi32>>
      %22 = llvm.getelementptr %8[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %23 = llvm.load %22 : !llvm.ptr<i32>
      %24 = arith.index_cast %23 : i32 to index
      %25 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
      %26 = llvm.load %25 : !llvm.ptr<i32>
      %27 = arith.addi %26, %c-1_i32 : i32
      memref.store %27, %21[%24] : memref<?xi32>
      %28 = llvm.getelementptr %0[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
      %29 = llvm.load %28 : !llvm.ptr<memref<?xi32>>
      %30 = llvm.getelementptr %17[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %31 = llvm.load %30 : !llvm.ptr<i32>
      %32 = arith.index_cast %31 : i32 to index
      memref.store %c0_i32, %29[%32] : memref<?xi32>
      %33 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
      %34 = llvm.load %33 : !llvm.ptr<i32>
      %35 = arith.addi %34, %c-1_i32 : i32
      llvm.store %35, %33 : !llvm.ptr<i32>
      func.call @heapify(%arg0, %c0_i32) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !rmem.rmref<memref<?xi32>>)>>>, i32) -> ()
      scf.yield %8 : !llvm.ptr<struct<(f64, i32)>>
    }
    %5 = builtin.unrealized_conversion_cast %4 : !llvm.ptr<struct<(f64, i32)>> to !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
    return %5 : !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
  }
  func.func @swap_heap_node(%arg0: !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, %arg1: !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>) {
    %0 = rmem.materialize %arg1 : (!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %1 = rmem.materialize %arg0 : (!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %3 = llvm.load %0 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %3, %1 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %2, %0 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    return
  }
}


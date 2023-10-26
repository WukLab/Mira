#map = affine_map<() -> (0)>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  func.func private @atoi(memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  llvm.mlir.global internal constant @str0("%d = %d * %d\0A\00") {addr_space = 0 : i32}
  rmem.memref.global @as : {initial_value, type = memref<1x!rmem.rmref<1, memref<?x2xi32>>>} () -> ()
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c8_i64 = arith.constant 8 : i64
    %c8 = arith.constant 8 : index
    %c0_i32 = arith.constant 0 : i32
    %0 = affine.load %arg1[1] : memref<?xmemref<?xi8>>
    %1 = call @atoi(%0) : (memref<?xi8>) -> i32
    %2 = rmem.memref.get_global {name = @as} : () -> memref<1x!rmem.rmref<1, memref<?x2xi32>>>
    %3 = arith.extsi %1 : i32 to i64
    %4 = arith.muli %3, %c8_i64 : i64
    %5 = arith.index_cast %4 : i64 to index
    %6 = arith.divui %5, %c8 : index
    %7 = rmem.alloc_memref(2, %6) : <1, memref<?x2xi32>>
    rmem.affine.store %7 -> %2 {map = #map} : !rmem.rmref<1, memref<?x2xi32>>, memref<1x!rmem.rmref<1, memref<?x2xi32>>>
    %8 = arith.index_cast %1 : i32 to index
    scf.for %arg2 = %c0 to %8 step %c1 {
      %10 = arith.index_cast %arg2 : index to i32
      %11 = rmem.memref.get_global {name = @as} : () -> memref<1x!rmem.rmref<1, memref<?x2xi32>>>
      %12 = rmem.affine.load %11 {map = #map} : (memref<1x!rmem.rmref<1, memref<?x2xi32>>>) -> !rmem.rmref<1, memref<?x2xi32>>
      rmem.memref.store %10 -> %12[%arg2, %c0] : (i32, !rmem.rmref<1, memref<?x2xi32>>, index, index) -> ()
      %13 = rmem.memref.get_global {name = @as} : () -> memref<1x!rmem.rmref<1, memref<?x2xi32>>>
      %14 = rmem.affine.load %13 {map = #map} : (memref<1x!rmem.rmref<1, memref<?x2xi32>>>) -> !rmem.rmref<1, memref<?x2xi32>>
      %15 = arith.muli %10, %10 : i32
      rmem.memref.store %15 -> %14[%arg2, %c1] : (i32, !rmem.rmref<1, memref<?x2xi32>>, index, index) -> ()
    }
    %9 = arith.index_cast %1 : i32 to index
    scf.for %arg2 = %c0 to %9 step %c1 {
      %10 = llvm.mlir.addressof @str0 : !llvm.ptr<array<14 x i8>>
      %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
      %12 = rmem.memref.get_global {name = @as} : () -> memref<1x!rmem.rmref<1, memref<?x2xi32>>>
      %13 = rmem.affine.load %12 {map = #map} : (memref<1x!rmem.rmref<1, memref<?x2xi32>>>) -> !rmem.rmref<1, memref<?x2xi32>>
      %14 = rmem.memref.load %13[%arg2, %c1] : (!rmem.rmref<1, memref<?x2xi32>>, index, index) -> i32
      %15 = rmem.memref.load %13[%arg2, %c0] : (!rmem.rmref<1, memref<?x2xi32>>, index, index) -> i32
      %16 = llvm.call @printf(%11, %14, %15, %15) : (!llvm.ptr<i8>, i32, i32, i32) -> i32
    }
    return %c0_i32 : i32
  }
}
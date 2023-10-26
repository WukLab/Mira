module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  func.func private @atoi(memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  llvm.mlir.global internal constant @str0("%d = %d * %d\0A\00") {addr_space = 0 : i32}
  memref.global @as : memref<1xmemref<?x2xi32>> = uninitialized {remote_global_type = memref<1x!rmem.rmref<1, memref<?x2xi32>>>, remote_target = 1 : i64}
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c8_i64 = arith.constant 8 : i64
    %c8 = arith.constant 8 : index
    %c0_i32 = arith.constant 0 : i32
    %0 = affine.load %arg1[1] : memref<?xmemref<?xi8>>
    %1 = call @atoi(%0) : (memref<?xi8>) -> i32
    %2 = memref.get_global @as : memref<1xmemref<?x2xi32>> {rel_types = [memref<1x!rmem.rmref<1, memref<?x2xi32>>>], remote_target = 1 : i64}
    %3 = arith.extsi %1 : i32 to i64
    %4 = arith.muli %3, %c8_i64 : i64
    %5 = arith.index_cast %4 : i64 to index
    %6 = arith.divui %5, %c8 : index
    %alloc = memref.alloc(%6) {rel_types = [!rmem.rmref<1, memref<?x2xi32>>], remote_target = 1 : i64} : memref<?x2xi32>
    affine.store %alloc, %2[0] {remote_target = 1 : i64} : memref<1xmemref<?x2xi32>>
    %7 = arith.index_cast %1 : i32 to index
    scf.for %arg2 = %c0 to %7 step %c1 {
      %9 = arith.index_cast %arg2 : index to i32
      %10 = memref.get_global @as : memref<1xmemref<?x2xi32>> {rel_types = [memref<1x!rmem.rmref<1, memref<?x2xi32>>>], remote_target = 1 : i64}
      %11 = affine.load %10[0] {rel_types = [!rmem.rmref<1, memref<?x2xi32>>], remote_target = 1 : i64} : memref<1xmemref<?x2xi32>>
      memref.store %9, %11[%arg2, %c0] {remote_target = 1 : i64} : memref<?x2xi32>
      %12 = memref.get_global @as : memref<1xmemref<?x2xi32>> {rel_types = [memref<1x!rmem.rmref<1, memref<?x2xi32>>>], remote_target = 1 : i64}
      %13 = affine.load %12[0] {rel_types = [!rmem.rmref<1, memref<?x2xi32>>], remote_target = 1 : i64} : memref<1xmemref<?x2xi32>>
      %14 = arith.muli %9, %9 : i32
      memref.store %14, %13[%arg2, %c1] {remote_target = 1 : i64} : memref<?x2xi32>
    }
    %8 = arith.index_cast %1 : i32 to index
    scf.for %arg2 = %c0 to %8 step %c1 {
      %9 = llvm.mlir.addressof @str0 : !llvm.ptr<array<14 x i8>>
      %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
      %11 = memref.get_global @as : memref<1xmemref<?x2xi32>> {rel_types = [memref<1x!rmem.rmref<1, memref<?x2xi32>>>], remote_target = 1 : i64}
      %12 = affine.load %11[0] {rel_types = [!rmem.rmref<1, memref<?x2xi32>>], remote_target = 1 : i64} : memref<1xmemref<?x2xi32>>
      %13 = memref.load %12[%arg2, %c1] {rel_types = [i32], remote_target = 1 : i64} : memref<?x2xi32>
      %14 = memref.load %12[%arg2, %c0] {rel_types = [i32], remote_target = 1 : i64} : memref<?x2xi32>
      %15 = llvm.call @printf(%10, %13, %14, %14) : (!llvm.ptr<i8>, i32, i32, i32) -> i32
    }
    return %c0_i32 : i32
  }
}


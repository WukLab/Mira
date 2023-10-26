module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str1("%lu\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%lu %d\0A\00") {addr_space = 0 : i32}
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  llvm.mlir.global external @dat() {addr_space = 0 : i32} : !llvm.array<1024 x i32> {
    %0 = llvm.mlir.undef : !llvm.array<1024 x i32>
    llvm.return %0 : !llvm.array<1024 x i32>
  }
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1024 = arith.constant 1024 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c127_i64 = arith.constant 127 : i64
    %c512_i64 = arith.constant 512 : i64
    %c4096_i64 = arith.constant 4096 : i64
    %c0_i64 = arith.constant 0 : i64
    %c8_i64 = arith.constant 8 : i64
    %c128_i64 = arith.constant 128 : i64
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.mlir.undef : i64
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    %2 = llvm.mlir.addressof @dat : !llvm.ptr<array<1024 x i32>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<1024 x i32>>) -> !llvm.ptr<i32>
    scf.for %arg2 = %c0 to %c1024 step %c1 {
      %17 = arith.index_cast %arg2 : index to i32
      %18 = arith.index_cast %arg2 : index to i64
      %19 = llvm.getelementptr %3[%18] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %17, %19 : !llvm.ptr<i32>
    }
    llvm.store %c0_i64, %1 : !llvm.ptr<i64>
    %4 = llvm.mlir.addressof @dat : !llvm.ptr<array<1024 x i32>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<array<1024 x i32>>) -> !llvm.ptr<i32>
    %6 = llvm.ptrtoint %5 : !llvm.ptr<i32> to i64
    %7 = llvm.getelementptr %arg1[1] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %8 = llvm.load %7 : !llvm.ptr<ptr<i8>>
    %9 = llvm.call @atoi(%8) : (!llvm.ptr<i8>) -> i32
    %10 = arith.extsi %9 : i32 to i64
    %11 = arith.addi %10, %c127_i64 : i64
    %12 = arith.divsi %11, %c128_i64 : i64
    %13 = arith.index_cast %12 : i64 to index
    %14 = llvm.mlir.addressof @str0 : !llvm.ptr<array<8 x i8>>
    %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<array<8 x i8>>) -> !llvm.ptr<i8>
    %16 = scf.for %arg2 = %c0 to %13 step %c1 iter_args(%arg3 = %c0_i64) -> (i64) {
      %17 = arith.index_cast %arg2 : index to i64
      %18 = arith.addi %17, %c8_i64 : i64
      %19 = scf.while (%arg4 = %arg3) : (i64) -> i64 {
        %30 = arith.cmpi slt, %arg4, %18 : i64
        %31 = arith.cmpi slt, %arg4, %12 : i64
        %32 = arith.andi %30, %31 : i1
        scf.condition(%32) %arg4 : i64
      } do {
      ^bb0(%arg4: i64):
        %30 = arith.remsi %arg4, %c8_i64 : i64
        %31 = arith.muli %30, %c512_i64 : i64
        %32 = arith.addi %6, %31 : i64
        %33 = arith.muli %arg4, %c512_i64 : i64
        %34 = arith.addi %33, %c4096_i64 : i64
        func.call @rdma(%32, %c512_i64, %34, %arg4, %c1_i32) : (i64, i64, i64, i64, i32) -> ()
        %35 = arith.addi %arg4, %c1_i64 : i64
        scf.yield %35 : i64
      }
      %20 = arith.addi %17, %c1_i64 : i64
      %21 = arith.muli %20, %c128_i64 : i64
      %22 = arith.cmpi sgt, %10, %21 : i64
      %23 = scf.if %22 -> (i64) {
        scf.yield %c128_i64 : i64
      } else {
        %30 = arith.muli %17, %c128_i64 : i64
        %31 = arith.subi %10, %30 : i64
        scf.yield %31 : i64
      }
      %24 = arith.remsi %17, %c8_i64 : i64
      %25 = arith.muli %24, %c512_i64 : i64
      %26 = arith.addi %6, %25 : i64
      %27 = llvm.inttoptr %26 : i64 to !llvm.ptr<i32>
      func.call @rring_sync(%1, %17) : (!llvm.ptr<i64>, i64) -> ()
      %28 = arith.index_cast %23 : i64 to index
      %29 = arith.muli %17, %c128_i64 : i64
      scf.for %arg4 = %c0 to %28 step %c1 {
        %30 = arith.index_cast %arg4 : index to i64
        %31 = arith.addi %29, %30 : i64
        %32 = llvm.getelementptr %27[%30] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
        %33 = llvm.load %32 : !llvm.ptr<i32>
        %34 = llvm.call @printf(%15, %31, %33) : (!llvm.ptr<i8>, i64, i32) -> i32
      }
      scf.yield %19 : i64
    }
    return %c0_i32 : i32
  }
  func.func @rdma(%arg0: i64, %arg1: i64, %arg2: i64, %arg3: i64, %arg4: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = llvm.mlir.addressof @str1 : !llvm.ptr<array<5 x i8>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<array<5 x i8>>) -> !llvm.ptr<i8>
    %2 = llvm.call @printf(%1, %arg0) : (!llvm.ptr<i8>, i64) -> i32
    return
  }
  func.func @rring_sync(%arg0: !llvm.ptr<i64>, %arg1: i64) attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = llvm.mlir.addressof @str1 : !llvm.ptr<array<5 x i8>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<array<5 x i8>>) -> !llvm.ptr<i8>
    %2 = llvm.load %arg0 : !llvm.ptr<i64>
    %3 = llvm.call @printf(%1, %2) : (!llvm.ptr<i8>, i64) -> i32
    return
  }
}

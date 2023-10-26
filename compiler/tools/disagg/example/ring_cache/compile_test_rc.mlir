module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @rring_sync(!llvm.ptr<i64>, i64)
  llvm.func @rdma(i64, i64, i64, i64, i32)
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%d %d\0A\00") {addr_space = 0 : i32}
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c4096_i64 = arith.constant 4096 : i64
    %c0_i32 = arith.constant 0 : i32
    %0 = rmem.malloc_ptr 2, %c4096_i64 : (i64) -> !rmem.rmref<1, !llvm.ptr<i8>>
    %1 = rmem.bitcast %0 : (!rmem.rmref<1, !llvm.ptr<i8>>) -> !rmem.rmref<1, !llvm.ptr<i32>>
    %2 = llvm.getelementptr %arg1[1] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %4 = llvm.call @atoi(%3) : (!llvm.ptr<i8>) -> i32
    %5 = llvm.getelementptr %arg1[2] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i8>>
    %7 = llvm.call @atoi(%6) : (!llvm.ptr<i8>) -> i32
    %8 = arith.index_cast %4 : i32 to index
    %9 = arith.index_cast %7 : i32 to index
    %10 = llvm.mlir.addressof @str0 : !llvm.ptr<array<7 x i8>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
    %12 = arith.subi %8, %9 : index
    %13 = arith.index_cast %12 : index to i64
    %c127_i64 = arith.constant 127 : i64
    %14 = arith.addi %13, %c127_i64 : i64
    %c128_i64 = arith.constant 128 : i64
    %15 = arith.divsi %14, %c128_i64 : i64
    %16 = arith.index_cast %9 : index to i64
    %17 = rmem.llvm.getelementptr %1[%16 []] : (!rmem.rmref<1, !llvm.ptr<i32>>, i64) -> !rmem.rmref<1, !llvm.ptr<i32>>
    %18 = rmem.rmemtoint %17 : (!rmem.rmref<1, !llvm.ptr<i32>>) -> i64
    %19 = arith.addi %18, %c4096_i64 : i64
    %c0_i64 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
    %20 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %20 : !llvm.ptr<i64>
    %21 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %21 : !llvm.ptr<i64>
    %c0 = arith.constant 0 : index
    %22 = arith.index_cast %15 : i64 to index
    %c1 = arith.constant 1 : index
    %23 = scf.for %arg2 = %c0 to %22 step %c1 iter_args(%arg3 = %c0_i64) -> (i64) {
      %24 = arith.index_cast %arg2 : index to i64
      %c8_i64 = arith.constant 8 : i64
      %25 = arith.addi %24, %c8_i64 : i64
      %26 = scf.while (%arg4 = %arg3) : (i64) -> i64 {
        %37 = arith.cmpi slt, %arg4, %25 : i64
        %38 = arith.cmpi slt, %arg4, %15 : i64
        %39 = arith.andi %37, %38 : i1
        scf.condition(%39) %arg4 : i64
      } do {
      ^bb0(%arg4: i64):
        %37 = arith.remsi %arg4, %c128_i64 : i64
        %c512_i64_0 = arith.constant 512 : i64
        %38 = arith.muli %37, %c512_i64_0 : i64
        %39 = arith.addi %c0_i64, %38 : i64
        %40 = arith.muli %arg4, %c512_i64_0 : i64
        %41 = arith.addi %19, %40 : i64
        %c4_i32 = arith.constant 4 : i32
        llvm.call @rdma(%39, %c512_i64_0, %41, %arg4, %c4_i32) : (i64, i64, i64, i64, i32) -> ()
        %42 = arith.addi %arg4, %c1_i64 : i64
        scf.yield %42 : i64
      }
      %27 = arith.remsi %24, %c128_i64 : i64
      %c512_i64 = arith.constant 512 : i64
      %28 = arith.muli %27, %c512_i64 : i64
      %29 = arith.addi %c0_i64, %28 : i64
      %30 = llvm.inttoptr %29 : i64 to !llvm.ptr<i32>
      llvm.call @rring_sync(%20, %24) : (!llvm.ptr<i64>, i64) -> ()
      %31 = arith.addi %c1_i64, %24 : i64
      %32 = arith.muli %31, %c128_i64 : i64
      %33 = arith.cmpi sgt, %13, %32 : i64
      %34 = scf.if %33 -> (i64) {
        scf.yield %c128_i64 : i64
      } else {
        %37 = arith.muli %24, %c128_i64 : i64
        %38 = arith.subi %13, %37 : i64
        scf.yield %38 : i64
      }
      %35 = arith.muli %24, %c128_i64 : i64
      %36 = arith.index_cast %34 : i64 to index
      scf.for %arg4 = %c0 to %36 step %c1 {
        %37 = arith.index_cast %35 : i64 to index
        %38 = arith.addi %arg4, %37 : index
        %39 = arith.index_cast %arg4 : index to i64
        %40 = llvm.getelementptr %30[%39] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
        %41 = rmem.from_addr %40 : (!llvm.ptr<i32>) -> !rmem.rmref<0, !llvm.ptr<i32>>
        %42 = arith.index_cast %38 : index to i32
        %43 = arith.index_cast %38 : index to i64
        %44 = rmem.llvm.load %41 : (!rmem.rmref<0, !llvm.ptr<i32>>) -> i32
        %45 = llvm.call @printf(%11, %42, %44) : (!llvm.ptr<i8>, i32, i32) -> i32
      }
      scf.yield %arg3 : i64
    }
    return %c0_i32 : i32
  }
}


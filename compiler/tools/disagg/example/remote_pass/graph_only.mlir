module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str4("Too many neighbours for node %d\0A\00") {addr_space = 0 : i32}
  llvm.func @fclose(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
  llvm.mlir.global internal constant @str3("%d %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("%d %d %d %lf\0A\00") {addr_space = 0 : i32}
  llvm.func @__isoc99_fscanf(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str1("Couldn't open file %s\0A\00") {addr_space = 0 : i32}
  llvm.func @fopen(!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.mlir.global internal constant @str0("r\00") {addr_space = 0 : i32}
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  func.func @main(%arg0: i32, %arg1: !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<i8>>>>) -> i32 {
    %0 = rmem.materialize %arg1 : (!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<i8>>>>) -> !llvm.ptr<ptr<i8>>
    %c0_i32 = arith.constant 0 : i32
    %1 = memref.alloca() : memref<1xi32>
    affine.store %c0_i32, %1[0] : memref<1xi32>
    %2 = llvm.getelementptr %0[2] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %4 = llvm.call @atoi(%3) : (!llvm.ptr<i8>) -> i32
    %5 = llvm.getelementptr %0[3] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i8>>
    %7 = llvm.call @atoi(%6) : (!llvm.ptr<i8>) -> i32
    %8 = arith.trunci %4 : i32 to i8
    %9 = arith.trunci %7 : i32 to i8
    %10 = llvm.getelementptr %0[1] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<i8>>
    %12 = rmem.virtualize(%11) : (!llvm.ptr<i8>) -> !rmem.rmref<!llvm.ptr<i8>>
    %13 = memref.cast %1 : memref<1xi32> to memref<?xi32>
    %14 = rmem.virtualize(%13) : (memref<?xi32>) -> !rmem.rmref<memref<?xi32>>
    %15 = call @init_graph(%8, %9, %12, %14) : (i8, i8, !rmem.rmref<!llvm.ptr<i8>>, !rmem.rmref<memref<?xi32>>) -> !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!llvm.array<16 x !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>, i32)>>>, i32)>>>
    return %c0_i32 : i32
  }
  func.func @init_graph(%arg0: i8, %arg1: i8, %arg2: !rmem.rmref<!llvm.ptr<i8>>, %arg3: !rmem.rmref<memref<?xi32>>) -> !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!llvm.array<16 x !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>, i32)>>>, i32)>>> {
    %0 = rmem.materialize %arg3 : (!rmem.rmref<memref<?xi32>>) -> memref<?xi32>
    %1 = rmem.materialize %arg2 : (!rmem.rmref<!llvm.ptr<i8>>) -> !llvm.ptr<i8>
    %c2000000 = arith.constant 2000000 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %true = arith.constant true
    %c16_i64 = arith.constant 16 : i64
    %c272000000_i64 = arith.constant 272000000 : i64
    %cst = arith.constant 1.000000e+02 : f64
    %c0_i8 = arith.constant 0 : i8
    %c-1_i32 = arith.constant -1 : i32
    %c1_i32 = arith.constant 1 : i32
    %c2000000_i32 = arith.constant 2000000 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %2 = llvm.alloca %c1_i64 x f64 : (i64) -> !llvm.ptr<f64>
    %3 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    %4 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    %5 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    %6 = llvm.mlir.undef : f64
    %7 = rmem.malloc_ptr %c16_i64 : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
    %8 = rmem.materialize %7 : (!rmem.rmref<!llvm.ptr<i8>>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>
    %10 = rmem.virtualize(%9) : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!llvm.array<16 x !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>, i32)>>>, i32)>>>
    %11 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %12 = rmem.malloc_ptr %c272000000_i64 : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
    %13 = rmem.materialize %12 : (!rmem.rmref<!llvm.ptr<i8>>) -> !llvm.ptr<i8>
    %14 = llvm.bitcast %13 : !llvm.ptr<i8> to !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
    llvm.store %14, %11 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    scf.for %arg4 = %c0 to %c2000000 step %c1 {
      %26 = llvm.load %11 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
      %27 = arith.index_cast %arg4 : index to i64
      %28 = llvm.getelementptr %26[%27] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
      %29 = llvm.getelementptr %28[0, 1] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<i32>
      llvm.store %c0_i32, %29 : !llvm.ptr<i32>
    }
    %15 = llvm.mlir.addressof @str0 : !llvm.ptr<array<2 x i8>>
    %16 = llvm.getelementptr %15[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.call @fopen(%1, %16) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %18 = llvm.mlir.null : !llvm.ptr<i8>
    %19 = llvm.bitcast %18 : !llvm.ptr<i8> to !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %20 = llvm.icmp "eq" %17, %19 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    scf.if %20 {
      %26 = llvm.mlir.addressof @str1 : !llvm.ptr<array<23 x i8>>
      %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr<array<23 x i8>>) -> !llvm.ptr<i8>
      %28 = llvm.call @printf(%27, %1) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %21 = arith.cmpi ne, %arg1, %c0_i8 : i8
    %22:4 = scf.while (%arg4 = %6, %arg5 = %c0_i32, %arg6 = %c-1_i32, %arg7 = %c0_i32, %arg8 = %true) : (f64, i32, i32, i32, i1) -> (i32, f64, i32, i32) {
      scf.condition(%arg8) %arg6, %arg4, %arg5, %arg7 : i32, f64, i32, i32
    } do {
    ^bb0(%arg4: i32, %arg5: f64, %arg6: i32, %arg7: i32):
      %26:6 = scf.if %21 -> (f64, i32, i32, i32, i32, i1) {
        %33 = llvm.mlir.addressof @str3 : !llvm.ptr<array<7 x i8>>
        %34 = llvm.getelementptr %33[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
        %35 = llvm.call @__isoc99_fscanf(%17, %34, %5, %4) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> i32
        %36 = llvm.load %5 : !llvm.ptr<i32>
        %37 = llvm.load %4 : !llvm.ptr<i32>
        %38 = arith.cmpi eq, %35, %c-1_i32 : i32
        %39 = arith.cmpi ne, %35, %c-1_i32 : i32
        %40:3 = scf.if %38 -> (i32, f64, i32) {
          scf.yield %arg7, %arg5, %arg6 : i32, f64, i32
        } else {
          %41 = arith.addi %arg7, %c1_i32 : i32
          %42 = arith.cmpi eq, %36, %c-1_i32 : i32
          %43 = scf.if %42 -> (i32) {
            %47 = arith.addi %arg6, %c1_i32 : i32
            scf.yield %47 : i32
          } else {
            scf.yield %c0_i32 : i32
          }
          %44 = arith.addi %43, %c1_i32 : i32
          %45 = arith.sitofp %44 : i32 to f64
          %46 = arith.divf %45, %cst : f64
          scf.yield %41, %46, %44 : i32, f64, i32
        }
        scf.yield %40#1, %40#2, %37, %36, %40#0, %39 : f64, i32, i32, i32, i32, i1
      } else {
        %33 = llvm.mlir.addressof @str2 : !llvm.ptr<array<14 x i8>>
        %34 = llvm.getelementptr %33[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
        %35 = llvm.call @__isoc99_fscanf(%17, %34, %5, %4, %3, %2) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<f64>) -> i32
        %36 = llvm.load %5 : !llvm.ptr<i32>
        %37 = llvm.load %4 : !llvm.ptr<i32>
        %38 = llvm.load %3 : !llvm.ptr<i32>
        %39 = llvm.load %2 : !llvm.ptr<f64>
        %40 = arith.cmpi ne, %35, %c-1_i32 : i32
        scf.yield %39, %arg6, %38, %37, %36, %40 : f64, i32, i32, i32, i32, i1
      }
      %27 = arith.cmpi slt, %26#3, %c2000000_i32 : i32
      %28 = arith.andi %26#5, %27 : i1
      %29 = arith.cmpi slt, %26#2, %c2000000_i32 : i32
      %30 = arith.andi %28, %29 : i1
      %31 = arith.andi %30, %26#5 : i1
      %32 = scf.if %31 -> (i32) {
        func.call @add_edge(%10, %26#3, %26#2, %26#0) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!llvm.array<16 x !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>, i32)>>>, i32)>>>, i32, i32, f64) -> ()
        %33 = arith.cmpi sgt, %arg4, %26#3 : i32
        %34 = arith.select %33, %arg4, %26#3 : i32
        %35 = arith.cmpi eq, %arg0, %c0_i8 : i8
        %36 = scf.if %35 -> (i32) {
          func.call @add_edge(%10, %26#2, %26#3, %26#0) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!llvm.array<16 x !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>, i32)>>>, i32)>>>, i32, i32, f64) -> ()
          %37 = arith.cmpi sgt, %34, %26#2 : i32
          %38 = arith.select %37, %34, %26#2 : i32
          scf.yield %38 : i32
        } else {
          scf.yield %34 : i32
        }
        scf.yield %36 : i32
      } else {
        scf.yield %arg4 : i32
      }
      scf.yield %26#0, %26#1, %32, %26#4, %26#5 : f64, i32, i32, i32, i1
    }
    %23 = llvm.call @fclose(%17) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
    %24 = llvm.getelementptr %9[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %25 = arith.addi %22#0, %c1_i32 : i32
    llvm.store %25, %24 : !llvm.ptr<i32>
    affine.store %25, %0[0] : memref<?xi32>
    return %10 : !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!llvm.array<16 x !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>, i32)>>>, i32)>>>
  }
  func.func private @exit(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @add_edge(%arg0: !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!llvm.array<16 x !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>, i32)>>>, i32)>>>, %arg1: i32, %arg2: i32, %arg3: f64) {
    %0 = rmem.materialize %arg0 : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!llvm.array<16 x !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>, i32)>>>, i32)>>>) -> !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>
    %c1_i32 = arith.constant 1 : i32
    %c16_i32 = arith.constant 16 : i32
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %3 = arith.index_cast %arg1 : i32 to index
    %4 = arith.index_cast %3 : index to i64
    %5 = llvm.getelementptr %2[%4] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<i32>
    %7 = llvm.load %6 : !llvm.ptr<i32>
    %8 = arith.cmpi sge, %7, %c16_i32 : i32
    scf.if %8 {
      %21 = llvm.mlir.addressof @str4 : !llvm.ptr<array<33 x i8>>
      %22 = llvm.getelementptr %21[0, 0] : (!llvm.ptr<array<33 x i8>>) -> !llvm.ptr<i8>
      %23 = llvm.call @printf(%22, %arg1) : (!llvm.ptr<i8>, i32) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %9 = llvm.load %1 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %10 = llvm.getelementptr %9[%4] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<array<16 x ptr<struct<(f64, i32)>>>>
    %12 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<array<16 x ptr<struct<(f64, i32)>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %13 = llvm.getelementptr %10[0, 1] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<i32>
    %14 = llvm.load %13 : !llvm.ptr<i32>
    %15 = arith.addi %14, %c1_i32 : i32
    llvm.store %15, %13 : !llvm.ptr<i32>
    %16 = arith.index_cast %14 : i32 to index
    %17 = arith.index_cast %16 : index to i64
    %18 = llvm.getelementptr %12[%17] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %19 = call @new_graph_node(%arg2, %arg3) : (i32, f64) -> !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
    %20 = rmem.materialize %19 : (!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>
    llvm.store %20, %18 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    return
  }
  func.func @new_graph_node(%arg0: i32, %arg1: f64) -> !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>> {
    %c16_i64 = arith.constant 16 : i64
    %0 = rmem.malloc_ptr %c16_i64 : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
    %1 = rmem.materialize %0 : (!rmem.rmref<!llvm.ptr<i8>>) -> !llvm.ptr<i8>
    %2 = llvm.bitcast %1 : !llvm.ptr<i8> to !llvm.ptr<struct<(f64, i32)>>
    %3 = rmem.virtualize(%2) : (!llvm.ptr<struct<(f64, i32)>>) -> !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
    %4 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    llvm.store %arg0, %4 : !llvm.ptr<i32>
    %5 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    llvm.store %arg1, %5 : !llvm.ptr<f64>
    return %3 : !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
  }
}


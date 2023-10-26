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
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %0 = memref.alloca() : memref<1xi32>
    affine.store %c0_i32, %0[0] : memref<1xi32>
    %1 = llvm.getelementptr %arg1[2] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<i8>>
    %3 = llvm.call @atoi(%2) : (!llvm.ptr<i8>) -> i32
    %4 = llvm.getelementptr %arg1[3] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.call @atoi(%5) : (!llvm.ptr<i8>) -> i32
    %7 = arith.trunci %3 : i32 to i8
    %8 = arith.trunci %6 : i32 to i8
    %9 = llvm.getelementptr %arg1[1] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<i8>>
    %11 = memref.cast %0 : memref<1xi32> to memref<?xi32>
    %12 = call @init_graph(%7, %8, %10, %11) : (i8, i8, !llvm.ptr<i8>, memref<?xi32>) -> !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>
    return %c0_i32 : i32
  }
  func.func @init_graph(%arg0: i8, %arg1: i8, %arg2: !llvm.ptr<i8>, %arg3: memref<?xi32>) -> !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>> attributes {llvm.linkage = #llvm.linkage<external>} {
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
    %0 = llvm.alloca %c1_i64 x f64 : (i64) -> !llvm.ptr<f64>
    %1 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    %2 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    %3 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    %4 = llvm.mlir.undef : f64
    %5 = llvm.call @malloc(%c16_i64) : (i64) -> !llvm.ptr<i8>
    %6 = llvm.bitcast %5 : !llvm.ptr<i8> to !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %8 = llvm.call @malloc(%c272000000_i64) : (i64) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
    llvm.store %9, %7 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    scf.for %arg4 = %c0 to %c2000000 step %c1 {
      %21 = llvm.load %7 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
      %22 = arith.index_cast %arg4 : index to i64
      %23 = llvm.getelementptr %21[%22] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
      %24 = llvm.getelementptr %23[0, 1] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<i32>
      llvm.store %c0_i32, %24 : !llvm.ptr<i32>
    }
    %10 = llvm.mlir.addressof @str0 : !llvm.ptr<array<2 x i8>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %12 = llvm.call @fopen(%arg2, %11) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %13 = llvm.mlir.null : !llvm.ptr<i8>
    %14 = llvm.bitcast %13 : !llvm.ptr<i8> to !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %15 = llvm.icmp "eq" %12, %14 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    scf.if %15 {
      %21 = llvm.mlir.addressof @str1 : !llvm.ptr<array<23 x i8>>
      %22 = llvm.getelementptr %21[0, 0] : (!llvm.ptr<array<23 x i8>>) -> !llvm.ptr<i8>
      %23 = llvm.call @printf(%22, %arg2) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %16 = arith.cmpi ne, %arg1, %c0_i8 : i8
    %17:4 = scf.while (%arg4 = %4, %arg5 = %c0_i32, %arg6 = %c-1_i32, %arg7 = %c0_i32, %arg8 = %true) : (f64, i32, i32, i32, i1) -> (i32, f64, i32, i32) {
      scf.condition(%arg8) %arg6, %arg4, %arg5, %arg7 : i32, f64, i32, i32
    } do {
    ^bb0(%arg4: i32, %arg5: f64, %arg6: i32, %arg7: i32):
      %21:6 = scf.if %16 -> (f64, i32, i32, i32, i32, i1) {
        %28 = llvm.mlir.addressof @str3 : !llvm.ptr<array<7 x i8>>
        %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
        %30 = llvm.call @__isoc99_fscanf(%12, %29, %3, %2) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> i32
        %31 = llvm.load %3 : !llvm.ptr<i32>
        %32 = llvm.load %2 : !llvm.ptr<i32>
        %33 = arith.cmpi eq, %30, %c-1_i32 : i32
        %34 = arith.cmpi ne, %30, %c-1_i32 : i32
        %35:3 = scf.if %33 -> (i32, f64, i32) {
          scf.yield %arg7, %arg5, %arg6 : i32, f64, i32
        } else {
          %36 = arith.addi %arg7, %c1_i32 : i32
          %37 = arith.cmpi eq, %31, %c-1_i32 : i32
          %38 = scf.if %37 -> (i32) {
            %42 = arith.addi %arg6, %c1_i32 : i32
            scf.yield %42 : i32
          } else {
            scf.yield %c0_i32 : i32
          }
          %39 = arith.addi %38, %c1_i32 : i32
          %40 = arith.sitofp %39 : i32 to f64
          %41 = arith.divf %40, %cst : f64
          scf.yield %36, %41, %39 : i32, f64, i32
        }
        scf.yield %35#1, %35#2, %32, %31, %35#0, %34 : f64, i32, i32, i32, i32, i1
      } else {
        %28 = llvm.mlir.addressof @str2 : !llvm.ptr<array<14 x i8>>
        %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
        %30 = llvm.call @__isoc99_fscanf(%12, %29, %3, %2, %1, %0) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<f64>) -> i32
        %31 = llvm.load %3 : !llvm.ptr<i32>
        %32 = llvm.load %2 : !llvm.ptr<i32>
        %33 = llvm.load %1 : !llvm.ptr<i32>
        %34 = llvm.load %0 : !llvm.ptr<f64>
        %35 = arith.cmpi ne, %30, %c-1_i32 : i32
        scf.yield %34, %arg6, %33, %32, %31, %35 : f64, i32, i32, i32, i32, i1
      }
      %22 = arith.cmpi slt, %21#3, %c2000000_i32 : i32
      %23 = arith.andi %21#5, %22 : i1
      %24 = arith.cmpi slt, %21#2, %c2000000_i32 : i32
      %25 = arith.andi %23, %24 : i1
      %26 = arith.andi %25, %21#5 : i1
      %27 = scf.if %26 -> (i32) {
        func.call @add_edge(%6, %21#3, %21#2, %21#0) : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, i32, i32, f64) -> ()
        %28 = arith.cmpi sgt, %arg4, %21#3 : i32
        %29 = arith.select %28, %arg4, %21#3 : i32
        %30 = arith.cmpi eq, %arg0, %c0_i8 : i8
        %31 = scf.if %30 -> (i32) {
          func.call @add_edge(%6, %21#2, %21#3, %21#0) : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, i32, i32, f64) -> ()
          %32 = arith.cmpi sgt, %29, %21#2 : i32
          %33 = arith.select %32, %29, %21#2 : i32
          scf.yield %33 : i32
        } else {
          scf.yield %29 : i32
        }
        scf.yield %31 : i32
      } else {
        scf.yield %arg4 : i32
      }
      scf.yield %21#0, %21#1, %27, %21#4, %21#5 : f64, i32, i32, i32, i1
    }
    %18 = llvm.call @fclose(%12) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
    %19 = llvm.getelementptr %6[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %20 = arith.addi %17#0, %c1_i32 : i32
    llvm.store %20, %19 : !llvm.ptr<i32>
    affine.store %20, %arg3[0] : memref<?xi32>
    return %6 : !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>
  }
  func.func private @exit(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @add_edge(%arg0: !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, %arg1: i32, %arg2: i32, %arg3: f64) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1_i32 = arith.constant 1 : i32
    %c16_i32 = arith.constant 16 : i32
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %2 = arith.index_cast %arg1 : i32 to index
    %3 = arith.index_cast %2 : index to i64
    %4 = llvm.getelementptr %1[%3] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
    %5 = llvm.getelementptr %4[0, 1] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<i32>
    %6 = llvm.load %5 : !llvm.ptr<i32>
    %7 = arith.cmpi sge, %6, %c16_i32 : i32
    scf.if %7 {
      %19 = llvm.mlir.addressof @str4 : !llvm.ptr<array<33 x i8>>
      %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<array<33 x i8>>) -> !llvm.ptr<i8>
      %21 = llvm.call @printf(%20, %arg1) : (!llvm.ptr<i8>, i32) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %8 = llvm.load %0 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %9 = llvm.getelementptr %8[%3] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<array<16 x ptr<struct<(f64, i32)>>>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<array<16 x ptr<struct<(f64, i32)>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %12 = llvm.getelementptr %9[0, 1] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<i32>
    %13 = llvm.load %12 : !llvm.ptr<i32>
    %14 = arith.addi %13, %c1_i32 : i32
    llvm.store %14, %12 : !llvm.ptr<i32>
    %15 = arith.index_cast %13 : i32 to index
    %16 = arith.index_cast %15 : index to i64
    %17 = llvm.getelementptr %11[%16] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %18 = call @new_graph_node(%arg2, %arg3) : (i32, f64) -> !llvm.ptr<struct<(f64, i32)>>
    llvm.store %18, %17 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    return
  }
  func.func @new_graph_node(%arg0: i32, %arg1: f64) -> !llvm.ptr<struct<(f64, i32)>> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c16_i64 = arith.constant 16 : i64
    %0 = llvm.call @malloc(%c16_i64) : (i64) -> !llvm.ptr<i8>
    %1 = llvm.bitcast %0 : !llvm.ptr<i8> to !llvm.ptr<struct<(f64, i32)>>
    %2 = llvm.getelementptr %1[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    llvm.store %arg0, %2 : !llvm.ptr<i32>
    %3 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    llvm.store %arg1, %3 : !llvm.ptr<f64>
    return %1 : !llvm.ptr<struct<(f64, i32)>>
  }
}

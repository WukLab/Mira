module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str9("Too many neighbours for node %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str8("After heapify\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("After heap init\0A\00") {addr_space = 0 : i32}
  memref.global "private" @MAX_D : memref<1xf64> = dense<1.7976931348623157E+308>
  llvm.mlir.global internal constant @str6("%d %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%d %d %d %lf\0A\00") {addr_space = 0 : i32}
  llvm.func @__isoc99_fscanf(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str4("Couldn't open file %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("r\00") {addr_space = 0 : i32}
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @fclose(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
  llvm.func @fprintf(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str2("%lf\0A\00") {addr_space = 0 : i32}
  llvm.func @fopen(!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.mlir.global internal constant @str1("w\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("solution.txt\00") {addr_space = 0 : i32}
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c8 = arith.constant 8 : index
    %c8_i64 = arith.constant 8 : i64
    %c1_i32 = arith.constant 1 : i32
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
    %13 = llvm.getelementptr %12[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %14 = llvm.load %13 : !llvm.ptr<i32>
    %15 = arith.extsi %14 : i32 to i64
    %16 = arith.muli %15, %c8_i64 : i64
    %17 = arith.index_cast %16 : i64 to index
    %18 = arith.divui %17, %c8 : index
    %19 = memref.alloc(%18) : memref<?xf64>
    call @dijkstra(%12, %c0_i32, %19) : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, i32, memref<?xf64>) -> ()
    %20 = llvm.mlir.addressof @str0 : !llvm.ptr<array<13 x i8>>
    %21 = llvm.getelementptr %20[0, 0] : (!llvm.ptr<array<13 x i8>>) -> !llvm.ptr<i8>
    %22 = llvm.mlir.addressof @str1 : !llvm.ptr<array<2 x i8>>
    %23 = llvm.getelementptr %22[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %24 = llvm.call @fopen(%21, %23) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %25 = llvm.mlir.addressof @str2 : !llvm.ptr<array<5 x i8>>
    %26 = llvm.getelementptr %25[0, 0] : (!llvm.ptr<array<5 x i8>>) -> !llvm.ptr<i8>
    %27 = scf.while (%arg2 = %c0_i32) : (i32) -> i32 {
      %29 = affine.load %0[0] : memref<1xi32>
      %30 = arith.cmpi slt, %arg2, %29 : i32
      scf.condition(%30) %arg2 : i32
    } do {
    ^bb0(%arg2: i32):
      %29 = arith.index_cast %arg2 : i32 to index
      %30 = memref.load %19[%29] : memref<?xf64>
      %31 = llvm.call @fprintf(%24, %26, %30) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, f64) -> i32
      %32 = arith.addi %arg2, %c1_i32 : i32
      scf.yield %32 : i32
    }
    %28 = llvm.call @fclose(%24) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
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
      %22 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
      %23 = llvm.load %22 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
      %24 = arith.index_cast %arg4 : index to i64
      %25 = llvm.getelementptr %23[%24] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
      %26 = llvm.getelementptr %25[0, 1] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<i32>
      llvm.store %c0_i32, %26 : !llvm.ptr<i32>
    }
    %10 = llvm.mlir.addressof @str3 : !llvm.ptr<array<2 x i8>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %12 = llvm.call @fopen(%arg2, %11) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %13 = llvm.mlir.null : !llvm.ptr<i8>
    %14 = llvm.bitcast %13 : !llvm.ptr<i8> to !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %15 = llvm.icmp "eq" %12, %14 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    scf.if %15 {
      %22 = llvm.mlir.addressof @str4 : !llvm.ptr<array<23 x i8>>
      %23 = llvm.getelementptr %22[0, 0] : (!llvm.ptr<array<23 x i8>>) -> !llvm.ptr<i8>
      %24 = llvm.call @printf(%23, %arg2) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %16 = arith.cmpi ne, %arg1, %c0_i8 : i8
    %17:4 = scf.while (%arg4 = %4, %arg5 = %c0_i32, %arg6 = %c-1_i32, %arg7 = %c0_i32, %arg8 = %true) : (f64, i32, i32, i32, i1) -> (i32, f64, i32, i32) {
      scf.condition(%arg8) %arg6, %arg4, %arg5, %arg7 : i32, f64, i32, i32
    } do {
    ^bb0(%arg4: i32, %arg5: f64, %arg6: i32, %arg7: i32):
      %22:6 = scf.if %16 -> (f64, i32, i32, i32, i32, i1) {
        %29 = llvm.mlir.addressof @str6 : !llvm.ptr<array<7 x i8>>
        %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
        %31 = llvm.call @__isoc99_fscanf(%12, %30, %3, %2) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> i32
        %32 = llvm.load %3 : !llvm.ptr<i32>
        %33 = llvm.load %2 : !llvm.ptr<i32>
        %34 = arith.cmpi eq, %31, %c-1_i32 : i32
        %35 = arith.cmpi ne, %31, %c-1_i32 : i32
        %36:3 = scf.if %34 -> (i32, f64, i32) {
          scf.yield %arg7, %arg5, %arg6 : i32, f64, i32
        } else {
          %37 = arith.addi %arg7, %c1_i32 : i32
          %38 = arith.cmpi eq, %32, %c-1_i32 : i32
          %39 = scf.if %38 -> (i32) {
            %43 = arith.addi %arg6, %c1_i32 : i32
            scf.yield %43 : i32
          } else {
            scf.yield %c0_i32 : i32
          }
          %40 = arith.addi %39, %c1_i32 : i32
          %41 = arith.sitofp %40 : i32 to f64
          %42 = arith.divf %41, %cst : f64
          scf.yield %37, %42, %40 : i32, f64, i32
        }
        scf.yield %36#1, %36#2, %33, %32, %36#0, %35 : f64, i32, i32, i32, i32, i1
      } else {
        %29 = llvm.mlir.addressof @str5 : !llvm.ptr<array<14 x i8>>
        %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
        %31 = llvm.call @__isoc99_fscanf(%12, %30, %3, %2, %1, %0) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<f64>) -> i32
        %32 = llvm.load %3 : !llvm.ptr<i32>
        %33 = llvm.load %2 : !llvm.ptr<i32>
        %34 = llvm.load %1 : !llvm.ptr<i32>
        %35 = llvm.load %0 : !llvm.ptr<f64>
        %36 = arith.cmpi ne, %31, %c-1_i32 : i32
        scf.yield %35, %arg6, %34, %33, %32, %36 : f64, i32, i32, i32, i32, i1
      }
      %23 = arith.cmpi slt, %22#3, %c2000000_i32 : i32
      %24 = arith.andi %22#5, %23 : i1
      %25 = arith.cmpi slt, %22#2, %c2000000_i32 : i32
      %26 = arith.andi %24, %25 : i1
      %27 = arith.andi %26, %22#5 : i1
      %28 = scf.if %27 -> (i32) {
        func.call @add_edge(%6, %22#3, %22#2, %22#0) : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, i32, i32, f64) -> ()
        %29 = arith.cmpi sgt, %arg4, %22#3 : i32
        %30 = arith.select %29, %arg4, %22#3 : i32
        %31 = arith.cmpi eq, %arg0, %c0_i8 : i8
        %32 = scf.if %31 -> (i32) {
          func.call @add_edge(%6, %22#2, %22#3, %22#0) : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, i32, i32, f64) -> ()
          %33 = arith.cmpi sgt, %30, %22#2 : i32
          %34 = arith.select %33, %30, %22#2 : i32
          scf.yield %34 : i32
        } else {
          scf.yield %30 : i32
        }
        scf.yield %32 : i32
      } else {
        scf.yield %arg4 : i32
      }
      scf.yield %22#0, %22#1, %28, %22#4, %22#5 : f64, i32, i32, i32, i1
    }
    %18 = llvm.call @fclose(%12) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
    %19 = llvm.getelementptr %6[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %20 = arith.addi %17#0, %c1_i32 : i32
    llvm.store %20, %19 : !llvm.ptr<i32>
    %21 = arith.addi %17#0, %c1_i32 : i32
    affine.store %21, %arg3[0] : memref<?xi32>
    return %6 : !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>
  }
  func.func @dijkstra(%arg0: !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, %arg1: i32, %arg2: memref<?xf64>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c-2_i32 = arith.constant -2 : i32
    %true = arith.constant true
    %cst = arith.constant 0.000000e+00 : f64
    %c2_i32 = arith.constant 2 : i32
    %0 = llvm.mlir.undef : i32
    %1 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %2 = llvm.load %1 : !llvm.ptr<i32>
    %3 = call @init_min_heap(%2) : (i32) -> !llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>
    %4 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %5 = memref.get_global @MAX_D : memref<1xf64>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %7 = llvm.getelementptr %3[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
    %8 = scf.while (%arg3 = %c0_i32) : (i32) -> i32 {
      %28 = llvm.load %4 : !llvm.ptr<i32>
      %29 = arith.cmpi slt, %arg3, %28 : i32
      scf.condition(%29) %arg3 : i32
    } do {
    ^bb0(%arg3: i32):
      %28 = arith.index_cast %arg3 : i32 to index
      %29 = affine.load %5[0] : memref<1xf64>
      memref.store %29, %arg2[%28] : memref<?xf64>
      %30 = llvm.load %6 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %31 = arith.index_cast %arg3 : i32 to index
      %32 = arith.index_cast %31 : index to i64
      %33 = llvm.getelementptr %30[%32] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %34 = memref.load %arg2[%31] : memref<?xf64>
      %35 = func.call @new_heap_node(%arg3, %34) : (i32, f64) -> !llvm.ptr<struct<(f64, i32)>>
      llvm.store %35, %33 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %36 = llvm.load %7 : !llvm.ptr<memref<?xi32>>
      %37 = arith.index_cast %arg3 : i32 to index
      memref.store %arg3, %36[%37] : memref<?xi32>
      %38 = arith.addi %arg3, %c1_i32 : i32
      scf.yield %38 : i32
    }
    %9 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
    %10 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %11 = llvm.load %10 : !llvm.ptr<i32>
    llvm.store %11, %9 : !llvm.ptr<i32>
    %12 = llvm.mlir.addressof @str7 : !llvm.ptr<array<17 x i8>>
    %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<array<17 x i8>>) -> !llvm.ptr<i8>
    %14 = llvm.call @printf(%13) : (!llvm.ptr<i8>) -> i32
    %15 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
    %16 = llvm.load %15 : !llvm.ptr<i32>
    %17 = arith.addi %16, %c-2_i32 : i32
    %18 = arith.divsi %17, %c2_i32 : i32
    %19 = arith.addi %18, %c1_i32 : i32
    %20 = arith.index_cast %19 : i32 to index
    scf.for %arg3 = %c0 to %20 step %c1 {
      %28 = arith.muli %arg3, %c-1 : index
      %29 = arith.index_cast %18 : i32 to index
      %30 = arith.addi %29, %28 : index
      %31 = arith.index_cast %30 : index to i32
      func.call @heapify(%3, %31) : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>, i32) -> ()
    }
    %21 = llvm.mlir.addressof @str8 : !llvm.ptr<array<15 x i8>>
    %22 = llvm.getelementptr %21[0, 0] : (!llvm.ptr<array<15 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.call @printf(%22) : (!llvm.ptr<i8>) -> i32
    %24 = arith.index_cast %arg1 : i32 to index
    affine.store %cst, %arg2[symbol(%24)] : memref<?xf64>
    call @decrease_key(%3, %arg1, %cst) : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>, i32, f64) -> ()
    %25 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
    %26 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<i32>
    %27:2 = scf.while (%arg3 = %0, %arg4 = %0, %arg5 = %0, %arg6 = %true) : (i32, i32, i32, i1) -> (i32, i32) {
      %28 = llvm.load %25 : !llvm.ptr<i32>
      %29 = arith.cmpi eq, %28, %c0_i32 : i32
      %30 = arith.extsi %29 : i1 to i32
      %31 = arith.cmpi eq, %30, %c0_i32 : i32
      %32 = arith.andi %31, %arg6 : i1
      scf.condition(%32) %arg3, %arg4 : i32, i32
    } do {
    ^bb0(%arg3: i32, %arg4: i32):
      %28 = func.call @extract_min(%3) : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<struct<(f64, i32)>>
      %29 = llvm.getelementptr %28[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %30 = llvm.load %29 : !llvm.ptr<i32>
      %31 = arith.index_cast %30 : i32 to index
      %32 = memref.load %arg2[%31] : memref<?xf64>
      %33 = memref.get_global @MAX_D : memref<1xf64>
      %34 = affine.load %33[0] : memref<1xf64>
      %35 = arith.cmpf oge, %32, %34 : f64
      %36 = arith.xori %35, %true : i1
      %37:2 = scf.if %35 -> (i32, i32) {
        scf.yield %arg3, %arg4 : i32, i32
      } else {
        %38 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
        %39 = arith.index_cast %30 : i32 to index
        %40 = arith.index_cast %39 : index to i64
        %41 = llvm.getelementptr %3[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
        %42 = arith.index_cast %30 : i32 to index
        %43 = arith.index_cast %30 : i32 to index
        %44 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
        %45 = arith.index_cast %42 : index to i64
        %46:2 = scf.while (%arg5 = %arg3, %arg6 = %c0_i32) : (i32, i32) -> (i32, i32) {
          %47 = llvm.load %38 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
          %48 = llvm.getelementptr %47[%40] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
          %49 = llvm.getelementptr %48[0, 1] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<i32>
          %50 = llvm.load %49 : !llvm.ptr<i32>
          %51 = arith.cmpi slt, %arg6, %50 : i32
          scf.condition(%51) %arg5, %arg6 : i32, i32
        } do {
        ^bb0(%arg5: i32, %arg6: i32):
          %47 = llvm.load %44 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
          %48 = llvm.getelementptr %47[%45] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
          %49 = llvm.getelementptr %48[0, 0] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<array<16 x ptr<struct<(f64, i32)>>>>
          %50 = llvm.getelementptr %49[0, 0] : (!llvm.ptr<array<16 x ptr<struct<(f64, i32)>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
          %51 = arith.index_cast %arg6 : i32 to index
          %52 = arith.index_cast %51 : index to i64
          %53 = llvm.getelementptr %50[%52] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
          %54 = llvm.load %53 : !llvm.ptr<ptr<struct<(f64, i32)>>>
          %55 = llvm.getelementptr %54[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
          %56 = llvm.load %55 : !llvm.ptr<i32>
          %57 = llvm.load %41 : !llvm.ptr<memref<?xi32>>
          %58 = arith.index_cast %56 : i32 to index
          %59 = memref.load %57[%58] : memref<?xi32>
          %60 = llvm.load %26 : !llvm.ptr<i32>
          %61 = arith.cmpi slt, %59, %60 : i32
          scf.if %61 {
            %63 = memref.load %arg2[%58] : memref<?xf64>
            %64 = llvm.getelementptr %54[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
            %65 = llvm.load %64 : !llvm.ptr<f64>
            %66 = memref.load %arg2[%43] : memref<?xf64>
            %67 = arith.addf %65, %66 : f64
            %68 = arith.cmpf olt, %63, %67 : f64
            %69 = scf.if %68 -> (f64) {
              %71 = memref.load %arg2[%58] : memref<?xf64>
              scf.yield %71 : f64
            } else {
              %71 = llvm.load %64 : !llvm.ptr<f64>
              %72 = memref.load %arg2[%43] : memref<?xf64>
              %73 = arith.addf %71, %72 : f64
              scf.yield %73 : f64
            }
            memref.store %69, %arg2[%58] : memref<?xf64>
            %70 = memref.load %arg2[%58] : memref<?xf64>
            func.call @decrease_key(%3, %56, %70) : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>, i32, f64) -> ()
          }
          %62 = arith.addi %arg6, %c1_i32 : i32
          scf.yield %56, %62 : i32, i32
        }
        scf.yield %46#0, %46#1 : i32, i32
      }
      scf.yield %37#0, %37#1, %30, %36 : i32, i32, i32, i1
    }
    return
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
      %22 = llvm.mlir.addressof @str9 : !llvm.ptr<array<33 x i8>>
      %23 = llvm.getelementptr %22[0, 0] : (!llvm.ptr<array<33 x i8>>) -> !llvm.ptr<i8>
      %24 = llvm.call @printf(%23, %arg1) : (!llvm.ptr<i8>, i32) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %8 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %10 = arith.index_cast %arg1 : i32 to index
    %11 = arith.index_cast %10 : index to i64
    %12 = llvm.getelementptr %9[%11] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
    %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<array<16 x ptr<struct<(f64, i32)>>>>
    %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<array<16 x ptr<struct<(f64, i32)>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %15 = llvm.getelementptr %12[0, 1] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<i32>
    %16 = llvm.load %15 : !llvm.ptr<i32>
    %17 = arith.addi %16, %c1_i32 : i32
    llvm.store %17, %15 : !llvm.ptr<i32>
    %18 = arith.index_cast %16 : i32 to index
    %19 = arith.index_cast %18 : index to i64
    %20 = llvm.getelementptr %14[%19] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %21 = call @new_graph_node(%arg2, %arg3) : (i32, f64) -> !llvm.ptr<struct<(f64, i32)>>
    llvm.store %21, %20 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    return
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
  func.func @decrease_key(%arg0: !llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>, %arg1: i32, %arg2: f64) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-1_i32 = arith.constant -1 : i32
    %false = arith.constant false
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
    %1 = llvm.load %0 : !llvm.ptr<memref<?xi32>>
    %2 = arith.index_cast %arg1 : i32 to index
    %3 = affine.load %1[symbol(%2)] : memref<?xi32>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %6 = arith.index_cast %3 : i32 to index
    %7 = arith.index_cast %6 : index to i64
    %8 = llvm.getelementptr %5[%7] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    llvm.store %arg2, %10 : !llvm.ptr<f64>
    %11 = scf.while (%arg3 = %3) : (i32) -> i32 {
      %12 = arith.cmpi ne, %arg3, %c0_i32 : i32
      %13:2 = scf.if %12 -> (i1, i32) {
        %14 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
        %15 = llvm.load %14 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
        %16 = arith.index_cast %arg3 : i32 to index
        %17 = arith.index_cast %16 : index to i64
        %18 = llvm.getelementptr %15[%17] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
        %19 = llvm.load %18 : !llvm.ptr<ptr<struct<(f64, i32)>>>
        %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
        %21 = llvm.load %20 : !llvm.ptr<f64>
        %22 = arith.addi %arg3, %c-1_i32 : i32
        %23 = arith.divsi %22, %c2_i32 : i32
        %24 = arith.index_cast %23 : i32 to index
        %25 = arith.index_cast %24 : index to i64
        %26 = llvm.getelementptr %15[%25] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
        %27 = llvm.load %26 : !llvm.ptr<ptr<struct<(f64, i32)>>>
        %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
        %29 = llvm.load %28 : !llvm.ptr<f64>
        %30 = arith.cmpf olt, %21, %29 : f64
        %31 = scf.if %30 -> (i32) {
          %32 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
          %33 = llvm.load %32 : !llvm.ptr<memref<?xi32>>
          %34 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
          %35 = llvm.load %34 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
          %36 = arith.index_cast %arg3 : i32 to index
          %37 = arith.index_cast %36 : index to i64
          %38 = llvm.getelementptr %35[%37] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
          %39 = llvm.load %38 : !llvm.ptr<ptr<struct<(f64, i32)>>>
          %40 = llvm.getelementptr %39[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
          %41 = llvm.load %40 : !llvm.ptr<i32>
          %42 = arith.index_cast %41 : i32 to index
          %43 = arith.addi %arg3, %c-1_i32 : i32
          %44 = arith.divsi %43, %c2_i32 : i32
          memref.store %44, %33[%42] : memref<?xi32>
          %45 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<memref<?xi32>>
          %46 = llvm.load %45 : !llvm.ptr<memref<?xi32>>
          %47 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
          %48 = llvm.load %47 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
          %49 = arith.addi %arg3, %c-1_i32 : i32
          %50 = arith.divsi %49, %c2_i32 : i32
          %51 = arith.index_cast %50 : i32 to index
          %52 = arith.index_cast %51 : index to i64
          %53 = llvm.getelementptr %48[%52] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
          %54 = llvm.load %53 : !llvm.ptr<ptr<struct<(f64, i32)>>>
          %55 = llvm.getelementptr %54[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
          %56 = llvm.load %55 : !llvm.ptr<i32>
          %57 = arith.index_cast %56 : i32 to index
          memref.store %arg3, %46[%57] : memref<?xi32>
          %58 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<!llvm.struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, memref<?xi32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
          %59 = llvm.load %58 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
          %60 = arith.index_cast %arg3 : i32 to index
          %61 = arith.index_cast %60 : index to i64
          %62 = llvm.getelementptr %59[%61] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
          %63 = arith.addi %arg3, %c-1_i32 : i32
          %64 = arith.divsi %63, %c2_i32 : i32
          %65 = arith.index_cast %64 : i32 to index
          %66 = arith.index_cast %65 : index to i64
          %67 = llvm.getelementptr %59[%66] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
          func.call @swap_heap_node(%62, %67) : (!llvm.ptr<ptr<struct<(f64, i32)>>>, !llvm.ptr<ptr<struct<(f64, i32)>>>) -> ()
          %68 = arith.addi %arg3, %c-1_i32 : i32
          %69 = arith.divsi %68, %c2_i32 : i32
          scf.yield %69 : i32
        } else {
          scf.yield %arg3 : i32
        }
        scf.yield %30, %31 : i1, i32
      } else {
        scf.yield %false, %arg3 : i1, i32
      }
      scf.condition(%13#0) %13#1 : i32
    } do {
    ^bb0(%arg3: i32):
      scf.yield %arg3 : i32
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
  func.func @swap_heap_node(%arg0: !llvm.ptr<ptr<struct<(f64, i32)>>>, %arg1: !llvm.ptr<ptr<struct<(f64, i32)>>>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = llvm.load %arg0 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %1 = llvm.load %arg1 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %1, %arg0 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %0, %arg1 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    return
  }
}

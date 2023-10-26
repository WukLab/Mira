module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str9("Too many neighbours for node %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str8("After heapify\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("After heap init\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal @MAX_D() {addr_space = 0 : i32, sym_visibility = "private"} : f64 {
    %cst = arith.constant 1.7976931348623157E+308 : f64
    llvm.return %cst : f64
  }
  llvm.mlir.global internal constant @str6("%d %d\0A\00") {addr_space = 0 : i32}
  llvm.func @__isoc99_fscanf(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str5("%d %d %d %lf\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str4("Couldn't open file %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("r\00") {addr_space = 0 : i32}
  llvm.func @fprintf(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str2("%lf\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("w\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("solution.txt\00") {addr_space = 0 : i32}
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c8_i64 = arith.constant 8 : i64
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.mlir.undef : i32
    %1 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    llvm.store %0, %1 : !llvm.ptr<i32>
    llvm.store %c0_i32, %1 : !llvm.ptr<i32>
    %2 = llvm.getelementptr %arg1[2] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %4 = call @atoi(%3) : (!llvm.ptr<i8>) -> i32
    %5 = llvm.getelementptr %arg1[3] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i8>>
    %7 = call @atoi(%6) : (!llvm.ptr<i8>) -> i32
    %8 = arith.trunci %4 : i32 to i8
    %9 = arith.trunci %7 : i32 to i8
    %10 = llvm.getelementptr %arg1[1] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<i8>>
    %12 = call @init_graph(%8, %9, %11, %1) : (i8, i8, !llvm.ptr<i8>, !llvm.ptr<i32>) -> !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>
    %13 = llvm.getelementptr %12[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %14 = llvm.load %13 : !llvm.ptr<i32>
    %15 = arith.extsi %14 : i32 to i64
    %16 = arith.muli %15, %c8_i64 : i64
    %17 = call @malloc(%16) : (i64) -> memref<?xi8>
    %18 = "polygeist.memref2pointer"(%17) : (memref<?xi8>) -> !llvm.ptr<f64>
    call @dijkstra(%12, %c0_i32, %18) : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, i32, !llvm.ptr<f64>) -> ()
    %19 = llvm.mlir.addressof @str0 : !llvm.ptr<array<13 x i8>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<array<13 x i8>>) -> !llvm.ptr<i8>
    %21 = llvm.mlir.addressof @str1 : !llvm.ptr<array<2 x i8>>
    %22 = llvm.getelementptr %21[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %23 = call @fopen(%20, %22) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %24 = llvm.mlir.addressof @str2 : !llvm.ptr<array<5 x i8>>
    %25 = llvm.getelementptr %24[0, 0] : (!llvm.ptr<array<5 x i8>>) -> !llvm.ptr<i8>
    %26 = scf.while (%arg2 = %c0_i32) : (i32) -> i32 {
      %28 = llvm.load %1 : !llvm.ptr<i32>
      %29 = arith.cmpi slt, %arg2, %28 : i32
      scf.condition(%29) %arg2 : i32
    } do {
    ^bb0(%arg2: i32):
      %28 = arith.index_cast %arg2 : i32 to index
      %29 = arith.index_cast %28 : index to i64
      %30 = llvm.getelementptr %18[%29] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
      %31 = llvm.load %30 : !llvm.ptr<f64>
      %32 = llvm.call @fprintf(%23, %25, %31) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, f64) -> i32
      %33 = arith.addi %arg2, %c1_i32 : i32
      scf.yield %33 : i32
    }
    %27 = call @fclose(%23) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
    return %c0_i32 : i32
  }
  func.func private @atoi(!llvm.ptr<i8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @init_graph(%arg0: i8, %arg1: i8, %arg2: !llvm.ptr<i8>, %arg3: !llvm.ptr<i32>) -> !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c2000000 = arith.constant 2000000 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c16_i64 = arith.constant 16 : i64
    %c272000000_i64 = arith.constant 272000000 : i64
    %cst = arith.constant 1.000000e+02 : f64
    %c0_i8 = arith.constant 0 : i8
    %c-1_i32 = arith.constant -1 : i32
    %c1_i32 = arith.constant 1 : i32
    %c2000000_i32 = arith.constant 2000000 : i32
    %c0_i32 = arith.constant 0 : i32
    %true = arith.constant true
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x f64 : (i64) -> !llvm.ptr<f64>
    %1 = llvm.mlir.undef : f64
    llvm.store %1, %0 : !llvm.ptr<f64>
    %2 = llvm.mlir.undef : i32
    %3 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    llvm.store %2, %3 : !llvm.ptr<i32>
    %4 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    llvm.store %2, %4 : !llvm.ptr<i32>
    %5 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    llvm.store %2, %5 : !llvm.ptr<i32>
    %6 = call @malloc(%c16_i64) : (i64) -> memref<?xi8>
    %7 = "polygeist.memref2pointer"(%6) : (memref<?xi8>) -> !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>
    %8 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %9 = call @malloc(%c272000000_i64) : (i64) -> memref<?xi8>
    %10 = "polygeist.memref2pointer"(%9) : (memref<?xi8>) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
    llvm.store %10, %8 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    scf.for %arg4 = %c0 to %c2000000 step %c1 {
      %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
      %26 = llvm.load %25 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
      %27 = arith.index_cast %arg4 : index to i64
      %28 = llvm.getelementptr %26[%27] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
      %29 = llvm.getelementptr %28[0, 1] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<i32>
      llvm.store %c0_i32, %29 : !llvm.ptr<i32>
    }
    %11 = llvm.mlir.addressof @str3 : !llvm.ptr<array<2 x i8>>
    %12 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %13 = call @fopen(%arg2, %12) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %14 = llvm.mlir.null : !llvm.ptr<i8>
    %15 = llvm.bitcast %14 : !llvm.ptr<i8> to !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %16 = llvm.icmp "eq" %13, %15 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    scf.if %16 {
      %25 = llvm.mlir.addressof @str4 : !llvm.ptr<array<23 x i8>>
      %26 = llvm.getelementptr %25[0, 0] : (!llvm.ptr<array<23 x i8>>) -> !llvm.ptr<i8>
      %27 = llvm.call @printf(%26, %arg2) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    llvm.store %c0_i32, %3 : !llvm.ptr<i32>
    %17 = llvm.load %3 : !llvm.ptr<i32>
    llvm.store %17, %4 : !llvm.ptr<i32>
    %18 = llvm.load %4 : !llvm.ptr<i32>
    llvm.store %18, %5 : !llvm.ptr<i32>
    %19 = arith.cmpi ne, %arg1, %c0_i8 : i8
    %20:2 = scf.while (%arg4 = %true, %arg5 = %c0_i32, %arg6 = %c-1_i32) : (i1, i32, i32) -> (i32, i32) {
      scf.condition(%arg4) %arg6, %arg5 : i32, i32
    } do {
    ^bb0(%arg4: i32, %arg5: i32):
      %25:2 = scf.if %19 -> (i1, i32) {
        %27 = llvm.mlir.addressof @str6 : !llvm.ptr<array<7 x i8>>
        %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
        %29 = llvm.call @__isoc99_fscanf(%13, %28, %4, %3) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> i32
        %30 = arith.cmpi eq, %29, %c-1_i32 : i32
        %31 = arith.cmpi ne, %29, %c-1_i32 : i32
        %32 = scf.if %30 -> (i32) {
          scf.yield %arg5 : i32
        } else {
          %33 = llvm.load %5 : !llvm.ptr<i32>
          %34 = arith.addi %33, %c1_i32 : i32
          llvm.store %34, %5 : !llvm.ptr<i32>
          %35 = llvm.load %4 : !llvm.ptr<i32>
          %36 = arith.cmpi eq, %35, %c-1_i32 : i32
          %37 = scf.if %36 -> (i32) {
            %41 = arith.addi %arg5, %c1_i32 : i32
            scf.yield %41 : i32
          } else {
            scf.yield %c0_i32 : i32
          }
          %38 = arith.addi %37, %c1_i32 : i32
          %39 = arith.sitofp %38 : i32 to f64
          %40 = arith.divf %39, %cst : f64
          llvm.store %40, %0 : !llvm.ptr<f64>
          scf.yield %38 : i32
        }
        scf.yield %31, %32 : i1, i32
      } else {
        %27 = llvm.mlir.addressof @str5 : !llvm.ptr<array<14 x i8>>
        %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
        %29 = llvm.call @__isoc99_fscanf(%13, %28, %5, %4, %3, %0) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<f64>) -> i32
        %30 = arith.cmpi ne, %29, %c-1_i32 : i32
        scf.yield %30, %arg5 : i1, i32
      }
      %26 = scf.if %25#0 -> (i32) {
        %27 = llvm.load %4 : !llvm.ptr<i32>
        %28 = arith.cmpi slt, %27, %c2000000_i32 : i32
        %29 = scf.if %28 -> (i32) {
          %30 = llvm.load %3 : !llvm.ptr<i32>
          %31 = arith.cmpi slt, %30, %c2000000_i32 : i32
          %32 = scf.if %31 -> (i32) {
            %33 = llvm.load %4 : !llvm.ptr<i32>
            %34 = llvm.load %3 : !llvm.ptr<i32>
            %35 = llvm.load %0 : !llvm.ptr<f64>
            func.call @add_edge(%7, %33, %34, %35) : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, i32, i32, f64) -> ()
            %36 = llvm.load %4 : !llvm.ptr<i32>
            %37 = arith.cmpi sgt, %arg4, %36 : i32
            %38 = scf.if %37 -> (i32) {
              scf.yield %arg4 : i32
            } else {
              %41 = llvm.load %4 : !llvm.ptr<i32>
              scf.yield %41 : i32
            }
            %39 = arith.cmpi eq, %arg0, %c0_i8 : i8
            %40 = scf.if %39 -> (i32) {
              %41 = llvm.load %3 : !llvm.ptr<i32>
              %42 = llvm.load %4 : !llvm.ptr<i32>
              %43 = llvm.load %0 : !llvm.ptr<f64>
              func.call @add_edge(%7, %41, %42, %43) : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, i32, i32, f64) -> ()
              %44 = llvm.load %3 : !llvm.ptr<i32>
              %45 = arith.cmpi sgt, %38, %44 : i32
              %46 = scf.if %45 -> (i32) {
                scf.yield %38 : i32
              } else {
                %47 = llvm.load %3 : !llvm.ptr<i32>
                scf.yield %47 : i32
              }
              scf.yield %46 : i32
            } else {
              scf.yield %38 : i32
            }
            scf.yield %40 : i32
          } else {
            scf.yield %arg4 : i32
          }
          scf.yield %32 : i32
        } else {
          scf.yield %arg4 : i32
        }
        scf.yield %29 : i32
      } else {
        scf.yield %arg4 : i32
      }
      scf.yield %25#0, %25#1, %26 : i1, i32, i32
    }
    %21 = call @fclose(%13) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
    %22 = llvm.getelementptr %7[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %23 = arith.addi %20#0, %c1_i32 : i32
    llvm.store %23, %22 : !llvm.ptr<i32>
    %24 = arith.addi %20#0, %c1_i32 : i32
    llvm.store %24, %arg3 : !llvm.ptr<i32>
    return %7 : !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>
  }
  func.func private @malloc(i64) -> memref<?xi8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @dijkstra(%arg0: !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, %arg1: i32, %arg2: !llvm.ptr<f64>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c-2_i32 = arith.constant -2 : i32
    %cst = arith.constant 0.000000e+00 : f64
    %c2_i32 = arith.constant 2 : i32
    %true = arith.constant true
    %0 = llvm.mlir.undef : i32
    %1 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %2 = llvm.load %1 : !llvm.ptr<i32>
    %3 = call @init_min_heap(%2) : (i32) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>
    %4 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %5 = llvm.mlir.addressof @MAX_D : !llvm.ptr<f64>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %7 = llvm.getelementptr %3[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %8 = scf.while (%arg3 = %c0_i32) : (i32) -> i32 {
      %30 = llvm.load %4 : !llvm.ptr<i32>
      %31 = arith.cmpi slt, %arg3, %30 : i32
      scf.condition(%31) %arg3 : i32
    } do {
    ^bb0(%arg3: i32):
      %30 = arith.index_cast %arg3 : i32 to index
      %31 = arith.index_cast %30 : index to i64
      %32 = llvm.getelementptr %arg2[%31] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
      %33 = llvm.load %5 : !llvm.ptr<f64>
      llvm.store %33, %32 : !llvm.ptr<f64>
      %34 = llvm.load %6 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %35 = arith.index_cast %arg3 : i32 to index
      %36 = arith.index_cast %35 : index to i64
      %37 = llvm.getelementptr %34[%36] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %38 = llvm.getelementptr %arg2[%36] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
      %39 = llvm.load %38 : !llvm.ptr<f64>
      %40 = func.call @new_heap_node(%arg3, %39) : (i32, f64) -> !llvm.ptr<struct<(f64, i32)>>
      llvm.store %40, %37 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %41 = llvm.load %7 : !llvm.ptr<ptr<i32>>
      %42 = arith.index_cast %arg3 : i32 to index
      %43 = arith.index_cast %42 : index to i64
      %44 = llvm.getelementptr %41[%43] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %arg3, %44 : !llvm.ptr<i32>
      %45 = arith.addi %arg3, %c1_i32 : i32
      scf.yield %45 : i32
    }
    %9 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<i32>
    %10 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %11 = llvm.load %10 : !llvm.ptr<i32>
    llvm.store %11, %9 : !llvm.ptr<i32>
    %12 = llvm.mlir.addressof @str7 : !llvm.ptr<array<17 x i8>>
    %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<array<17 x i8>>) -> !llvm.ptr<i8>
    %14 = llvm.call @printf(%13) : (!llvm.ptr<i8>) -> i32
    %15 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<i32>
    %16 = llvm.load %15 : !llvm.ptr<i32>
    %17 = arith.addi %16, %c-2_i32 : i32
    %18 = arith.divsi %17, %c2_i32 : i32
    %19 = arith.addi %18, %c1_i32 : i32
    %20 = arith.index_cast %19 : i32 to index
    scf.for %arg3 = %c0 to %20 step %c1 {
      %30 = arith.muli %arg3, %c-1 : index
      %31 = arith.index_cast %18 : i32 to index
      %32 = arith.addi %31, %30 : index
      %33 = arith.index_cast %32 : index to i32
      func.call @heapify(%3, %33) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>, i32) -> ()
    }
    %21 = llvm.mlir.addressof @str8 : !llvm.ptr<array<15 x i8>>
    %22 = llvm.getelementptr %21[0, 0] : (!llvm.ptr<array<15 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.call @printf(%22) : (!llvm.ptr<i8>) -> i32
    %24 = arith.index_cast %arg1 : i32 to index
    %25 = arith.index_cast %24 : index to i64
    %26 = llvm.getelementptr %arg2[%25] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %cst, %26 : !llvm.ptr<f64>
    call @decrease_key(%3, %arg1, %cst) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>, i32, f64) -> ()
    %27 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<i32>
    %28 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<i32>
    %29:2 = scf.while (%arg3 = %true, %arg4 = %0, %arg5 = %0, %arg6 = %0) : (i1, i32, i32, i32) -> (i32, i32) {
      %30 = llvm.load %27 : !llvm.ptr<i32>
      %31 = arith.cmpi eq, %30, %c0_i32 : i32
      %32 = arith.extsi %31 : i1 to i32
      %33 = arith.cmpi eq, %32, %c0_i32 : i32
      %34 = arith.andi %33, %arg3 : i1
      scf.condition(%34) %arg4, %arg5 : i32, i32
    } do {
    ^bb0(%arg3: i32, %arg4: i32):
      %30 = func.call @extract_min(%3) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<struct<(f64, i32)>>
      %31 = llvm.getelementptr %30[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %32 = llvm.load %31 : !llvm.ptr<i32>
      %33 = arith.index_cast %32 : i32 to index
      %34 = arith.index_cast %33 : index to i64
      %35 = llvm.getelementptr %arg2[%34] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
      %36 = llvm.load %35 : !llvm.ptr<f64>
      %37 = llvm.mlir.addressof @MAX_D : !llvm.ptr<f64>
      %38 = llvm.load %37 : !llvm.ptr<f64>
      %39 = arith.cmpf oge, %36, %38 : f64
      %40 = arith.xori %39, %true : i1
      %41:2 = scf.if %39 -> (i32, i32) {
        scf.yield %arg3, %arg4 : i32, i32
      } else {
        %42 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
        %43 = arith.index_cast %32 : i32 to index
        %44 = arith.index_cast %43 : index to i64
        %45 = llvm.getelementptr %3[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
        %46 = arith.index_cast %32 : i32 to index
        %47 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
        %48 = arith.index_cast %46 : index to i64
        %49:2 = scf.while (%arg5 = %arg3, %arg6 = %c0_i32) : (i32, i32) -> (i32, i32) {
          %50 = llvm.load %42 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
          %51 = llvm.getelementptr %50[%44] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
          %52 = llvm.getelementptr %51[0, 1] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<i32>
          %53 = llvm.load %52 : !llvm.ptr<i32>
          %54 = arith.cmpi slt, %arg6, %53 : i32
          scf.condition(%54) %arg5, %arg6 : i32, i32
        } do {
        ^bb0(%arg5: i32, %arg6: i32):
          %50 = llvm.load %47 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
          %51 = llvm.getelementptr %50[%48] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
          %52 = llvm.getelementptr %51[0, 0] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<array<16 x ptr<struct<(f64, i32)>>>>
          %53 = llvm.getelementptr %52[0, 0] : (!llvm.ptr<array<16 x ptr<struct<(f64, i32)>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
          %54 = arith.index_cast %arg6 : i32 to index
          %55 = arith.index_cast %54 : index to i64
          %56 = llvm.getelementptr %53[%55] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
          %57 = llvm.load %56 : !llvm.ptr<ptr<struct<(f64, i32)>>>
          %58 = llvm.getelementptr %57[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
          %59 = llvm.load %58 : !llvm.ptr<i32>
          %60 = llvm.load %45 : !llvm.ptr<ptr<i32>>
          %61 = arith.index_cast %59 : i32 to index
          %62 = arith.index_cast %61 : index to i64
          %63 = llvm.getelementptr %60[%62] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
          %64 = llvm.load %63 : !llvm.ptr<i32>
          %65 = llvm.load %28 : !llvm.ptr<i32>
          %66 = arith.cmpi slt, %64, %65 : i32
          scf.if %66 {
            %68 = llvm.getelementptr %arg2[%62] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
            %69 = llvm.load %68 : !llvm.ptr<f64>
            %70 = llvm.getelementptr %57[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
            %71 = llvm.load %70 : !llvm.ptr<f64>
            %72 = llvm.getelementptr %arg2[%48] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
            %73 = llvm.load %72 : !llvm.ptr<f64>
            %74 = arith.addf %71, %73 : f64
            %75 = arith.cmpf olt, %69, %74 : f64
            %76 = scf.if %75 -> (f64) {
              %79 = llvm.load %68 : !llvm.ptr<f64>
              scf.yield %79 : f64
            } else {
              %79 = llvm.load %70 : !llvm.ptr<f64>
              %80 = llvm.load %72 : !llvm.ptr<f64>
              %81 = arith.addf %79, %80 : f64
              scf.yield %81 : f64
            }
            llvm.store %76, %68 : !llvm.ptr<f64>
            %77 = llvm.getelementptr %arg2[%62] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
            %78 = llvm.load %77 : !llvm.ptr<f64>
            func.call @decrease_key(%3, %59, %78) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>, i32, f64) -> ()
          }
          %67 = arith.addi %arg6, %c1_i32 : i32
          scf.yield %59, %67 : i32, i32
        }
        scf.yield %49#0, %49#1 : i32, i32
      }
      scf.yield %40, %41#0, %41#1, %32 : i1, i32, i32, i32
    }
    return
  }
  func.func private @fopen(!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @fclose(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
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
  func.func @init_min_heap(%arg0: i32) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c24_i64 = arith.constant 24 : i64
    %c4_i64 = arith.constant 4 : i64
    %c8_i64 = arith.constant 8 : i64
    %c0_i32 = arith.constant 0 : i32
    %0 = call @malloc(%c24_i64) : (i64) -> memref<?xi8>
    %1 = "polygeist.memref2pointer"(%0) : (memref<?xi8>) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>
    %2 = llvm.getelementptr %1[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %3 = arith.extsi %arg0 : i32 to i64
    %4 = arith.muli %3, %c4_i64 : i64
    %5 = call @malloc(%4) : (i64) -> memref<?xi8>
    %6 = "polygeist.memref2pointer"(%5) : (memref<?xi8>) -> !llvm.ptr<i32>
    llvm.store %6, %2 : !llvm.ptr<ptr<i32>>
    %7 = llvm.getelementptr %1[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<i32>
    llvm.store %c0_i32, %7 : !llvm.ptr<i32>
    %8 = llvm.getelementptr %1[0, 2] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<i32>
    llvm.store %arg0, %8 : !llvm.ptr<i32>
    %9 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %10 = arith.extsi %arg0 : i32 to i64
    %11 = arith.muli %10, %c8_i64 : i64
    %12 = call @malloc(%11) : (i64) -> memref<?xi8>
    %13 = "polygeist.memref2pointer"(%12) : (memref<?xi8>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %13, %9 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    return %1 : !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>
  }
  func.func @new_heap_node(%arg0: i32, %arg1: f64) -> !llvm.ptr<struct<(f64, i32)>> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c16_i64 = arith.constant 16 : i64
    %0 = call @malloc(%c16_i64) : (i64) -> memref<?xi8>
    %1 = "polygeist.memref2pointer"(%0) : (memref<?xi8>) -> !llvm.ptr<struct<(f64, i32)>>
    %2 = llvm.getelementptr %1[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    llvm.store %arg0, %2 : !llvm.ptr<i32>
    %3 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    llvm.store %arg1, %3 : !llvm.ptr<f64>
    return %1 : !llvm.ptr<struct<(f64, i32)>>
  }
  func.func @heapify(%arg0: !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>, %arg1: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c2_i32 = arith.constant 2 : i32
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.shli %arg1, %c1_i32 : i32
    %1 = arith.addi %0, %c1_i32 : i32
    %2 = arith.shli %arg1, %c1_i32 : i32
    %3 = arith.addi %2, %c2_i32 : i32
    %4 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<i32>
    %5 = llvm.load %4 : !llvm.ptr<i32>
    %6 = arith.cmpi slt, %1, %5 : i32
    %7 = scf.if %6 -> (i32) {
      %13 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
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
    %8 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<i32>
    %9 = llvm.load %8 : !llvm.ptr<i32>
    %10 = arith.cmpi slt, %3, %9 : i32
    %11 = scf.if %10 -> (i32) {
      %13 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
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
      %13 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %14 = llvm.load %13 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %15 = arith.index_cast %11 : i32 to index
      %16 = arith.index_cast %15 : index to i64
      %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %18 = llvm.load %17 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %19 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %20 = llvm.load %19 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %21 = arith.index_cast %arg1 : i32 to index
      %22 = arith.index_cast %21 : index to i64
      %23 = llvm.getelementptr %20[%22] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %24 = llvm.load %23 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %25 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %26 = llvm.load %25 : !llvm.ptr<ptr<i32>>
      %27 = llvm.getelementptr %18[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %28 = llvm.load %27 : !llvm.ptr<i32>
      %29 = arith.index_cast %28 : i32 to index
      %30 = arith.index_cast %29 : index to i64
      %31 = llvm.getelementptr %26[%30] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %arg1, %31 : !llvm.ptr<i32>
      %32 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %33 = llvm.load %32 : !llvm.ptr<ptr<i32>>
      %34 = llvm.getelementptr %24[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %35 = llvm.load %34 : !llvm.ptr<i32>
      %36 = arith.index_cast %35 : i32 to index
      %37 = arith.index_cast %36 : index to i64
      %38 = llvm.getelementptr %33[%37] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %11, %38 : !llvm.ptr<i32>
      %39 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %40 = llvm.load %39 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %41 = arith.index_cast %11 : i32 to index
      %42 = arith.index_cast %41 : index to i64
      %43 = llvm.getelementptr %40[%42] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %44 = arith.index_cast %arg1 : i32 to index
      %45 = arith.index_cast %44 : index to i64
      %46 = llvm.getelementptr %40[%45] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      func.call @swap_heap_node(%43, %46) : (!llvm.ptr<ptr<struct<(f64, i32)>>>, !llvm.ptr<ptr<struct<(f64, i32)>>>) -> ()
      func.call @heapify(%arg0, %11) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>, i32) -> ()
    }
    return
  }
  func.func @decrease_key(%arg0: !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>, %arg1: i32, %arg2: f64) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-1_i32 = arith.constant -1 : i32
    %false = arith.constant false
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = arith.index_cast %arg1 : i32 to index
    %3 = arith.index_cast %2 : index to i64
    %4 = llvm.getelementptr %1[%3] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %5 = llvm.load %4 : !llvm.ptr<i32>
    %6 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %8 = arith.index_cast %5 : i32 to index
    %9 = arith.index_cast %8 : index to i64
    %10 = llvm.getelementptr %7[%9] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %12 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    llvm.store %arg2, %12 : !llvm.ptr<f64>
    %13 = scf.while (%arg3 = %5) : (i32) -> i32 {
      %14 = arith.cmpi ne, %arg3, %c0_i32 : i32
      %15:2 = scf.if %14 -> (i1, i32) {
        %16 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
        %17 = llvm.load %16 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
        %18 = arith.index_cast %arg3 : i32 to index
        %19 = arith.index_cast %18 : index to i64
        %20 = llvm.getelementptr %17[%19] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
        %21 = llvm.load %20 : !llvm.ptr<ptr<struct<(f64, i32)>>>
        %22 = llvm.getelementptr %21[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
        %23 = llvm.load %22 : !llvm.ptr<f64>
        %24 = arith.addi %arg3, %c-1_i32 : i32
        %25 = arith.divsi %24, %c2_i32 : i32
        %26 = arith.index_cast %25 : i32 to index
        %27 = arith.index_cast %26 : index to i64
        %28 = llvm.getelementptr %17[%27] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
        %29 = llvm.load %28 : !llvm.ptr<ptr<struct<(f64, i32)>>>
        %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
        %31 = llvm.load %30 : !llvm.ptr<f64>
        %32 = arith.cmpf olt, %23, %31 : f64
        %33 = scf.if %32 -> (i32) {
          %34 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
          %35 = llvm.load %34 : !llvm.ptr<ptr<i32>>
          %36 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
          %37 = llvm.load %36 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
          %38 = arith.index_cast %arg3 : i32 to index
          %39 = arith.index_cast %38 : index to i64
          %40 = llvm.getelementptr %37[%39] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
          %41 = llvm.load %40 : !llvm.ptr<ptr<struct<(f64, i32)>>>
          %42 = llvm.getelementptr %41[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
          %43 = llvm.load %42 : !llvm.ptr<i32>
          %44 = arith.index_cast %43 : i32 to index
          %45 = arith.index_cast %44 : index to i64
          %46 = llvm.getelementptr %35[%45] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
          %47 = arith.addi %arg3, %c-1_i32 : i32
          %48 = arith.divsi %47, %c2_i32 : i32
          llvm.store %48, %46 : !llvm.ptr<i32>
          %49 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
          %50 = llvm.load %49 : !llvm.ptr<ptr<i32>>
          %51 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
          %52 = llvm.load %51 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
          %53 = arith.addi %arg3, %c-1_i32 : i32
          %54 = arith.divsi %53, %c2_i32 : i32
          %55 = arith.index_cast %54 : i32 to index
          %56 = arith.index_cast %55 : index to i64
          %57 = llvm.getelementptr %52[%56] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
          %58 = llvm.load %57 : !llvm.ptr<ptr<struct<(f64, i32)>>>
          %59 = llvm.getelementptr %58[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
          %60 = llvm.load %59 : !llvm.ptr<i32>
          %61 = arith.index_cast %60 : i32 to index
          %62 = arith.index_cast %61 : index to i64
          %63 = llvm.getelementptr %50[%62] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
          llvm.store %arg3, %63 : !llvm.ptr<i32>
          %64 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
          %65 = llvm.load %64 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
          %66 = arith.index_cast %arg3 : i32 to index
          %67 = arith.index_cast %66 : index to i64
          %68 = llvm.getelementptr %65[%67] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
          %69 = arith.addi %arg3, %c-1_i32 : i32
          %70 = arith.divsi %69, %c2_i32 : i32
          %71 = arith.index_cast %70 : i32 to index
          %72 = arith.index_cast %71 : index to i64
          %73 = llvm.getelementptr %65[%72] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
          func.call @swap_heap_node(%68, %73) : (!llvm.ptr<ptr<struct<(f64, i32)>>>, !llvm.ptr<ptr<struct<(f64, i32)>>>) -> ()
          %74 = arith.addi %arg3, %c-1_i32 : i32
          %75 = arith.divsi %74, %c2_i32 : i32
          scf.yield %75 : i32
        } else {
          scf.yield %arg3 : i32
        }
        scf.yield %32, %33 : i1, i32
      } else {
        scf.yield %false, %arg3 : i1, i32
      }
      scf.condition(%15#0) %15#1 : i32
    } do {
    ^bb0(%arg3: i32):
      scf.yield %arg3 : i32
    }
    return
  }
  func.func @extract_min(%arg0: !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<struct<(f64, i32)>> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-1_i32 = arith.constant -1 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<i32>
    %1 = llvm.load %0 : !llvm.ptr<i32>
    %2 = arith.cmpi eq, %1, %c0_i32 : i32
    %3 = scf.if %2 -> (!llvm.ptr<struct<(f64, i32)>>) {
      %4 = llvm.mlir.null : !llvm.ptr<struct<(f64, i32)>>
      scf.yield %4 : !llvm.ptr<struct<(f64, i32)>>
    } else {
      %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %5 = llvm.load %4 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %6 = llvm.load %5 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %7 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %8 = llvm.load %7 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %9 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<i32>
      %10 = llvm.load %9 : !llvm.ptr<i32>
      %11 = arith.addi %10, %c-1_i32 : i32
      %12 = arith.index_cast %11 : i32 to index
      %13 = arith.index_cast %12 : index to i64
      %14 = llvm.getelementptr %8[%13] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %15 = llvm.load %14 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %16 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %17 = llvm.load %16 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      llvm.store %15, %17 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %18 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %19 = llvm.load %18 : !llvm.ptr<ptr<i32>>
      %20 = llvm.getelementptr %6[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %21 = llvm.load %20 : !llvm.ptr<i32>
      %22 = arith.index_cast %21 : i32 to index
      %23 = arith.index_cast %22 : index to i64
      %24 = llvm.getelementptr %19[%23] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %25 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<i32>
      %26 = llvm.load %25 : !llvm.ptr<i32>
      %27 = arith.addi %26, %c-1_i32 : i32
      llvm.store %27, %24 : !llvm.ptr<i32>
      %28 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %29 = llvm.load %28 : !llvm.ptr<ptr<i32>>
      %30 = llvm.getelementptr %15[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %31 = llvm.load %30 : !llvm.ptr<i32>
      %32 = arith.index_cast %31 : i32 to index
      %33 = arith.index_cast %32 : index to i64
      %34 = llvm.getelementptr %29[%33] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %c0_i32, %34 : !llvm.ptr<i32>
      %35 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<i32>
      %36 = llvm.load %35 : !llvm.ptr<i32>
      %37 = arith.addi %36, %c-1_i32 : i32
      llvm.store %37, %35 : !llvm.ptr<i32>
      func.call @heapify(%arg0, %c0_i32) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>, i32) -> ()
      scf.yield %6 : !llvm.ptr<struct<(f64, i32)>>
    }
    return %3 : !llvm.ptr<struct<(f64, i32)>>
  }
  func.func @new_graph_node(%arg0: i32, %arg1: f64) -> !llvm.ptr<struct<(f64, i32)>> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c16_i64 = arith.constant 16 : i64
    %0 = call @malloc(%c16_i64) : (i64) -> memref<?xi8>
    %1 = "polygeist.memref2pointer"(%0) : (memref<?xi8>) -> !llvm.ptr<struct<(f64, i32)>>
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

module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str9("Too many neighbours for node %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str8("After heapify\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("After heap init\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal @MAX_D() {addr_space = 0 : i32, sym_visibility = "private"} : f64 {
    %cst = arith.constant 1.7976931348623157E+308 : f64
    llvm.return %cst : f64
  }
  llvm.mlir.global internal constant @str6("%d %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("%d %d %d %lf\0A\00") {addr_space = 0 : i32}
  llvm.func @__isoc99_fscanf(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str4("Couldn't open file %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("r\00") {addr_space = 0 : i32}
  llvm.func @fclose(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
  llvm.func @fprintf(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str2("%lf\0A\00") {addr_space = 0 : i32}
  llvm.func @fopen(!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.mlir.global internal constant @str1("w\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("solution.txt\00") {addr_space = 0 : i32}
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
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
    %4 = llvm.call @atoi(%3) : (!llvm.ptr<i8>) -> i32
    %5 = llvm.getelementptr %arg1[3] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i8>>
    %7 = llvm.call @atoi(%6) : (!llvm.ptr<i8>) -> i32
    %8 = arith.trunci %4 : i32 to i8
    %9 = arith.trunci %7 : i32 to i8
    %10 = llvm.getelementptr %arg1[1] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<i8>>
    %12 = call @init_graph(%8, %9, %11, %1) : (i8, i8, !llvm.ptr<i8>, !llvm.ptr<i32>) -> !llvm.ptr<struct<(ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i32)>>
    %13 = llvm.getelementptr %12[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %14 = llvm.load %13 : !llvm.ptr<i32>
    %15 = arith.extsi %14 : i32 to i64
    %16 = arith.muli %15, %c8_i64 : i64
    %17 = llvm.call @malloc(%16) : (i64) -> !llvm.ptr<i8>
    %18 = llvm.bitcast %17 : !llvm.ptr<i8> to !llvm.ptr<f64>
    call @dijkstra(%12, %c0_i32, %18) : (!llvm.ptr<struct<(ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i32)>>, i32, !llvm.ptr<f64>) -> ()
    %19 = llvm.mlir.addressof @str0 : !llvm.ptr<array<13 x i8>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<array<13 x i8>>) -> !llvm.ptr<i8>
    %21 = llvm.mlir.addressof @str1 : !llvm.ptr<array<2 x i8>>
    %22 = llvm.getelementptr %21[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.call @fopen(%20, %22) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
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
    %27 = llvm.call @fclose(%23) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
    return %c0_i32 : i32
  }
  func.func @init_graph(%arg0: i8, %arg1: i8, %arg2: !llvm.ptr<i8>, %arg3: !llvm.ptr<i32>) -> !llvm.ptr<struct<(ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i32)>> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c2000000 = arith.constant 2000000 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c16_i64 = arith.constant 16 : i64
    %c528000000_i64 = arith.constant 528000000 : i64
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
    %6 = llvm.call @malloc(%c16_i64) : (i64) -> !llvm.ptr<i8>
    %7 = llvm.bitcast %6 : !llvm.ptr<i8> to !llvm.ptr<struct<(ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i32)>>
    %8 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>>
    %9 = llvm.call @malloc(%c528000000_i64) : (i64) -> !llvm.ptr<i8>
    %10 = llvm.bitcast %9 : !llvm.ptr<i8> to !llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>
    llvm.store %10, %8 : !llvm.ptr<ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>>
    scf.for %arg4 = %c0 to %c2000000 step %c1 {
      %24 = llvm.load %8 : !llvm.ptr<ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>>
      %25 = arith.index_cast %arg4 : index to i64
      %26 = llvm.getelementptr %24[%25] : (!llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>
      %27 = llvm.getelementptr %26[0, 1] : (!llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>) -> !llvm.ptr<i32>
      llvm.store %c0_i32, %27 : !llvm.ptr<i32>
    }
    %11 = llvm.mlir.addressof @str3 : !llvm.ptr<array<2 x i8>>
    %12 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %13 = llvm.call @fopen(%arg2, %12) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %14 = llvm.mlir.null : !llvm.ptr<i8>
    %15 = llvm.bitcast %14 : !llvm.ptr<i8> to !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %16 = llvm.icmp "eq" %13, %15 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    scf.if %16 {
      %24 = llvm.mlir.addressof @str4 : !llvm.ptr<array<23 x i8>>
      %25 = llvm.getelementptr %24[0, 0] : (!llvm.ptr<array<23 x i8>>) -> !llvm.ptr<i8>
      %26 = llvm.call @printf(%25, %arg2) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
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
      %24:2 = scf.if %19 -> (i1, i32) {
        %26 = llvm.mlir.addressof @str6 : !llvm.ptr<array<7 x i8>>
        %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
        %28 = llvm.call @__isoc99_fscanf(%13, %27, %4, %3) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> i32
        %29 = arith.cmpi eq, %28, %c-1_i32 : i32
        %30 = arith.cmpi ne, %28, %c-1_i32 : i32
        %31 = scf.if %29 -> (i32) {
          scf.yield %arg5 : i32
        } else {
          %32 = llvm.load %5 : !llvm.ptr<i32>
          %33 = arith.addi %32, %c1_i32 : i32
          llvm.store %33, %5 : !llvm.ptr<i32>
          %34 = llvm.load %4 : !llvm.ptr<i32>
          %35 = arith.cmpi eq, %34, %c-1_i32 : i32
          %36 = scf.if %35 -> (i32) {
            %40 = arith.addi %arg5, %c1_i32 : i32
            scf.yield %40 : i32
          } else {
            scf.yield %c0_i32 : i32
          }
          %37 = arith.addi %36, %c1_i32 : i32
          %38 = arith.sitofp %37 : i32 to f64
          %39 = arith.divf %38, %cst : f64
          llvm.store %39, %0 : !llvm.ptr<f64>
          scf.yield %37 : i32
        }
        scf.yield %30, %31 : i1, i32
      } else {
        %26 = llvm.mlir.addressof @str5 : !llvm.ptr<array<14 x i8>>
        %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
        %28 = llvm.call @__isoc99_fscanf(%13, %27, %5, %4, %3, %0) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<f64>) -> i32
        %29 = arith.cmpi ne, %28, %c-1_i32 : i32
        scf.yield %29, %arg5 : i1, i32
      }
      %25 = scf.if %24#0 -> (i32) {
        %26 = llvm.load %4 : !llvm.ptr<i32>
        %27 = arith.cmpi slt, %26, %c2000000_i32 : i32
        %28 = scf.if %27 -> (i32) {
          %29 = llvm.load %3 : !llvm.ptr<i32>
          %30 = arith.cmpi slt, %29, %c2000000_i32 : i32
          %31 = scf.if %30 -> (i32) {
            %32 = llvm.load %4 : !llvm.ptr<i32>
            %33 = llvm.load %3 : !llvm.ptr<i32>
            %34 = llvm.load %0 : !llvm.ptr<f64>
            func.call @add_edge(%7, %32, %33, %34) : (!llvm.ptr<struct<(ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i32)>>, i32, i32, f64) -> ()
            %35 = llvm.load %4 : !llvm.ptr<i32>
            %36 = arith.cmpi sgt, %arg4, %35 : i32
            %37 = scf.if %36 -> (i32) {
              scf.yield %arg4 : i32
            } else {
              %40 = llvm.load %4 : !llvm.ptr<i32>
              scf.yield %40 : i32
            }
            %38 = arith.cmpi eq, %arg0, %c0_i8 : i8
            %39 = scf.if %38 -> (i32) {
              %40 = llvm.load %3 : !llvm.ptr<i32>
              %41 = llvm.load %4 : !llvm.ptr<i32>
              %42 = llvm.load %0 : !llvm.ptr<f64>
              func.call @add_edge(%7, %40, %41, %42) : (!llvm.ptr<struct<(ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i32)>>, i32, i32, f64) -> ()
              %43 = llvm.load %3 : !llvm.ptr<i32>
              %44 = arith.cmpi sgt, %37, %43 : i32
              %45 = scf.if %44 -> (i32) {
                scf.yield %37 : i32
              } else {
                %46 = llvm.load %3 : !llvm.ptr<i32>
                scf.yield %46 : i32
              }
              scf.yield %45 : i32
            } else {
              scf.yield %37 : i32
            }
            scf.yield %39 : i32
          } else {
            scf.yield %arg4 : i32
          }
          scf.yield %31 : i32
        } else {
          scf.yield %arg4 : i32
        }
        scf.yield %28 : i32
      } else {
        scf.yield %arg4 : i32
      }
      scf.yield %24#0, %24#1, %25 : i1, i32, i32
    }
    %21 = llvm.call @fclose(%13) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
    %22 = llvm.getelementptr %7[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %23 = arith.addi %20#0, %c1_i32 : i32
    llvm.store %23, %22 : !llvm.ptr<i32>
    llvm.store %23, %arg3 : !llvm.ptr<i32>
    return %7 : !llvm.ptr<struct<(ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i32)>>
  }
  func.func @dijkstra(%arg0: !llvm.ptr<struct<(ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i32)>>, %arg1: i32, %arg2: !llvm.ptr<f64>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c-2_i32 = arith.constant -2 : i32
    %cst = arith.constant 0.000000e+00 : f64
    %c2_i32 = arith.constant 2 : i32
    %true = arith.constant true
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.mlir.undef : i32
    %1 = llvm.alloca %c1_i64 x !llvm.struct<(f64, i32)> : (i64) -> !llvm.ptr<struct<(f64, i32)>>
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %3 = llvm.load %2 : !llvm.ptr<i32>
    %4 = call @init_min_heap(%3) : (i32) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>
    %5 = llvm.mlir.addressof @MAX_D : !llvm.ptr<f64>
    %6 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %7 = llvm.getelementptr %4[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %8 = scf.while (%arg3 = %c0_i32) : (i32) -> i32 {
      %27 = llvm.load %2 : !llvm.ptr<i32>
      %28 = arith.cmpi slt, %arg3, %27 : i32
      scf.condition(%28) %arg3 : i32
    } do {
    ^bb0(%arg3: i32):
      %27 = arith.index_cast %arg3 : i32 to index
      %28 = arith.index_cast %27 : index to i64
      %29 = llvm.getelementptr %arg2[%28] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
      %30 = llvm.load %5 : !llvm.ptr<f64>
      llvm.store %30, %29 : !llvm.ptr<f64>
      %31 = llvm.load %6 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %32 = llvm.getelementptr %31[%28] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %33 = llvm.load %29 : !llvm.ptr<f64>
      %34 = func.call @new_heap_node(%arg3, %33) : (i32, f64) -> !llvm.ptr<struct<(f64, i32)>>
      llvm.store %34, %32 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %35 = llvm.load %7 : !llvm.ptr<ptr<i32>>
      %36 = llvm.getelementptr %35[%28] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %arg3, %36 : !llvm.ptr<i32>
      %37 = arith.addi %arg3, %c1_i32 : i32
      scf.yield %37 : i32
    }
    %9 = llvm.getelementptr %4[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<i32>
    %10 = llvm.load %2 : !llvm.ptr<i32>
    llvm.store %10, %9 : !llvm.ptr<i32>
    %11 = llvm.mlir.addressof @str7 : !llvm.ptr<array<17 x i8>>
    %12 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<array<17 x i8>>) -> !llvm.ptr<i8>
    %13 = llvm.call @printf(%12) : (!llvm.ptr<i8>) -> i32
    %14 = llvm.load %9 : !llvm.ptr<i32>
    %15 = arith.addi %14, %c-2_i32 : i32
    %16 = arith.divsi %15, %c2_i32 : i32
    %17 = arith.addi %16, %c1_i32 : i32
    %18 = arith.index_cast %17 : i32 to index
    %19 = arith.index_cast %16 : i32 to index
    scf.for %arg3 = %c0 to %18 step %c1 {
      %27 = arith.muli %arg3, %c-1 : index
      %28 = arith.addi %19, %27 : index
      %29 = arith.index_cast %28 : index to i32
      func.call @heapify(%4, %29) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>, i32) -> ()
    }
    %20 = llvm.mlir.addressof @str8 : !llvm.ptr<array<15 x i8>>
    %21 = llvm.getelementptr %20[0, 0] : (!llvm.ptr<array<15 x i8>>) -> !llvm.ptr<i8>
    %22 = llvm.call @printf(%21) : (!llvm.ptr<i8>) -> i32
    %23 = arith.index_cast %arg1 : i32 to index
    %24 = arith.index_cast %23 : index to i64
    %25 = llvm.getelementptr %arg2[%24] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %cst, %25 : !llvm.ptr<f64>
    call @decrease_key(%4, %arg1, %cst) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>, i32, f64) -> ()
    %26:2 = scf.while (%arg3 = %true, %arg4 = %0, %arg5 = %0, %arg6 = %0) : (i1, i32, i32, i32) -> (i32, i32) {
      %27 = llvm.load %9 : !llvm.ptr<i32>
      %28 = arith.cmpi eq, %27, %c0_i32 : i32
      %29 = arith.extsi %28 : i1 to i32
      %30 = arith.cmpi eq, %29, %c0_i32 : i32
      %31 = arith.andi %30, %arg3 : i1
      scf.condition(%31) %arg4, %arg5 : i32, i32
    } do {
    ^bb0(%arg3: i32, %arg4: i32):
      %27 = func.call @extract_min(%4) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<struct<(f64, i32)>>
      %28 = llvm.getelementptr %27[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %29 = llvm.load %28 : !llvm.ptr<i32>
      %30 = arith.index_cast %29 : i32 to index
      %31 = arith.index_cast %30 : index to i64
      %32 = llvm.getelementptr %arg2[%31] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
      %33 = llvm.load %32 : !llvm.ptr<f64>
      %34 = llvm.load %5 : !llvm.ptr<f64>
      %35 = arith.cmpf oge, %33, %34 : f64
      %36 = arith.xori %35, %true : i1
      %37:2 = scf.if %35 -> (i32, i32) {
        scf.yield %arg3, %arg4 : i32, i32
      } else {
        %38 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>>
        %39 = llvm.getelementptr %1[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
        %40:2 = scf.while (%arg5 = %arg3, %arg6 = %c0_i32) : (i32, i32) -> (i32, i32) {
          %41 = llvm.load %38 : !llvm.ptr<ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>>
          %42 = llvm.getelementptr %41[%31] : (!llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>
          %43 = llvm.getelementptr %42[0, 1] : (!llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>) -> !llvm.ptr<i32>
          %44 = llvm.load %43 : !llvm.ptr<i32>
          %45 = arith.cmpi slt, %arg6, %44 : i32
          scf.condition(%45) %arg5, %arg6 : i32, i32
        } do {
        ^bb0(%arg5: i32, %arg6: i32):
          %41 = llvm.load %38 : !llvm.ptr<ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>>
          %42 = llvm.getelementptr %41[%31] : (!llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>
          %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>) -> !llvm.ptr<array<16 x struct<(f64, i32)>>>
          %44 = llvm.getelementptr %43[0, 0] : (!llvm.ptr<array<16 x struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>
          %45 = arith.index_cast %arg6 : i32 to index
          %46 = arith.index_cast %45 : index to i64
          %47 = llvm.getelementptr %44[%46] : (!llvm.ptr<struct<(f64, i32)>>, i64) -> !llvm.ptr<struct<(f64, i32)>>
          %48 = llvm.load %47 : !llvm.ptr<struct<(f64, i32)>>
          llvm.store %48, %1 : !llvm.ptr<struct<(f64, i32)>>
          %49 = llvm.load %39 : !llvm.ptr<i32>
          %50 = llvm.load %7 : !llvm.ptr<ptr<i32>>
          %51 = arith.index_cast %49 : i32 to index
          %52 = arith.index_cast %51 : index to i64
          %53 = llvm.getelementptr %50[%52] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
          %54 = llvm.load %53 : !llvm.ptr<i32>
          %55 = llvm.load %9 : !llvm.ptr<i32>
          %56 = arith.cmpi slt, %54, %55 : i32
          scf.if %56 {
            %58 = llvm.getelementptr %arg2[%52] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
            %59 = llvm.load %58 : !llvm.ptr<f64>
            %60 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
            %61 = llvm.load %60 : !llvm.ptr<f64>
            %62 = llvm.load %32 : !llvm.ptr<f64>
            %63 = arith.addf %61, %62 : f64
            %64 = arith.cmpf olt, %59, %63 : f64
            %65 = scf.if %64 -> (f64) {
              %67 = llvm.load %58 : !llvm.ptr<f64>
              scf.yield %67 : f64
            } else {
              %67 = llvm.load %60 : !llvm.ptr<f64>
              %68 = llvm.load %32 : !llvm.ptr<f64>
              %69 = arith.addf %67, %68 : f64
              scf.yield %69 : f64
            }
            llvm.store %65, %58 : !llvm.ptr<f64>
            %66 = llvm.load %58 : !llvm.ptr<f64>
            func.call @decrease_key(%4, %49, %66) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>, i32, f64) -> ()
          }
          %57 = arith.addi %arg6, %c1_i32 : i32
          scf.yield %49, %57 : i32, i32
        }
        scf.yield %40#0, %40#1 : i32, i32
      }
      scf.yield %36, %37#0, %37#1, %29 : i1, i32, i32, i32
    }
    return
  }
  func.func private @exit(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @add_edge(%arg0: !llvm.ptr<struct<(ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i32)>>, %arg1: i32, %arg2: i32, %arg3: f64) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1_i32 = arith.constant 1 : i32
    %c16_i32 = arith.constant 16 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(f64, i32)> : (i64) -> !llvm.ptr<struct<(f64, i32)>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>>
    %3 = arith.index_cast %arg1 : i32 to index
    %4 = arith.index_cast %3 : index to i64
    %5 = llvm.getelementptr %2[%4] : (!llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %7 = llvm.load %6 : !llvm.ptr<i32>
    %8 = arith.cmpi sge, %7, %c16_i32 : i32
    scf.if %8 {
      %22 = llvm.mlir.addressof @str9 : !llvm.ptr<array<33 x i8>>
      %23 = llvm.getelementptr %22[0, 0] : (!llvm.ptr<array<33 x i8>>) -> !llvm.ptr<i8>
      %24 = llvm.call @printf(%23, %arg1) : (!llvm.ptr<i8>, i32) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %9 = llvm.load %1 : !llvm.ptr<ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>>
    %10 = llvm.getelementptr %9[%4] : (!llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>) -> !llvm.ptr<array<16 x struct<(f64, i32)>>>
    %12 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<array<16 x struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>
    %13 = llvm.getelementptr %10[0, 1] : (!llvm.ptr<struct<(array<16 x struct<(f64, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %14 = llvm.load %13 : !llvm.ptr<i32>
    %15 = arith.addi %14, %c1_i32 : i32
    llvm.store %15, %13 : !llvm.ptr<i32>
    %16 = arith.index_cast %14 : i32 to index
    %17 = arith.index_cast %16 : index to i64
    %18 = llvm.getelementptr %12[%17] : (!llvm.ptr<struct<(f64, i32)>>, i64) -> !llvm.ptr<struct<(f64, i32)>>
    %19 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    llvm.store %arg3, %19 : !llvm.ptr<f64>
    %20 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    llvm.store %arg2, %20 : !llvm.ptr<i32>
    %21 = llvm.load %0 : !llvm.ptr<struct<(f64, i32)>>
    llvm.store %21, %18 : !llvm.ptr<struct<(f64, i32)>>
    return
  }
  func.func @init_min_heap(%arg0: i32) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c24_i64 = arith.constant 24 : i64
    %c4_i64 = arith.constant 4 : i64
    %c8_i64 = arith.constant 8 : i64
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.call @malloc(%c24_i64) : (i64) -> !llvm.ptr<i8>
    %1 = llvm.bitcast %0 : !llvm.ptr<i8> to !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>
    %2 = llvm.getelementptr %1[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %3 = arith.extsi %arg0 : i32 to i64
    %4 = arith.muli %3, %c4_i64 : i64
    %5 = llvm.call @malloc(%4) : (i64) -> !llvm.ptr<i8>
    %6 = llvm.bitcast %5 : !llvm.ptr<i8> to !llvm.ptr<i32>
    llvm.store %6, %2 : !llvm.ptr<ptr<i32>>
    %7 = llvm.getelementptr %1[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<i32>
    llvm.store %c0_i32, %7 : !llvm.ptr<i32>
    %8 = llvm.getelementptr %1[0, 2] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<i32>
    llvm.store %arg0, %8 : !llvm.ptr<i32>
    %9 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %10 = arith.muli %3, %c8_i64 : i64
    %11 = llvm.call @malloc(%10) : (i64) -> !llvm.ptr<i8>
    %12 = llvm.bitcast %11 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %12, %9 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    return %1 : !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>
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
  func.func @heapify(%arg0: !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>, %arg1: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c2_i32 = arith.constant 2 : i32
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.shli %arg1, %c1_i32 : i32
    %1 = arith.addi %0, %c1_i32 : i32
    %2 = arith.addi %0, %c2_i32 : i32
    %3 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<i32>
    %4 = llvm.load %3 : !llvm.ptr<i32>
    %5 = arith.cmpi slt, %1, %4 : i32
    %6 = scf.if %5 -> (i32) {
      %11 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %12 = llvm.load %11 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %13 = arith.index_cast %1 : i32 to index
      %14 = arith.index_cast %13 : index to i64
      %15 = llvm.getelementptr %12[%14] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %16 = llvm.load %15 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %17 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
      %18 = llvm.load %17 : !llvm.ptr<f64>
      %19 = arith.index_cast %arg1 : i32 to index
      %20 = arith.index_cast %19 : index to i64
      %21 = llvm.getelementptr %12[%20] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %22 = llvm.load %21 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %23 = llvm.getelementptr %22[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
      %24 = llvm.load %23 : !llvm.ptr<f64>
      %25 = arith.cmpf olt, %18, %24 : f64
      %26 = arith.select %25, %1, %arg1 : i32
      scf.yield %26 : i32
    } else {
      scf.yield %arg1 : i32
    }
    %7 = llvm.load %3 : !llvm.ptr<i32>
    %8 = arith.cmpi slt, %2, %7 : i32
    %9 = scf.if %8 -> (i32) {
      %11 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %12 = llvm.load %11 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %13 = arith.index_cast %2 : i32 to index
      %14 = arith.index_cast %13 : index to i64
      %15 = llvm.getelementptr %12[%14] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %16 = llvm.load %15 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %17 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
      %18 = llvm.load %17 : !llvm.ptr<f64>
      %19 = arith.index_cast %6 : i32 to index
      %20 = arith.index_cast %19 : index to i64
      %21 = llvm.getelementptr %12[%20] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %22 = llvm.load %21 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %23 = llvm.getelementptr %22[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
      %24 = llvm.load %23 : !llvm.ptr<f64>
      %25 = arith.cmpf olt, %18, %24 : f64
      %26 = arith.select %25, %2, %6 : i32
      scf.yield %26 : i32
    } else {
      scf.yield %6 : i32
    }
    %10 = arith.cmpi ne, %9, %arg1 : i32
    scf.if %10 {
      %11 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %12 = llvm.load %11 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %13 = arith.index_cast %9 : i32 to index
      %14 = arith.index_cast %13 : index to i64
      %15 = llvm.getelementptr %12[%14] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %16 = llvm.load %15 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %17 = arith.index_cast %arg1 : i32 to index
      %18 = arith.index_cast %17 : index to i64
      %19 = llvm.getelementptr %12[%18] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %20 = llvm.load %19 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %21 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %22 = llvm.load %21 : !llvm.ptr<ptr<i32>>
      %23 = llvm.getelementptr %16[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %24 = llvm.load %23 : !llvm.ptr<i32>
      %25 = arith.index_cast %24 : i32 to index
      %26 = arith.index_cast %25 : index to i64
      %27 = llvm.getelementptr %22[%26] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %arg1, %27 : !llvm.ptr<i32>
      %28 = llvm.load %21 : !llvm.ptr<ptr<i32>>
      %29 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %30 = llvm.load %29 : !llvm.ptr<i32>
      %31 = arith.index_cast %30 : i32 to index
      %32 = arith.index_cast %31 : index to i64
      %33 = llvm.getelementptr %28[%32] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %9, %33 : !llvm.ptr<i32>
      %34 = llvm.load %11 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
      %35 = llvm.getelementptr %34[%14] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %36 = llvm.getelementptr %34[%18] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      func.call @swap_heap_node(%35, %36) : (!llvm.ptr<ptr<struct<(f64, i32)>>>, !llvm.ptr<ptr<struct<(f64, i32)>>>) -> ()
      func.call @heapify(%arg0, %9) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>, i32) -> ()
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
        %16 = llvm.load %6 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
        %17 = arith.index_cast %arg3 : i32 to index
        %18 = arith.index_cast %17 : index to i64
        %19 = llvm.getelementptr %16[%18] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
        %20 = llvm.load %19 : !llvm.ptr<ptr<struct<(f64, i32)>>>
        %21 = llvm.getelementptr %20[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
        %22 = llvm.load %21 : !llvm.ptr<f64>
        %23 = arith.addi %arg3, %c-1_i32 : i32
        %24 = arith.divsi %23, %c2_i32 : i32
        %25 = arith.index_cast %24 : i32 to index
        %26 = arith.index_cast %25 : index to i64
        %27 = llvm.getelementptr %16[%26] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
        %28 = llvm.load %27 : !llvm.ptr<ptr<struct<(f64, i32)>>>
        %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
        %30 = llvm.load %29 : !llvm.ptr<f64>
        %31 = arith.cmpf olt, %22, %30 : f64
        %32 = arith.select %31, %24, %arg3 : i32
        scf.if %31 {
          %33 = llvm.load %0 : !llvm.ptr<ptr<i32>>
          %34 = llvm.load %6 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
          %35 = llvm.getelementptr %34[%18] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
          %36 = llvm.load %35 : !llvm.ptr<ptr<struct<(f64, i32)>>>
          %37 = llvm.getelementptr %36[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
          %38 = llvm.load %37 : !llvm.ptr<i32>
          %39 = arith.index_cast %38 : i32 to index
          %40 = arith.index_cast %39 : index to i64
          %41 = llvm.getelementptr %33[%40] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
          llvm.store %24, %41 : !llvm.ptr<i32>
          %42 = llvm.load %0 : !llvm.ptr<ptr<i32>>
          %43 = llvm.load %6 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
          %44 = llvm.getelementptr %43[%26] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
          %45 = llvm.load %44 : !llvm.ptr<ptr<struct<(f64, i32)>>>
          %46 = llvm.getelementptr %45[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
          %47 = llvm.load %46 : !llvm.ptr<i32>
          %48 = arith.index_cast %47 : i32 to index
          %49 = arith.index_cast %48 : index to i64
          %50 = llvm.getelementptr %42[%49] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
          llvm.store %arg3, %50 : !llvm.ptr<i32>
          %51 = llvm.load %6 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
          %52 = llvm.getelementptr %51[%18] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
          %53 = llvm.getelementptr %51[%26] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
          func.call @swap_heap_node(%52, %53) : (!llvm.ptr<ptr<struct<(f64, i32)>>>, !llvm.ptr<ptr<struct<(f64, i32)>>>) -> ()
        }
        scf.yield %31, %32 : i1, i32
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
      %7 = llvm.load %0 : !llvm.ptr<i32>
      %8 = arith.addi %7, %c-1_i32 : i32
      %9 = arith.index_cast %8 : i32 to index
      %10 = arith.index_cast %9 : index to i64
      %11 = llvm.getelementptr %5[%10] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
      %12 = llvm.load %11 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      llvm.store %12, %5 : !llvm.ptr<ptr<struct<(f64, i32)>>>
      %13 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %14 = llvm.load %13 : !llvm.ptr<ptr<i32>>
      %15 = llvm.getelementptr %6[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %16 = llvm.load %15 : !llvm.ptr<i32>
      %17 = arith.index_cast %16 : i32 to index
      %18 = arith.index_cast %17 : index to i64
      %19 = llvm.getelementptr %14[%18] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %20 = llvm.load %0 : !llvm.ptr<i32>
      %21 = arith.addi %20, %c-1_i32 : i32
      llvm.store %21, %19 : !llvm.ptr<i32>
      %22 = llvm.load %13 : !llvm.ptr<ptr<i32>>
      %23 = llvm.getelementptr %12[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
      %24 = llvm.load %23 : !llvm.ptr<i32>
      %25 = arith.index_cast %24 : i32 to index
      %26 = arith.index_cast %25 : index to i64
      %27 = llvm.getelementptr %22[%26] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %c0_i32, %27 : !llvm.ptr<i32>
      %28 = llvm.load %0 : !llvm.ptr<i32>
      %29 = arith.addi %28, %c-1_i32 : i32
      llvm.store %29, %0 : !llvm.ptr<i32>
      func.call @heapify(%arg0, %c0_i32) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, ptr<i32>)>>, i32) -> ()
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

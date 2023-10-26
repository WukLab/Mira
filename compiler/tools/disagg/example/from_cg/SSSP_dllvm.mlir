module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str9("Too many neighbours for node %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str8("After heapify\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("After heap init\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global private @MAX_D(dense<1.7976931348623157E+308> : tensor<1xf64>) {addr_space = 0 : i32} : !llvm.array<1 x f64>
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
  llvm.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 {
    %0 = llvm.mlir.constant(0 : index) : i64
    %1 = llvm.mlir.constant(8 : index) : i64
    %2 = llvm.mlir.constant(8 : i64) : i64
    %3 = llvm.mlir.constant(1 : i32) : i32
    %4 = llvm.mlir.constant(0 : i32) : i32
    %5 = llvm.mlir.constant(1 : index) : i64
    %6 = llvm.mlir.null : !llvm.ptr<i32>
    %7 = llvm.getelementptr %6[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %8 = llvm.ptrtoint %7 : !llvm.ptr<i32> to i64
    %9 = llvm.alloca %8 x i32 : (i64) -> !llvm.ptr<i32>
    llvm.store %4, %9 : !llvm.ptr<i32>
    %10 = llvm.getelementptr %arg1[2] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<i8>>
    %12 = llvm.call @atoi(%11) : (!llvm.ptr<i8>) -> i32
    %13 = llvm.getelementptr %arg1[3] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<i8>>
    %15 = llvm.call @atoi(%14) : (!llvm.ptr<i8>) -> i32
    %16 = llvm.trunc %12 : i32 to i8
    %17 = llvm.trunc %15 : i32 to i8
    %18 = llvm.getelementptr %arg1[1] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %19 = llvm.load %18 : !llvm.ptr<ptr<i8>>
    %20 = llvm.call @init_graph(%16, %17, %19, %9, %9, %0, %5, %5) : (i8, i8, !llvm.ptr<i8>, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64) -> !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>
    %21 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %22 = llvm.load %21 : !llvm.ptr<i32>
    %23 = llvm.sext %22 : i32 to i64
    %24 = llvm.mul %23, %2  : i64
    %25 = llvm.udiv %24, %1  : i64
    %26 = llvm.mlir.null : !llvm.ptr<f64>
    %27 = llvm.getelementptr %26[%25] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %28 = llvm.ptrtoint %27 : !llvm.ptr<f64> to i64
    %29 = llvm.call @malloc(%28) : (i64) -> !llvm.ptr<i8>
    %30 = llvm.bitcast %29 : !llvm.ptr<i8> to !llvm.ptr<f64>
    llvm.call @dijkstra(%20, %4, %30, %30, %0, %25, %5) : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, i32, !llvm.ptr<f64>, !llvm.ptr<f64>, i64, i64, i64) -> ()
    %31 = llvm.mlir.addressof @str0 : !llvm.ptr<array<13 x i8>>
    %32 = llvm.getelementptr %31[0, 0] : (!llvm.ptr<array<13 x i8>>) -> !llvm.ptr<i8>
    %33 = llvm.mlir.addressof @str1 : !llvm.ptr<array<2 x i8>>
    %34 = llvm.getelementptr %33[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %35 = llvm.call @fopen(%32, %34) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %36 = llvm.mlir.addressof @str2 : !llvm.ptr<array<5 x i8>>
    %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr<array<5 x i8>>) -> !llvm.ptr<i8>
    llvm.br ^bb1(%4 : i32)
  ^bb1(%38: i32):  // 2 preds: ^bb0, ^bb2
    %39 = llvm.load %9 : !llvm.ptr<i32>
    %40 = llvm.icmp "slt" %38, %39 : i32
    llvm.cond_br %40, ^bb2(%38 : i32), ^bb3
  ^bb2(%41: i32):  // pred: ^bb1
    %42 = llvm.sext %41 : i32 to i64
    %43 = llvm.getelementptr %30[%42] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %44 = llvm.load %43 : !llvm.ptr<f64>
    %45 = llvm.call @fprintf(%35, %37, %44) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, f64) -> i32
    %46 = llvm.add %41, %3  : i32
    llvm.br ^bb1(%46 : i32)
  ^bb3:  // pred: ^bb1
    %47 = llvm.call @fclose(%35) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
    llvm.return %4 : i32
  }
  llvm.func @init_graph(%arg0: i8, %arg1: i8, %arg2: !llvm.ptr<i8>, %arg3: !llvm.ptr<i32>, %arg4: !llvm.ptr<i32>, %arg5: i64, %arg6: i64, %arg7: i64) -> !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(2000000 : i32) : i32
    %3 = llvm.mlir.constant(1 : i32) : i32
    %4 = llvm.mlir.constant(-1 : i32) : i32
    %5 = llvm.mlir.constant(0 : i8) : i8
    %6 = llvm.mlir.constant(1.000000e+02 : f64) : f64
    %7 = llvm.mlir.constant(272000000 : i64) : i64
    %8 = llvm.mlir.constant(16 : i64) : i64
    %9 = llvm.mlir.constant(true) : i1
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(0 : index) : i64
    %12 = llvm.mlir.constant(2000000 : index) : i64
    %13 = llvm.alloca %0 x f64 : (i64) -> !llvm.ptr<f64>
    %14 = llvm.alloca %0 x i32 : (i64) -> !llvm.ptr<i32>
    %15 = llvm.alloca %0 x i32 : (i64) -> !llvm.ptr<i32>
    %16 = llvm.alloca %0 x i32 : (i64) -> !llvm.ptr<i32>
    %17 = llvm.mlir.undef : f64
    %18 = llvm.call @malloc(%8) : (i64) -> !llvm.ptr<i8>
    %19 = llvm.bitcast %18 : !llvm.ptr<i8> to !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %21 = llvm.call @malloc(%7) : (i64) -> !llvm.ptr<i8>
    %22 = llvm.bitcast %21 : !llvm.ptr<i8> to !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
    llvm.store %22, %20 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    llvm.br ^bb1(%11 : i64)
  ^bb1(%23: i64):  // 2 preds: ^bb0, ^bb2
    %24 = llvm.icmp "slt" %23, %12 : i64
    llvm.cond_br %24, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %25 = llvm.load %20 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %26 = llvm.getelementptr %25[%23] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
    %27 = llvm.getelementptr %26[0, 1] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<i32>
    llvm.store %1, %27 : !llvm.ptr<i32>
    %28 = llvm.add %23, %10  : i64
    llvm.br ^bb1(%28 : i64)
  ^bb3:  // pred: ^bb1
    %29 = llvm.mlir.addressof @str3 : !llvm.ptr<array<2 x i8>>
    %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %31 = llvm.call @fopen(%arg2, %30) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %32 = llvm.mlir.null : !llvm.ptr<i8>
    %33 = llvm.bitcast %32 : !llvm.ptr<i8> to !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    %34 = llvm.icmp "eq" %31, %33 : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
    llvm.cond_br %34, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %35 = llvm.mlir.addressof @str4 : !llvm.ptr<array<23 x i8>>
    %36 = llvm.getelementptr %35[0, 0] : (!llvm.ptr<array<23 x i8>>) -> !llvm.ptr<i8>
    %37 = llvm.call @printf(%36, %arg2) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
    llvm.call @exit(%3) : (i32) -> ()
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb3, ^bb4
    %38 = llvm.icmp "ne" %arg1, %5 : i8
    llvm.br ^bb6(%17, %1, %4, %9 : f64, i32, i32, i1)
  ^bb6(%39: f64, %40: i32, %41: i32, %42: i1):  // 2 preds: ^bb5, ^bb26
    llvm.cond_br %42, ^bb7(%41, %39, %40 : i32, f64, i32), ^bb27
  ^bb7(%43: i32, %44: f64, %45: i32):  // pred: ^bb6
    llvm.cond_br %38, ^bb8, ^bb17
  ^bb8:  // pred: ^bb7
    %46 = llvm.mlir.addressof @str6 : !llvm.ptr<array<7 x i8>>
    %47 = llvm.getelementptr %46[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
    %48 = llvm.call @__isoc99_fscanf(%31, %47, %16, %15) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> i32
    %49 = llvm.load %16 : !llvm.ptr<i32>
    %50 = llvm.load %15 : !llvm.ptr<i32>
    %51 = llvm.icmp "eq" %48, %4 : i32
    %52 = llvm.icmp "ne" %48, %4 : i32
    llvm.cond_br %51, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    llvm.br ^bb15(%44, %45 : f64, i32)
  ^bb10:  // pred: ^bb8
    %53 = llvm.icmp "eq" %49, %4 : i32
    llvm.cond_br %53, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %54 = llvm.add %45, %3  : i32
    llvm.br ^bb13(%54 : i32)
  ^bb12:  // pred: ^bb10
    llvm.br ^bb13(%1 : i32)
  ^bb13(%55: i32):  // 2 preds: ^bb11, ^bb12
    llvm.br ^bb14
  ^bb14:  // pred: ^bb13
    %56 = llvm.add %55, %3  : i32
    %57 = llvm.sitofp %56 : i32 to f64
    %58 = llvm.fdiv %57, %6  : f64
    llvm.br ^bb15(%58, %56 : f64, i32)
  ^bb15(%59: f64, %60: i32):  // 2 preds: ^bb9, ^bb14
    llvm.br ^bb16
  ^bb16:  // pred: ^bb15
    llvm.br ^bb18(%59, %60, %50, %49, %52 : f64, i32, i32, i32, i1)
  ^bb17:  // pred: ^bb7
    %61 = llvm.mlir.addressof @str5 : !llvm.ptr<array<14 x i8>>
    %62 = llvm.getelementptr %61[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
    %63 = llvm.call @__isoc99_fscanf(%31, %62, %16, %15, %14, %13) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<f64>) -> i32
    %64 = llvm.load %15 : !llvm.ptr<i32>
    %65 = llvm.load %14 : !llvm.ptr<i32>
    %66 = llvm.load %13 : !llvm.ptr<f64>
    %67 = llvm.icmp "ne" %63, %4 : i32
    llvm.br ^bb18(%66, %45, %65, %64, %67 : f64, i32, i32, i32, i1)
  ^bb18(%68: f64, %69: i32, %70: i32, %71: i32, %72: i1):  // 2 preds: ^bb16, ^bb17
    llvm.br ^bb19
  ^bb19:  // pred: ^bb18
    %73 = llvm.icmp "slt" %71, %2 : i32
    %74 = llvm.and %72, %73  : i1
    %75 = llvm.icmp "slt" %70, %2 : i32
    %76 = llvm.and %74, %75  : i1
    %77 = llvm.and %76, %72  : i1
    llvm.cond_br %77, ^bb20, ^bb24(%43 : i32)
  ^bb20:  // pred: ^bb19
    llvm.call @add_edge(%19, %71, %70, %68) : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, i32, i32, f64) -> ()
    %78 = llvm.icmp "sgt" %43, %71 : i32
    %79 = llvm.select %78, %43, %71 : i1, i32
    %80 = llvm.icmp "eq" %arg0, %5 : i8
    llvm.cond_br %80, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    llvm.call @add_edge(%19, %70, %71, %68) : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, i32, i32, f64) -> ()
    %81 = llvm.icmp "sgt" %79, %70 : i32
    %82 = llvm.select %81, %79, %70 : i1, i32
    llvm.br ^bb23(%82 : i32)
  ^bb22:  // pred: ^bb20
    llvm.br ^bb23(%79 : i32)
  ^bb23(%83: i32):  // 2 preds: ^bb21, ^bb22
    llvm.br ^bb24(%83 : i32)
  ^bb24(%84: i32):  // 2 preds: ^bb19, ^bb23
    llvm.br ^bb25(%84 : i32)
  ^bb25(%85: i32):  // pred: ^bb24
    llvm.br ^bb26
  ^bb26:  // pred: ^bb25
    llvm.br ^bb6(%68, %69, %85, %72 : f64, i32, i32, i1)
  ^bb27:  // pred: ^bb6
    %86 = llvm.call @fclose(%31) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>) -> i32
    %87 = llvm.getelementptr %19[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %88 = llvm.add %41, %3  : i32
    llvm.store %88, %87 : !llvm.ptr<i32>
    llvm.store %88, %arg4 : !llvm.ptr<i32>
    llvm.return %19 : !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>
  }
  llvm.func @dijkstra(%arg0: !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, %arg1: i32, %arg2: !llvm.ptr<f64>, %arg3: !llvm.ptr<f64>, %arg4: i64, %arg5: i64, %arg6: i64) {
    %0 = llvm.mlir.constant(2 : i32) : i32
    %1 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(true) : i1
    %3 = llvm.mlir.constant(-2 : i32) : i32
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = llvm.mlir.constant(-1 : index) : i64
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(0 : i32) : i32
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<i32>
    %10 = llvm.load %9 : !llvm.ptr<i32>
    %11 = llvm.call @init_min_heap(%10) : (i32) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %12 = llvm.mlir.addressof @MAX_D : !llvm.ptr<array<1 x f64>>
    %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<array<1 x f64>>) -> !llvm.ptr<f64>
    %14 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %15 = llvm.getelementptr %11[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    llvm.br ^bb1(%7 : i32)
  ^bb1(%16: i32):  // 2 preds: ^bb0, ^bb2
    %17 = llvm.load %9 : !llvm.ptr<i32>
    %18 = llvm.icmp "slt" %16, %17 : i32
    llvm.cond_br %18, ^bb2(%16 : i32), ^bb3
  ^bb2(%19: i32):  // pred: ^bb1
    %20 = llvm.sext %19 : i32 to i64
    %21 = llvm.load %13 : !llvm.ptr<f64>
    %22 = llvm.getelementptr %arg3[%20] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %21, %22 : !llvm.ptr<f64>
    %23 = llvm.load %14 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %24 = llvm.getelementptr %23[%20] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %25 = llvm.getelementptr %arg3[%20] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %26 = llvm.load %25 : !llvm.ptr<f64>
    %27 = llvm.call @new_heap_node(%19, %26) : (i32, f64) -> !llvm.ptr<struct<(f64, i32)>>
    llvm.store %27, %24 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %28 = llvm.load %15 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %29 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.getelementptr %29[%20] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %19, %30 : !llvm.ptr<i32>
    %31 = llvm.add %19, %6  : i32
    llvm.br ^bb1(%31 : i32)
  ^bb3:  // pred: ^bb1
    %32 = llvm.getelementptr %11[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>
    %33 = llvm.load %9 : !llvm.ptr<i32>
    llvm.store %33, %32 : !llvm.ptr<i32>
    %34 = llvm.mlir.addressof @str7 : !llvm.ptr<array<17 x i8>>
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<array<17 x i8>>) -> !llvm.ptr<i8>
    %36 = llvm.call @printf(%35) : (!llvm.ptr<i8>) -> i32
    %37 = llvm.load %32 : !llvm.ptr<i32>
    %38 = llvm.add %37, %3  : i32
    %39 = llvm.sdiv %38, %0  : i32
    %40 = llvm.add %39, %6  : i32
    %41 = llvm.sext %40 : i32 to i64
    llvm.br ^bb4(%8 : i64)
  ^bb4(%42: i64):  // 2 preds: ^bb3, ^bb5
    %43 = llvm.icmp "slt" %42, %41 : i64
    llvm.cond_br %43, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %44 = llvm.mul %42, %5  : i64
    %45 = llvm.sext %39 : i32 to i64
    %46 = llvm.add %45, %44  : i64
    %47 = llvm.trunc %46 : i64 to i32
    llvm.call @heapify(%11, %47) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, i32) -> ()
    %48 = llvm.add %42, %4  : i64
    llvm.br ^bb4(%48 : i64)
  ^bb6:  // pred: ^bb4
    %49 = llvm.mlir.addressof @str8 : !llvm.ptr<array<15 x i8>>
    %50 = llvm.getelementptr %49[0, 0] : (!llvm.ptr<array<15 x i8>>) -> !llvm.ptr<i8>
    %51 = llvm.call @printf(%50) : (!llvm.ptr<i8>) -> i32
    %52 = llvm.sext %arg1 : i32 to i64
    %53 = llvm.getelementptr %arg3[%52] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %1, %53 : !llvm.ptr<f64>
    llvm.call @decrease_key(%11, %arg1, %1) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, i32, f64) -> ()
    llvm.br ^bb7(%2 : i1)
  ^bb7(%54: i1):  // 2 preds: ^bb6, ^bb20
    %55 = llvm.load %32 : !llvm.ptr<i32>
    %56 = llvm.icmp "eq" %55, %7 : i32
    %57 = llvm.sext %56 : i1 to i32
    %58 = llvm.icmp "eq" %57, %7 : i32
    %59 = llvm.and %58, %54  : i1
    llvm.cond_br %59, ^bb8, ^bb21
  ^bb8:  // pred: ^bb7
    %60 = llvm.call @extract_min(%11) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(f64, i32)>>
    %61 = llvm.getelementptr %60[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %62 = llvm.load %61 : !llvm.ptr<i32>
    %63 = llvm.sext %62 : i32 to i64
    %64 = llvm.getelementptr %arg3[%63] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %65 = llvm.load %64 : !llvm.ptr<f64>
    %66 = llvm.load %13 : !llvm.ptr<f64>
    %67 = llvm.fcmp "oge" %65, %66 : f64
    %68 = llvm.xor %67, %2  : i1
    llvm.cond_br %67, ^bb9, ^bb10
  ^bb9:  // 2 preds: ^bb8, ^bb11
    llvm.br ^bb19
  ^bb10:  // pred: ^bb8
    %69 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    llvm.br ^bb11(%7 : i32)
  ^bb11(%70: i32):  // 2 preds: ^bb10, ^bb18
    %71 = llvm.load %69 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %72 = llvm.getelementptr %71[%63] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
    %73 = llvm.getelementptr %72[0, 1] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<i32>
    %74 = llvm.load %73 : !llvm.ptr<i32>
    %75 = llvm.icmp "slt" %70, %74 : i32
    llvm.cond_br %75, ^bb12(%70 : i32), ^bb9
  ^bb12(%76: i32):  // pred: ^bb11
    %77 = llvm.load %69 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %78 = llvm.getelementptr %77[%63] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
    %79 = llvm.getelementptr %78[0, 0] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<array<16 x ptr<struct<(f64, i32)>>>>
    %80 = llvm.getelementptr %79[0, 0] : (!llvm.ptr<array<16 x ptr<struct<(f64, i32)>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %81 = llvm.sext %76 : i32 to i64
    %82 = llvm.getelementptr %80[%81] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %83 = llvm.load %82 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %84 = llvm.getelementptr %83[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %85 = llvm.load %84 : !llvm.ptr<i32>
    %86 = llvm.load %15 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %87 = llvm.sext %85 : i32 to i64
    %88 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.getelementptr %88[%87] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %90 = llvm.load %89 : !llvm.ptr<i32>
    %91 = llvm.load %32 : !llvm.ptr<i32>
    %92 = llvm.icmp "slt" %90, %91 : i32
    llvm.cond_br %92, ^bb13, ^bb18
  ^bb13:  // pred: ^bb12
    %93 = llvm.getelementptr %arg3[%87] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %94 = llvm.load %93 : !llvm.ptr<f64>
    %95 = llvm.getelementptr %83[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %96 = llvm.load %95 : !llvm.ptr<f64>
    %97 = llvm.getelementptr %arg3[%63] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %98 = llvm.load %97 : !llvm.ptr<f64>
    %99 = llvm.fadd %96, %98  : f64
    %100 = llvm.fcmp "olt" %94, %99 : f64
    llvm.cond_br %100, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %101 = llvm.getelementptr %arg3[%87] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %102 = llvm.load %101 : !llvm.ptr<f64>
    llvm.br ^bb16(%102 : f64)
  ^bb15:  // pred: ^bb13
    %103 = llvm.load %95 : !llvm.ptr<f64>
    %104 = llvm.getelementptr %arg3[%63] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %105 = llvm.load %104 : !llvm.ptr<f64>
    %106 = llvm.fadd %103, %105  : f64
    llvm.br ^bb16(%106 : f64)
  ^bb16(%107: f64):  // 2 preds: ^bb14, ^bb15
    llvm.br ^bb17
  ^bb17:  // pred: ^bb16
    %108 = llvm.getelementptr %arg3[%87] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %107, %108 : !llvm.ptr<f64>
    %109 = llvm.getelementptr %arg3[%87] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %110 = llvm.load %109 : !llvm.ptr<f64>
    llvm.call @decrease_key(%11, %85, %110) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, i32, f64) -> ()
    llvm.br ^bb18
  ^bb18:  // 2 preds: ^bb12, ^bb17
    %111 = llvm.add %76, %6  : i32
    llvm.br ^bb11(%111 : i32)
  ^bb19:  // pred: ^bb9
    llvm.br ^bb20
  ^bb20:  // pred: ^bb19
    llvm.br ^bb7(%68 : i1)
  ^bb21:  // pred: ^bb7
    llvm.return
  }
  llvm.func @exit(i32) attributes {sym_visibility = "private"}
  llvm.func @add_edge(%arg0: !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, %arg1: i32, %arg2: i32, %arg3: f64) {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(16 : i32) : i32
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %4 = llvm.sext %arg1 : i32 to i64
    %5 = llvm.getelementptr %3[%4] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<i32>
    %7 = llvm.load %6 : !llvm.ptr<i32>
    %8 = llvm.icmp "sge" %7, %1 : i32
    llvm.cond_br %8, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %9 = llvm.mlir.addressof @str9 : !llvm.ptr<array<33 x i8>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<33 x i8>>) -> !llvm.ptr<i8>
    %11 = llvm.call @printf(%10, %arg1) : (!llvm.ptr<i8>, i32) -> i32
    llvm.call @exit(%0) : (i32) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %12 = llvm.load %2 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %13 = llvm.getelementptr %12[%4] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
    %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<array<16 x ptr<struct<(f64, i32)>>>>
    %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<array<16 x ptr<struct<(f64, i32)>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %16 = llvm.getelementptr %13[0, 1] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<i32>
    %17 = llvm.load %16 : !llvm.ptr<i32>
    %18 = llvm.add %17, %0  : i32
    llvm.store %18, %16 : !llvm.ptr<i32>
    %19 = llvm.sext %17 : i32 to i64
    %20 = llvm.getelementptr %15[%19] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %21 = llvm.call @new_graph_node(%arg2, %arg3) : (i32, f64) -> !llvm.ptr<struct<(f64, i32)>>
    llvm.store %21, %20 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.return
  }
  llvm.func @init_min_heap(%arg0: i32) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>> {
    %0 = llvm.mlir.constant(0 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(4 : i64) : i64
    %4 = llvm.mlir.constant(8 : i64) : i64
    %5 = llvm.mlir.constant(0 : i32) : i32
    %6 = llvm.mlir.constant(56 : i64) : i64
    %7 = llvm.call @malloc(%6) : (i64) -> !llvm.ptr<i8>
    %8 = llvm.bitcast %7 : !llvm.ptr<i8> to !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %9 = llvm.getelementptr %8[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %10 = llvm.sext %arg0 : i32 to i64
    %11 = llvm.mul %10, %3  : i64
    %12 = llvm.udiv %11, %2  : i64
    %13 = llvm.mlir.null : !llvm.ptr<i32>
    %14 = llvm.getelementptr %13[%12] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %15 = llvm.ptrtoint %14 : !llvm.ptr<i32> to i64
    %16 = llvm.call @malloc(%15) : (i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %0, %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %12, %21[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.insertvalue %1, %22[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %23, %9 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %24 = llvm.getelementptr %8[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>
    llvm.store %5, %24 : !llvm.ptr<i32>
    %25 = llvm.getelementptr %8[0, 2] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>
    llvm.store %arg0, %25 : !llvm.ptr<i32>
    %26 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %27 = llvm.mul %10, %4  : i64
    %28 = llvm.call @malloc(%27) : (i64) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %29, %26 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    llvm.return %8 : !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
  }
  llvm.func @new_heap_node(%arg0: i32, %arg1: f64) -> !llvm.ptr<struct<(f64, i32)>> {
    %0 = llvm.mlir.constant(16 : i64) : i64
    %1 = llvm.call @malloc(%0) : (i64) -> !llvm.ptr<i8>
    %2 = llvm.bitcast %1 : !llvm.ptr<i8> to !llvm.ptr<struct<(f64, i32)>>
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    llvm.store %arg0, %3 : !llvm.ptr<i32>
    %4 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    llvm.store %arg1, %4 : !llvm.ptr<f64>
    llvm.return %2 : !llvm.ptr<struct<(f64, i32)>>
  }
  llvm.func @heapify(%arg0: !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, %arg1: i32) {
    %0 = llvm.mlir.constant(2 : i32) : i32
    %1 = llvm.mlir.constant(1 : i32) : i32
    %2 = llvm.shl %arg1, %1  : i32
    %3 = llvm.add %2, %1  : i32
    %4 = llvm.add %2, %0  : i32
    %5 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>
    %6 = llvm.load %5 : !llvm.ptr<i32>
    %7 = llvm.icmp "slt" %3, %6 : i32
    llvm.cond_br %7, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %8 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %10 = llvm.sext %3 : i32 to i64
    %11 = llvm.getelementptr %9[%10] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %12 = llvm.load %11 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %14 = llvm.load %13 : !llvm.ptr<f64>
    %15 = llvm.sext %arg1 : i32 to i64
    %16 = llvm.getelementptr %9[%15] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %17 = llvm.load %16 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %18 = llvm.getelementptr %17[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %19 = llvm.load %18 : !llvm.ptr<f64>
    %20 = llvm.fcmp "olt" %14, %19 : f64
    %21 = llvm.select %20, %3, %arg1 : i1, i32
    llvm.br ^bb3(%21 : i32)
  ^bb2:  // pred: ^bb0
    llvm.br ^bb3(%arg1 : i32)
  ^bb3(%22: i32):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    %23 = llvm.load %5 : !llvm.ptr<i32>
    %24 = llvm.icmp "slt" %4, %23 : i32
    llvm.cond_br %24, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %25 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %26 = llvm.load %25 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %27 = llvm.sext %4 : i32 to i64
    %28 = llvm.getelementptr %26[%27] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %29 = llvm.load %28 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %31 = llvm.load %30 : !llvm.ptr<f64>
    %32 = llvm.sext %22 : i32 to i64
    %33 = llvm.getelementptr %26[%32] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %34 = llvm.load %33 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %36 = llvm.load %35 : !llvm.ptr<f64>
    %37 = llvm.fcmp "olt" %31, %36 : f64
    %38 = llvm.select %37, %4, %22 : i1, i32
    llvm.br ^bb7(%38 : i32)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%22 : i32)
  ^bb7(%39: i32):  // 2 preds: ^bb5, ^bb6
    llvm.br ^bb8
  ^bb8:  // pred: ^bb7
    %40 = llvm.icmp "ne" %39, %arg1 : i32
    llvm.cond_br %40, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    %41 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %42 = llvm.load %41 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %43 = llvm.sext %39 : i32 to i64
    %44 = llvm.getelementptr %42[%43] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %45 = llvm.load %44 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %46 = llvm.sext %arg1 : i32 to i64
    %47 = llvm.getelementptr %42[%46] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %48 = llvm.load %47 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %49 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %50 = llvm.load %49 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %51 = llvm.getelementptr %45[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %52 = llvm.load %51 : !llvm.ptr<i32>
    %53 = llvm.sext %52 : i32 to i64
    %54 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.getelementptr %54[%53] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %arg1, %55 : !llvm.ptr<i32>
    %56 = llvm.load %49 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %57 = llvm.getelementptr %48[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %58 = llvm.load %57 : !llvm.ptr<i32>
    %59 = llvm.sext %58 : i32 to i64
    %60 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %60[%59] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %39, %61 : !llvm.ptr<i32>
    %62 = llvm.load %41 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %63 = llvm.getelementptr %62[%43] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %64 = llvm.getelementptr %62[%46] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.call @swap_heap_node(%63, %64) : (!llvm.ptr<ptr<struct<(f64, i32)>>>, !llvm.ptr<ptr<struct<(f64, i32)>>>) -> ()
    llvm.call @heapify(%arg0, %39) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, i32) -> ()
    llvm.br ^bb10
  ^bb10:  // 2 preds: ^bb8, ^bb9
    llvm.return
  }
  llvm.func @decrease_key(%arg0: !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, %arg1: i32, %arg2: f64) {
    %0 = llvm.mlir.constant(-1 : i32) : i32
    %1 = llvm.mlir.constant(false) : i1
    %2 = llvm.mlir.constant(2 : i32) : i32
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %5 = llvm.load %4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %6 = llvm.sext %arg1 : i32 to i64
    %7 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.getelementptr %7[%6] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %9 = llvm.load %8 : !llvm.ptr<i32>
    %10 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %12 = llvm.sext %9 : i32 to i64
    %13 = llvm.getelementptr %11[%12] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    llvm.store %arg2, %15 : !llvm.ptr<f64>
    llvm.br ^bb1(%9 : i32)
  ^bb1(%16: i32):  // 2 preds: ^bb0, ^bb6
    %17 = llvm.icmp "ne" %16, %3 : i32
    llvm.cond_br %17, ^bb2, ^bb4(%1, %16 : i1, i32)
  ^bb2:  // pred: ^bb1
    %18 = llvm.load %10 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %19 = llvm.sext %16 : i32 to i64
    %20 = llvm.getelementptr %18[%19] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %21 = llvm.load %20 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %22 = llvm.getelementptr %21[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %23 = llvm.load %22 : !llvm.ptr<f64>
    %24 = llvm.add %16, %0  : i32
    %25 = llvm.sdiv %24, %2  : i32
    %26 = llvm.sext %25 : i32 to i64
    %27 = llvm.getelementptr %18[%26] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %28 = llvm.load %27 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %30 = llvm.load %29 : !llvm.ptr<f64>
    %31 = llvm.fcmp "olt" %23, %30 : f64
    %32 = llvm.select %31, %25, %16 : i1, i32
    llvm.cond_br %31, ^bb3, ^bb4(%31, %32 : i1, i32)
  ^bb3:  // pred: ^bb2
    %33 = llvm.load %4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %34 = llvm.load %10 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %35 = llvm.getelementptr %34[%19] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %36 = llvm.load %35 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %37 = llvm.getelementptr %36[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %38 = llvm.load %37 : !llvm.ptr<i32>
    %39 = llvm.sext %38 : i32 to i64
    %40 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.getelementptr %40[%39] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %25, %41 : !llvm.ptr<i32>
    %42 = llvm.load %4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %43 = llvm.load %10 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %44 = llvm.getelementptr %43[%26] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %45 = llvm.load %44 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %46 = llvm.getelementptr %45[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %47 = llvm.load %46 : !llvm.ptr<i32>
    %48 = llvm.sext %47 : i32 to i64
    %49 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.getelementptr %49[%48] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %16, %50 : !llvm.ptr<i32>
    %51 = llvm.load %10 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %52 = llvm.getelementptr %51[%19] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %53 = llvm.getelementptr %51[%26] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.call @swap_heap_node(%52, %53) : (!llvm.ptr<ptr<struct<(f64, i32)>>>, !llvm.ptr<ptr<struct<(f64, i32)>>>) -> ()
    llvm.br ^bb4(%31, %32 : i1, i32)
  ^bb4(%54: i1, %55: i32):  // 3 preds: ^bb1, ^bb2, ^bb3
    llvm.br ^bb5(%54, %55 : i1, i32)
  ^bb5(%56: i1, %57: i32):  // pred: ^bb4
    llvm.br ^bb6
  ^bb6:  // pred: ^bb5
    llvm.cond_br %56, ^bb1(%57 : i32), ^bb7
  ^bb7:  // pred: ^bb6
    llvm.return
  }
  llvm.func @extract_min(%arg0: !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(f64, i32)>> {
    %0 = llvm.mlir.constant(-1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>
    %3 = llvm.load %2 : !llvm.ptr<i32>
    %4 = llvm.icmp "eq" %3, %1 : i32
    llvm.cond_br %4, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %5 = llvm.mlir.null : !llvm.ptr<struct<(f64, i32)>>
    llvm.br ^bb3(%5 : !llvm.ptr<struct<(f64, i32)>>)
  ^bb2:  // pred: ^bb0
    %6 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %8 = llvm.load %7 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %9 = llvm.load %2 : !llvm.ptr<i32>
    %10 = llvm.add %9, %0  : i32
    %11 = llvm.sext %10 : i32 to i64
    %12 = llvm.getelementptr %7[%11] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %13 = llvm.load %12 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %13, %7 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %14 = llvm.getelementptr %arg0[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %15 = llvm.load %14 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %16 = llvm.getelementptr %8[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %17 = llvm.load %16 : !llvm.ptr<i32>
    %18 = llvm.sext %17 : i32 to i64
    %19 = llvm.load %2 : !llvm.ptr<i32>
    %20 = llvm.add %19, %0  : i32
    %21 = llvm.extractvalue %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.getelementptr %21[%18] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %20, %22 : !llvm.ptr<i32>
    %23 = llvm.load %14 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %24 = llvm.getelementptr %13[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %25 = llvm.load %24 : !llvm.ptr<i32>
    %26 = llvm.sext %25 : i32 to i64
    %27 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.getelementptr %27[%26] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %1, %28 : !llvm.ptr<i32>
    %29 = llvm.load %2 : !llvm.ptr<i32>
    %30 = llvm.add %29, %0  : i32
    llvm.store %30, %2 : !llvm.ptr<i32>
    llvm.call @heapify(%arg0, %1) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, i32) -> ()
    llvm.br ^bb3(%8 : !llvm.ptr<struct<(f64, i32)>>)
  ^bb3(%31: !llvm.ptr<struct<(f64, i32)>>):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    llvm.return %31 : !llvm.ptr<struct<(f64, i32)>>
  }
  llvm.func @new_graph_node(%arg0: i32, %arg1: f64) -> !llvm.ptr<struct<(f64, i32)>> {
    %0 = llvm.mlir.constant(16 : i64) : i64
    %1 = llvm.call @malloc(%0) : (i64) -> !llvm.ptr<i8>
    %2 = llvm.bitcast %1 : !llvm.ptr<i8> to !llvm.ptr<struct<(f64, i32)>>
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    llvm.store %arg0, %3 : !llvm.ptr<i32>
    %4 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    llvm.store %arg1, %4 : !llvm.ptr<f64>
    llvm.return %2 : !llvm.ptr<struct<(f64, i32)>>
  }
  llvm.func @swap_heap_node(%arg0: !llvm.ptr<ptr<struct<(f64, i32)>>>, %arg1: !llvm.ptr<ptr<struct<(f64, i32)>>>) {
    %0 = llvm.load %arg0 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %1 = llvm.load %arg1 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %1, %arg0 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %0, %arg1 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.return
  }
}

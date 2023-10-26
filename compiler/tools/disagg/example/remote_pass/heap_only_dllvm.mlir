module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%d-%f\0A\00") {addr_space = 0 : i32}
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(10 : index) : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(5 : index) : i64
    %5 = llvm.mlir.constant(-1 : index) : i64
    %6 = llvm.mlir.constant(4 : index) : i64
    %7 = llvm.mlir.constant(9.990000e+01 : f64) : f64
    %8 = llvm.mlir.constant(10 : i32) : i32
    %9 = llvm.call @init_min_heap(%8) : (i32) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>
    %10 = builtin.unrealized_conversion_cast %9 : !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)> to !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>
    %11 = rmem.materialize %10 : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    llvm.br ^bb1(%1 : i64)
  ^bb1(%12: i64):  // 2 preds: ^bb0, ^bb2
    %13 = llvm.icmp "slt" %12, %0 : i64
    llvm.cond_br %13, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %14 = llvm.trunc %12 : i64 to i32
    %15 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %16 = llvm.load %15 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %17 = llvm.getelementptr %16[%12] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %18 = llvm.call @new_heap_node(%14, %7) : (i32, f64) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>
    %19 = rmem.unpack(%18) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>) -> !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
    %20 = rmem.materialize %19 : (!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>
    llvm.store %20, %17 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %21 = llvm.getelementptr %11[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %22 = llvm.load %21 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %23 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.getelementptr %23[%12] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %14, %24 : !llvm.ptr<i32>
    %25 = llvm.add %12, %2  : i64
    llvm.br ^bb1(%25 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%1 : i64)
  ^bb4(%26: i64):  // 2 preds: ^bb3, ^bb5
    %27 = llvm.icmp "slt" %26, %4 : i64
    llvm.cond_br %27, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %28 = llvm.mul %26, %5  : i64
    %29 = llvm.add %28, %6  : i64
    %30 = llvm.trunc %29 : i64 to i32
    %31 = rmem.pack(%10) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>
    llvm.call @heapify(%31, %30) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>, i32) -> ()
    %32 = llvm.add %26, %2  : i64
    llvm.br ^bb4(%32 : i64)
  ^bb6:  // pred: ^bb4
    %33 = llvm.getelementptr %11[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>
    %34 = llvm.mlir.addressof @str0 : !llvm.ptr<array<7 x i8>>
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb6, ^bb8
    %36 = llvm.load %33 : !llvm.ptr<i32>
    %37 = llvm.icmp "ne" %36, %3 : i32
    llvm.cond_br %37, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %38 = rmem.pack(%10) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>
    %39 = llvm.call @extract_min(%38) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>
    %40 = rmem.unpack(%39) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>) -> !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
    %41 = rmem.materialize %40 : (!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>
    %42 = llvm.getelementptr %41[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %43 = llvm.load %42 : !llvm.ptr<i32>
    %44 = llvm.getelementptr %41[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %45 = llvm.load %44 : !llvm.ptr<f64>
    %46 = llvm.call @printf(%35, %43, %45) : (!llvm.ptr<i8>, i32, f64) -> i32
    llvm.br ^bb7
  ^bb9:  // pred: ^bb7
    llvm.return %3 : i32
  }
  llvm.func @init_min_heap(%arg0: i32) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)> {
    %0 = llvm.mlir.constant(0 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(4 : i64) : i64
    %4 = llvm.mlir.constant(8 : i64) : i64
    %5 = llvm.mlir.constant(0 : i32) : i32
    %6 = llvm.mlir.constant(56 : i64) : i64
    %7 = rmem.malloc_ptr %6 : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
    %8 = rmem.materialize %7 : (!rmem.rmref<!llvm.ptr<i8>>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %10 = builtin.unrealized_conversion_cast %9 : !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>> to !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>
    %11 = llvm.getelementptr %9[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %12 = llvm.sext %arg0 : i32 to i64
    %13 = llvm.mul %12, %3  : i64
    %14 = llvm.udiv %13, %2  : i64
    %15 = llvm.mlir.null : !llvm.ptr<i32>
    %16 = llvm.getelementptr %15[%14] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %17 = llvm.ptrtoint %16 : !llvm.ptr<i32> to i64
    %18 = rmem.malloc_ptr %17 : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
    %19 = rmem.materialize %18 : (!rmem.rmref<!llvm.ptr<i8>>) -> !llvm.ptr<i8>
    %20 = llvm.bitcast %19 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %21 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.insertvalue %20, %21[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %23 = llvm.insertvalue %20, %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.insertvalue %0, %23[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.insertvalue %14, %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %26 = llvm.insertvalue %1, %25[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    llvm.store %26, %11 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %27 = llvm.getelementptr %9[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>
    llvm.store %5, %27 : !llvm.ptr<i32>
    %28 = llvm.getelementptr %9[0, 2] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>
    llvm.store %arg0, %28 : !llvm.ptr<i32>
    %29 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %30 = llvm.mul %12, %4  : i64
    %31 = rmem.malloc_ptr %30 : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
    %32 = rmem.materialize %31 : (!rmem.rmref<!llvm.ptr<i8>>) -> !llvm.ptr<i8>
    %33 = llvm.bitcast %32 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %33, %29 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %34 = rmem.pack(%10) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>
    llvm.return %34 : !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>
  }
  llvm.func @new_heap_node(%arg0: i32, %arg1: f64) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)> {
    %0 = llvm.mlir.constant(16 : i64) : i64
    %1 = rmem.malloc_ptr %0 : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
    %2 = rmem.materialize %1 : (!rmem.rmref<!llvm.ptr<i8>>) -> !llvm.ptr<i8>
    %3 = llvm.bitcast %2 : !llvm.ptr<i8> to !llvm.ptr<struct<(f64, i32)>>
    %4 = builtin.unrealized_conversion_cast %3 : !llvm.ptr<struct<(f64, i32)>> to !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
    %5 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    llvm.store %arg0, %5 : !llvm.ptr<i32>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    llvm.store %arg1, %6 : !llvm.ptr<f64>
    %7 = rmem.pack(%4) : (!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>
    llvm.return %7 : !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>
  }
  llvm.func @heapify(%arg0: !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>, %arg1: i32) {
    %0 = rmem.unpack(%arg0) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>) -> !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>
    %1 = rmem.materialize %0 : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %2 = llvm.mlir.constant(2 : i32) : i32
    %3 = llvm.mlir.constant(1 : i32) : i32
    %4 = llvm.shl %arg1, %3  : i32
    %5 = llvm.add %4, %3  : i32
    %6 = llvm.add %4, %2  : i32
    %7 = llvm.getelementptr %1[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>
    %8 = llvm.load %7 : !llvm.ptr<i32>
    %9 = llvm.icmp "slt" %5, %8 : i32
    llvm.cond_br %9, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %10 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %12 = llvm.sext %5 : i32 to i64
    %13 = llvm.getelementptr %11[%12] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %16 = llvm.load %15 : !llvm.ptr<f64>
    %17 = llvm.sext %arg1 : i32 to i64
    %18 = llvm.getelementptr %11[%17] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %19 = llvm.load %18 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %21 = llvm.load %20 : !llvm.ptr<f64>
    %22 = llvm.fcmp "olt" %16, %21 : f64
    %23 = llvm.select %22, %5, %arg1 : i1, i32
    llvm.br ^bb3(%23 : i32)
  ^bb2:  // pred: ^bb0
    llvm.br ^bb3(%arg1 : i32)
  ^bb3(%24: i32):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    %25 = llvm.load %7 : !llvm.ptr<i32>
    %26 = llvm.icmp "slt" %6, %25 : i32
    llvm.cond_br %26, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %27 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %28 = llvm.load %27 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %29 = llvm.sext %6 : i32 to i64
    %30 = llvm.getelementptr %28[%29] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %32 = llvm.getelementptr %31[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %33 = llvm.load %32 : !llvm.ptr<f64>
    %34 = llvm.sext %24 : i32 to i64
    %35 = llvm.getelementptr %28[%34] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %36 = llvm.load %35 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %38 = llvm.load %37 : !llvm.ptr<f64>
    %39 = llvm.fcmp "olt" %33, %38 : f64
    %40 = llvm.select %39, %6, %24 : i1, i32
    llvm.br ^bb7(%40 : i32)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%24 : i32)
  ^bb7(%41: i32):  // 2 preds: ^bb5, ^bb6
    llvm.br ^bb8
  ^bb8:  // pred: ^bb7
    %42 = llvm.icmp "ne" %41, %arg1 : i32
    llvm.cond_br %42, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    %43 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %44 = llvm.load %43 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %45 = llvm.sext %41 : i32 to i64
    %46 = llvm.getelementptr %44[%45] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %47 = llvm.load %46 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %48 = llvm.sext %arg1 : i32 to i64
    %49 = llvm.getelementptr %44[%48] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %50 = llvm.load %49 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %51 = llvm.getelementptr %1[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %52 = llvm.load %51 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %53 = llvm.getelementptr %47[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %54 = llvm.load %53 : !llvm.ptr<i32>
    %55 = llvm.sext %54 : i32 to i64
    %56 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %57 = llvm.getelementptr %56[%55] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %arg1, %57 : !llvm.ptr<i32>
    %58 = llvm.load %51 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %59 = llvm.getelementptr %50[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %60 = llvm.load %59 : !llvm.ptr<i32>
    %61 = llvm.sext %60 : i32 to i64
    %62 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %63 = llvm.getelementptr %62[%61] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %41, %63 : !llvm.ptr<i32>
    %64 = llvm.load %43 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %65 = llvm.getelementptr %64[%45] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %66 = builtin.unrealized_conversion_cast %65 : !llvm.ptr<ptr<struct<(f64, i32)>>> to !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>
    %67 = llvm.getelementptr %64[%48] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %68 = builtin.unrealized_conversion_cast %67 : !llvm.ptr<ptr<struct<(f64, i32)>>> to !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>
    %69 = rmem.pack(%66) : (!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>
    %70 = rmem.pack(%68) : (!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>
    llvm.call @swap_heap_node(%69, %70) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>, !llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>) -> ()
    %71 = rmem.pack(%0) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>
    llvm.call @heapify(%71, %41) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>, i32) -> ()
    llvm.br ^bb10
  ^bb10:  // 2 preds: ^bb8, ^bb9
    llvm.return
  }
  llvm.func @extract_min(%arg0: !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)> {
    %0 = rmem.unpack(%arg0) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>) -> !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>
    %1 = rmem.materialize %0 : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %2 = llvm.mlir.constant(-1 : i32) : i32
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.getelementptr %1[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>
    %5 = llvm.load %4 : !llvm.ptr<i32>
    %6 = llvm.icmp "eq" %5, %3 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.null : !llvm.ptr<struct<(f64, i32)>>
    llvm.br ^bb3(%7 : !llvm.ptr<struct<(f64, i32)>>)
  ^bb2:  // pred: ^bb0
    %8 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %11 = llvm.load %4 : !llvm.ptr<i32>
    %12 = llvm.add %11, %2  : i32
    %13 = llvm.sext %12 : i32 to i64
    %14 = llvm.getelementptr %9[%13] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %15 = llvm.load %14 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %15, %9 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %16 = llvm.getelementptr %1[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %17 = llvm.load %16 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %18 = llvm.getelementptr %10[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %19 = llvm.load %18 : !llvm.ptr<i32>
    %20 = llvm.sext %19 : i32 to i64
    %21 = llvm.load %4 : !llvm.ptr<i32>
    %22 = llvm.add %21, %2  : i32
    %23 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.getelementptr %23[%20] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %22, %24 : !llvm.ptr<i32>
    %25 = llvm.load %16 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %26 = llvm.getelementptr %15[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %27 = llvm.load %26 : !llvm.ptr<i32>
    %28 = llvm.sext %27 : i32 to i64
    %29 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %30 = llvm.getelementptr %29[%28] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %3, %30 : !llvm.ptr<i32>
    %31 = llvm.load %4 : !llvm.ptr<i32>
    %32 = llvm.add %31, %2  : i32
    llvm.store %32, %4 : !llvm.ptr<i32>
    %33 = rmem.pack(%0) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>
    llvm.call @heapify(%33, %3) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>, i32) -> ()
    llvm.br ^bb3(%10 : !llvm.ptr<struct<(f64, i32)>>)
  ^bb3(%34: !llvm.ptr<struct<(f64, i32)>>):  // 2 preds: ^bb1, ^bb2
    %35 = builtin.unrealized_conversion_cast %34 : !llvm.ptr<struct<(f64, i32)>> to !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    %36 = rmem.pack(%35) : (!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>
    llvm.return %36 : !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>
  }
  llvm.func @swap_heap_node(%arg0: !llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>, %arg1: !llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>) {
    %0 = rmem.unpack(%arg0) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>) -> !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>
    %1 = rmem.materialize %0 : (!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %2 = rmem.unpack(%arg1) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>) -> !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>
    %3 = rmem.materialize %2 : (!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %4 = llvm.load %1 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %5 = llvm.load %3 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %5, %1 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %4, %3 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.return
  }
}


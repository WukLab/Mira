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
    %9 = llvm.call @init_min_heap(%8) : (i32) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    llvm.br ^bb1(%1 : i64)
  ^bb1(%10: i64):  // 2 preds: ^bb0, ^bb2
    %11 = llvm.icmp "slt" %10, %0 : i64
    llvm.cond_br %11, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %12 = llvm.trunc %10 : i64 to i32
    %13 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %15 = llvm.getelementptr %14[%10] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %16 = llvm.call @new_heap_node(%12, %7) : (i32, f64) -> !llvm.ptr<struct<(f64, i32)>>
    llvm.store %16, %15 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %17 = llvm.getelementptr %9[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %18 = llvm.load %17 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %19 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.getelementptr %19[%10] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %12, %20 : !llvm.ptr<i32>
    %21 = llvm.add %10, %2  : i64
    llvm.br ^bb1(%21 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%1 : i64)
  ^bb4(%22: i64):  // 2 preds: ^bb3, ^bb5
    %23 = llvm.icmp "slt" %22, %4 : i64
    llvm.cond_br %23, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %24 = llvm.mul %22, %5  : i64
    %25 = llvm.add %24, %6  : i64
    %26 = llvm.trunc %25 : i64 to i32
    llvm.call @heapify(%9, %26) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, i32) -> ()
    %27 = llvm.add %22, %2  : i64
    llvm.br ^bb4(%27 : i64)
  ^bb6:  // pred: ^bb4
    %28 = llvm.getelementptr %9[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>
    %29 = llvm.mlir.addressof @str0 : !llvm.ptr<array<7 x i8>>
    %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb6, ^bb8
    %31 = llvm.load %28 : !llvm.ptr<i32>
    %32 = llvm.icmp "ne" %31, %3 : i32
    llvm.cond_br %32, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %33 = llvm.call @extract_min(%9) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(f64, i32)>>
    %34 = llvm.getelementptr %33[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %35 = llvm.load %34 : !llvm.ptr<i32>
    %36 = llvm.getelementptr %33[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %37 = llvm.load %36 : !llvm.ptr<f64>
    %38 = llvm.call @printf(%30, %35, %37) : (!llvm.ptr<i8>, i32, f64) -> i32
    llvm.br ^bb7
  ^bb9:  // pred: ^bb7
    llvm.return %3 : i32
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
  llvm.func @swap_heap_node(%arg0: !llvm.ptr<ptr<struct<(f64, i32)>>>, %arg1: !llvm.ptr<ptr<struct<(f64, i32)>>>) {
    %0 = llvm.load %arg0 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %1 = llvm.load %arg1 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %1, %arg0 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %0, %arg1 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.return
  }
}

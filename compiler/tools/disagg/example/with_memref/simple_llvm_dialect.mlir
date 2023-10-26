module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%d = %d * %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @as() {addr_space = 0 : i32} : !llvm.array<1 x struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>> {
    %0 = llvm.mlir.undef : !llvm.array<1 x struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.return %0 : !llvm.array<1 x struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
  }
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  llvm.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 {
    %0 = llvm.mlir.constant(2 : index) : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(8 : i64) : i64
    %4 = llvm.mlir.constant(8 : index) : i64
    %5 = llvm.mlir.constant(0 : i32) : i32
    %6 = llvm.getelementptr %arg1[1] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i8>>
    %8 = llvm.call @atoi(%7) : (!llvm.ptr<i8>) -> i32
    %9 = llvm.mlir.addressof @as : !llvm.ptr<array<1 x struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<1 x struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %11 = llvm.sext %8 : i32 to i64
    %12 = llvm.mul %11, %3  : i64
    %13 = llvm.udiv %12, %4  : i64
    %14 = llvm.mul %13, %0  : i64
    %15 = llvm.mlir.null : !llvm.ptr<i32>
    %16 = llvm.getelementptr %15[%14] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %17 = llvm.ptrtoint %16 : !llvm.ptr<i32> to i64
    %18 = llvm.call @malloc(%17) : (i64) -> !llvm.ptr<i8>
    %19 = llvm.bitcast %18 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.insertvalue %19, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %19, %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %1, %22[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %13, %23[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %0, %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %0, %25[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %2, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %27, %10 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %28 = llvm.sext %8 : i32 to i64
    llvm.br ^bb1(%1 : i64)
  ^bb1(%29: i64):  // 2 preds: ^bb0, ^bb2
    %30 = llvm.icmp "slt" %29, %28 : i64
    llvm.cond_br %30, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %31 = llvm.trunc %29 : i64 to i32
    %32 = llvm.load %10 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %33 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.mul %29, %0  : i64
    %35 = llvm.add %34, %1  : i64
    %36 = llvm.getelementptr %33[%35] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %31, %36 : !llvm.ptr<i32>
    %37 = llvm.load %10 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %38 = llvm.mul %31, %31  : i32
    %39 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.mul %29, %0  : i64
    %41 = llvm.add %40, %2  : i64
    %42 = llvm.getelementptr %39[%41] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %38, %42 : !llvm.ptr<i32>
    %43 = llvm.add %29, %2  : i64
    llvm.br ^bb1(%43 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%1 : i64)
  ^bb4(%44: i64):  // 2 preds: ^bb3, ^bb5
    %45 = llvm.icmp "slt" %44, %28 : i64
    llvm.cond_br %45, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %46 = llvm.mlir.addressof @str0 : !llvm.ptr<array<14 x i8>>
    %47 = llvm.getelementptr %46[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
    %48 = llvm.load %10 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %49 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.mul %44, %0  : i64
    %51 = llvm.add %50, %2  : i64
    %52 = llvm.getelementptr %49[%51] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %53 = llvm.load %52 : !llvm.ptr<i32>
    %54 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.mul %44, %0  : i64
    %56 = llvm.add %55, %1  : i64
    %57 = llvm.getelementptr %54[%56] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %58 = llvm.load %57 : !llvm.ptr<i32>
    %59 = llvm.call @printf(%47, %53, %58, %58) : (!llvm.ptr<i8>, i32, i32, i32) -> i32
    %60 = llvm.add %44, %2  : i64
    llvm.br ^bb4(%60 : i64)
  ^bb6:  // pred: ^bb4
    llvm.return %5 : i32
  }
}

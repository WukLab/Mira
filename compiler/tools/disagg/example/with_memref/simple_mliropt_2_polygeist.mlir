module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%d = %d * %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @as() {addr_space = 0 : i32} : !llvm.array<1 x ptr<array<2 x i32>>> {
    %0 = llvm.mlir.undef : !llvm.array<1 x ptr<array<2 x i32>>>
    llvm.return %0 : !llvm.array<1 x ptr<array<2 x i32>>>
  }
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
    %9 = llvm.mlir.addressof @as : !llvm.ptr<array<1 x ptr<array<2 x i32>>>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<1 x ptr<array<2 x i32>>>>) -> !llvm.ptr<ptr<array<2 x i32>>>
    %11 = llvm.sext %8 : i32 to i64
    %12 = llvm.mul %11, %3  : i64
    %13 = llvm.udiv %12, %4  : i64
    %14 = llvm.mul %13, %0  : i64
    %15 = llvm.mlir.null : !llvm.ptr<array<2 x i32>>
    %16 = llvm.getelementptr %15[1] : (!llvm.ptr<array<2 x i32>>) -> !llvm.ptr<array<2 x i32>>
    %17 = llvm.ptrtoint %16 : !llvm.ptr<array<2 x i32>> to i64
    %18 = llvm.mul %14, %17  : i64
    %19 = llvm.call @malloc(%18) : (i64) -> !llvm.ptr<i8>
    %20 = llvm.bitcast %19 : !llvm.ptr<i8> to !llvm.ptr<array<2 x i32>>
    llvm.store %20, %10 : !llvm.ptr<ptr<array<2 x i32>>>
    %21 = llvm.sext %8 : i32 to i64
    llvm.br ^bb1(%1 : i64)
  ^bb1(%22: i64):  // 2 preds: ^bb0, ^bb2
    %23 = llvm.icmp "slt" %22, %21 : i64
    llvm.cond_br %23, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %24 = llvm.trunc %22 : i64 to i32
    %25 = llvm.mlir.addressof @as : !llvm.ptr<array<1 x ptr<array<2 x i32>>>>
    %26 = llvm.getelementptr %25[0, 0] : (!llvm.ptr<array<1 x ptr<array<2 x i32>>>>) -> !llvm.ptr<ptr<array<2 x i32>>>
    %27 = llvm.load %26 : !llvm.ptr<ptr<array<2 x i32>>>
    %28 = llvm.getelementptr %27[%22, 0] : (!llvm.ptr<array<2 x i32>>, i64) -> !llvm.ptr<i32>
    llvm.store %24, %28 : !llvm.ptr<i32>
    %29 = llvm.mlir.addressof @as : !llvm.ptr<array<1 x ptr<array<2 x i32>>>>
    %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<array<1 x ptr<array<2 x i32>>>>) -> !llvm.ptr<ptr<array<2 x i32>>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<array<2 x i32>>>
    %32 = llvm.mul %24, %24  : i32
    %33 = llvm.getelementptr %31[%22, 1] : (!llvm.ptr<array<2 x i32>>, i64) -> !llvm.ptr<i32>
    llvm.store %32, %33 : !llvm.ptr<i32>
    %34 = llvm.add %22, %2  : i64
    llvm.br ^bb1(%34 : i64)
  ^bb3:  // pred: ^bb1
    %35 = llvm.sext %8 : i32 to i64
    llvm.br ^bb4(%1 : i64)
  ^bb4(%36: i64):  // 2 preds: ^bb3, ^bb5
    %37 = llvm.icmp "slt" %36, %35 : i64
    llvm.cond_br %37, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %38 = llvm.mlir.addressof @str0 : !llvm.ptr<array<14 x i8>>
    %39 = llvm.getelementptr %38[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
    %40 = llvm.mlir.addressof @as : !llvm.ptr<array<1 x ptr<array<2 x i32>>>>
    %41 = llvm.getelementptr %40[0, 0] : (!llvm.ptr<array<1 x ptr<array<2 x i32>>>>) -> !llvm.ptr<ptr<array<2 x i32>>>
    %42 = llvm.load %41 : !llvm.ptr<ptr<array<2 x i32>>>
    %43 = llvm.getelementptr %42[%36, 1] : (!llvm.ptr<array<2 x i32>>, i64) -> !llvm.ptr<i32>
    %44 = llvm.load %43 : !llvm.ptr<i32>
    %45 = llvm.getelementptr %42[%36, 0] : (!llvm.ptr<array<2 x i32>>, i64) -> !llvm.ptr<i32>
    %46 = llvm.load %45 : !llvm.ptr<i32>
    %47 = llvm.call @printf(%39, %44, %46, %46) : (!llvm.ptr<i8>, i32, i32, i32) -> i32
    %48 = llvm.add %36, %2  : i64
    llvm.br ^bb4(%48 : i64)
  ^bb6:  // pred: ^bb4
    llvm.return %5 : i32
  }
  llvm.func @atoi(!llvm.ptr<i8>) -> i32 attributes {sym_visibility = "private"}
}


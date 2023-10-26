module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @clock_gettime(i32, !llvm.ptr<struct<"struct.timespec", (i64, i64)>>) -> i32
  llvm.mlir.global external @g_payload() {addr_space = 0 : i32} : !llvm.array<23 x i32>
  llvm.mlir.global internal constant @str2("Dont opt this %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("Exec time %.5f s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @arc() {addr_space = 0 : i32} : !llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("after setup\0A\00") {addr_space = 0 : i32}
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(1.000000e+06 : f64) : f64
    %1 = llvm.mlir.constant(0 : i32) : i32
    llvm.call @setup() : () -> ()
    %2 = llvm.mlir.addressof @str0 : !llvm.ptr<array<13 x i8>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<13 x i8>>) -> !llvm.ptr<i8>
    %4 = llvm.call @printf(%3) : (!llvm.ptr<i8>) -> i32
    %5 = llvm.call @microtime() : () -> i64
    %6 = llvm.mlir.addressof @arc : !llvm.ptr<ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>>
    llvm.call @visit(%7) : (!llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>) -> ()
    %8 = llvm.call @microtime() : () -> i64
    %9 = llvm.mlir.addressof @str1 : !llvm.ptr<array<18 x i8>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<18 x i8>>) -> !llvm.ptr<i8>
    %11 = llvm.sub %8, %5  : i64
    %12 = llvm.sitofp %11 : i64 to f64
    %13 = llvm.fdiv %12, %0  : f64
    %14 = llvm.call @printf(%10, %13) : (!llvm.ptr<i8>, f64) -> i32
    %15 = llvm.mlir.addressof @str2 : !llvm.ptr<array<18 x i8>>
    %16 = llvm.getelementptr %15[0, 0] : (!llvm.ptr<array<18 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.mlir.addressof @g_payload : !llvm.ptr<array<23 x i32>>
    %18 = llvm.getelementptr %17[0, 0] : (!llvm.ptr<array<23 x i32>>) -> !llvm.ptr<i32>
    %19 = llvm.getelementptr %18[5] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %20 = llvm.load %19 : !llvm.ptr<i32>
    %21 = llvm.call @printf(%16, %20) : (!llvm.ptr<i8>, i32) -> i32
    llvm.return %1 : i32
  }
  llvm.func @setup() attributes {sym_visibility = "private"}
  llvm.func internal @microtime() -> i64 attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.constant(1000 : i64) : i64
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<"struct.timespec", (i64, i64)> : (i64) -> !llvm.ptr<struct<"struct.timespec", (i64, i64)>>
    %4 = llvm.call @clock_gettime(%1, %3) : (i32, !llvm.ptr<struct<"struct.timespec", (i64, i64)>>) -> i32
    %5 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.timespec", (i64, i64)>>) -> !llvm.ptr<i64>
    %6 = llvm.load %5 : !llvm.ptr<i64>
    %7 = llvm.mul %6, %0  : i64
    %8 = llvm.mul %7, %0  : i64
    %9 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"struct.timespec", (i64, i64)>>) -> !llvm.ptr<i64>
    %10 = llvm.load %9 : !llvm.ptr<i64>
    %11 = llvm.sdiv %10, %0  : i64
    %12 = llvm.add %8, %11  : i64
    llvm.return %12 : i64
  }
  llvm.func @visit(%arg0: !llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>) {
    %0 = llvm.mlir.constant(67108864 : index) : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(1 : i64) : i64
    %4 = llvm.alloca %3 x !llvm.struct<"struct.node", (ptr<struct<"struct.arc", (ptr<struct<"struct.node">>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)> : (i64) -> !llvm.ptr<struct<"struct.node", (ptr<struct<"struct.arc", (ptr<struct<"struct.node">>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    %5 = llvm.alloca %3 x !llvm.struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)> : (i64) -> !llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>) -> !llvm.ptr<ptr<struct<"struct.node", (ptr<struct<"struct.arc", (ptr<struct<"struct.node">>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
    llvm.br ^bb1(%1 : i64)
  ^bb1(%7: i64):  // 2 preds: ^bb0, ^bb2
    %8 = llvm.icmp "slt" %7, %0 : i64
    llvm.cond_br %8, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %9 = llvm.trunc %7 : i64 to i32
    %10 = llvm.getelementptr %arg0[%7] : (!llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>
    %11 = llvm.load %10 : !llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>
    llvm.store %11, %5 : !llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>
    %12 = llvm.load %6 : !llvm.ptr<ptr<struct<"struct.node", (ptr<struct<"struct.arc", (ptr<struct<"struct.node">>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
    %13 = llvm.load %12 : !llvm.ptr<struct<"struct.node", (ptr<struct<"struct.arc", (ptr<struct<"struct.node">>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    llvm.store %13, %4 : !llvm.ptr<struct<"struct.node", (ptr<struct<"struct.arc", (ptr<struct<"struct.node">>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    llvm.call @computation(%5, %4, %9) : (!llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, !llvm.ptr<struct<"struct.node", (ptr<struct<"struct.arc", (ptr<struct<"struct.node">>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>, i32) -> ()
    %14 = llvm.add %7, %2  : i64
    llvm.br ^bb1(%14 : i64)
  ^bb3:  // pred: ^bb1
    llvm.return
  }
  llvm.func @computation(!llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, !llvm.ptr<struct<"struct.node", (ptr<struct<"struct.arc", (ptr<struct<"struct.node">>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>, i32) attributes {sym_visibility = "private"}
}


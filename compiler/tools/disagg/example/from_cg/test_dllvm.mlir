module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("Too many neighbours for node %d\0A\00") {addr_space = 0 : i32}
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 {
    %0 = llvm.mlir.constant(2000000 : index) : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(16 : i64) : i64
    %4 = llvm.mlir.constant(272000000 : i64) : i64
    %5 = llvm.mlir.constant(1.000000e-01 : f64) : f64
    %6 = llvm.mlir.constant(2 : i32) : i32
    %7 = llvm.mlir.constant(5.000000e-01 : f64) : f64
    %8 = llvm.mlir.constant(1 : i32) : i32
    %9 = llvm.mlir.constant(0 : i32) : i32
    %10 = llvm.mlir.constant(1 : i64) : i64
    %11 = llvm.alloca %10 x !llvm.struct<"polygeist@mlir@struct.LinkedGraphNode", (ptr<struct<(f64, i32)>>, ptr<struct<"polygeist@mlir@struct.LinkedGraphNode">>)> : (i64) -> !llvm.ptr<struct<"polygeist@mlir@struct.LinkedGraphNode", (ptr<struct<(f64, i32)>>, ptr<struct<"polygeist@mlir@struct.LinkedGraphNode">>)>>
    %12 = llvm.call @malloc(%3) : (i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>
    %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>) -> !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %15 = llvm.call @malloc(%4) : (i64) -> !llvm.ptr<i8>
    %16 = llvm.bitcast %15 : !llvm.ptr<i8> to !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
    llvm.store %16, %14 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    llvm.br ^bb1(%1 : i64)
  ^bb1(%17: i64):  // 2 preds: ^bb0, ^bb2
    %18 = llvm.icmp "slt" %17, %0 : i64
    llvm.cond_br %18, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %19 = llvm.load %14 : !llvm.ptr<ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>>
    %20 = llvm.getelementptr %19[%17] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i64) -> !llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>
    %21 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>) -> !llvm.ptr<i32>
    llvm.store %9, %21 : !llvm.ptr<i32>
    %22 = llvm.add %17, %2  : i64
    llvm.br ^bb1(%22 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @add_edge(%13, %9, %8, %7) : (!llvm.ptr<struct<(ptr<struct<(array<16 x ptr<struct<(f64, i32)>>>, i32)>>, i32)>>, i32, i32, f64) -> ()
    %23 = llvm.call @new_graph_node(%6, %5) : (i32, f64) -> !llvm.ptr<struct<(f64, i32)>>
    %24 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<struct<"polygeist@mlir@struct.LinkedGraphNode", (ptr<struct<(f64, i32)>>, ptr<struct<"polygeist@mlir@struct.LinkedGraphNode">>)>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %23, %24 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %25 = llvm.getelementptr %11[0, 1] : (!llvm.ptr<struct<"polygeist@mlir@struct.LinkedGraphNode", (ptr<struct<(f64, i32)>>, ptr<struct<"polygeist@mlir@struct.LinkedGraphNode">>)>>) -> !llvm.ptr<ptr<struct<"polygeist@mlir@struct.LinkedGraphNode", (ptr<struct<(f64, i32)>>, ptr<struct<"polygeist@mlir@struct.LinkedGraphNode">>)>>>
    %26 = llvm.mlir.null : !llvm.ptr<struct<"polygeist@mlir@struct.LinkedGraphNode", (ptr<struct<(f64, i32)>>, ptr<struct<"polygeist@mlir@struct.LinkedGraphNode">>)>>
    llvm.store %26, %25 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.LinkedGraphNode", (ptr<struct<(f64, i32)>>, ptr<struct<"polygeist@mlir@struct.LinkedGraphNode">>)>>>
    llvm.return %9 : i32
  }
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
    %9 = llvm.mlir.addressof @str0 : !llvm.ptr<array<33 x i8>>
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
  llvm.func @exit(i32) attributes {sym_visibility = "private"}
}

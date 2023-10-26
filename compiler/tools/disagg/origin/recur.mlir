module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str1("%d\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("struct chasing from %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @expand_ctr_name("expand") {addr_space = 0 : i32}
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @llvm.instrprof.increment(!llvm.ptr<i8>, i64, i32, i32) -> ()
  llvm.func @__llvm_profile_write_file() -> i32
  llvm.mlir.global external @glob() {addr_space = 0 : i32} : !llvm.ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>> {
    %0 = llvm.mlir.undef : !llvm.ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>
    llvm.return %0 : !llvm.ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>
  }
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  llvm.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 {
    %0 = llvm.mlir.constant(0 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(8 : i64) : i64
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(1 : i64) : i64
    %5 = llvm.alloca %4 x !llvm.struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)> : (i64) -> !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>
    %6 = llvm.getelementptr %arg1[1] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i8>>
    %8 = llvm.call @atoi(%7) : (!llvm.ptr<i8>) -> i32
    %9 = llvm.getelementptr %arg1[2] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<i8>>
    %11 = llvm.call @atoi(%10) : (!llvm.ptr<i8>) -> i32
    %12 = llvm.mlir.addressof @glob : !llvm.ptr<ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>>
    %13 = llvm.sext %8 : i32 to i64
    %14 = llvm.mul %13, %2  : i64
    %15 = llvm.call @malloc(%14) : (i64) -> !llvm.ptr<i8>
    %16 = llvm.bitcast %15 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>
    llvm.store %16, %12 : !llvm.ptr<ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>>
    %17 = llvm.sext %8 : i32 to i64
    llvm.br ^bb1(%0, %5 : i64, !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>)
  ^bb1(%18: i64, %19: !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>):  // 2 preds: ^bb0, ^bb2
    %20 = llvm.icmp "slt" %18, %17 : i64
    llvm.cond_br %20, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %21 = llvm.trunc %18 : i64 to i32
    %22 = llvm.call @expand(%19, %21) : (!llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>, i32) -> !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>
    %23 = llvm.load %12 : !llvm.ptr<ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>>
    %24 = llvm.getelementptr %23[%18] : (!llvm.ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>, i64) -> !llvm.ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>
    llvm.store %22, %24 : !llvm.ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>
    %25 = llvm.add %18, %1  : i64
    llvm.br ^bb1(%25, %22 : i64, !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>)
  ^bb3:  // pred: ^bb1
    llvm.call @visit(%11) : (i32) -> ()
    llvm.call @__llvm_profile_write_file() : () -> i32
    llvm.return %3 : i32
  }
  llvm.func @expand(%arg0: !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>, %arg1: i32) -> !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>> {
    %c1_64 = llvm.mlir.constant(1 : i64) : i64
    %c0_32 = llvm.mlir.constant(0 : i32) : i32
    %c1_32 = llvm.mlir.constant(1 : i32) : i32
    %name_ptr = llvm.mlir.addressof @expand_ctr_name : !llvm.ptr<array<6 x i8>>
    %name_ctr = llvm.getelementptr %name_ptr[0, 0] : (!llvm.ptr<array<6 x i8>>) -> !llvm.ptr<i8>
    llvm.call @llvm.instrprof.increment(%name_ctr, %c1_64, %c1_32, %c0_32) : (!llvm.ptr<i8>, i64, i32, i32) -> ()
    %0 = llvm.mlir.constant(16 : i64) : i64
    %1 = llvm.call @malloc(%0) : (i64) -> !llvm.ptr<i8>
    %2 = llvm.bitcast %1 : !llvm.ptr<i8> to !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>) -> !llvm.ptr<struct<"struct.Node", (i32)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.Node", (i32)>>) -> !llvm.ptr<i32>
    llvm.store %arg1, %4 : !llvm.ptr<i32>
    %5 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>) -> !llvm.ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>
    %6 = llvm.mlir.null : !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>
    llvm.store %6, %5 : !llvm.ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>
    %7 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>) -> !llvm.ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>
    llvm.store %2, %7 : !llvm.ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>
    llvm.return %2 : !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>
  }
  llvm.func @visit(%arg0: i32) {
    %0 = llvm.mlir.addressof @glob : !llvm.ptr<ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>>
    %2 = llvm.sext %arg0 : i32 to i64
    %3 = llvm.getelementptr %1[%2] : (!llvm.ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>, i64) -> !llvm.ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>
    %5 = llvm.mlir.addressof @str0 : !llvm.ptr<array<24 x i8>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<array<24 x i8>>) -> !llvm.ptr<i8>
    %7 = llvm.call @printf(%6, %arg0) : (!llvm.ptr<i8>, i32) -> i32
    %8 = llvm.mlir.null : !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>
    %9 = llvm.mlir.addressof @str1 : !llvm.ptr<array<4 x i8>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.br ^bb1(%4 : !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>)
  ^bb1(%11: !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>):  // 2 preds: ^bb0, ^bb2
    %12 = llvm.icmp "ne" %11, %8 : !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>
    llvm.cond_br %12, ^bb2(%11 : !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>), ^bb3
  ^bb2(%13: !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>):  // pred: ^bb1
    %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>) -> !llvm.ptr<struct<"struct.Node", (i32)>>
    %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<struct<"struct.Node", (i32)>>) -> !llvm.ptr<i32>
    %16 = llvm.load %15 : !llvm.ptr<i32>
    %17 = llvm.call @printf(%10, %16) : (!llvm.ptr<i8>, i32) -> i32
    %18 = llvm.getelementptr %13[0, 1] : (!llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>) -> !llvm.ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>
    %19 = llvm.load %18 : !llvm.ptr<ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>>
    llvm.br ^bb1(%19 : !llvm.ptr<struct<"struct.A", (struct<"struct.Node", (i32)>, ptr<struct<"struct.A">>)>>)
  ^bb3:  // pred: ^bb1
    llvm.return
  }
}

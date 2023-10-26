module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str1("%d\0A\00")
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("struct chasing from %d\0A\00")
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global external @glob() : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>> {
    %0 = llvm.mlir.undef : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    llvm.return %0 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
  }
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2_i64 = arith.constant 2 : i64
    %c8_i64 = arith.constant 8 : i64
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)> : (i64) -> !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    %1 = llvm.getelementptr %arg1[%c1_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<i8>>
    %3 = llvm.call @atoi(%2) : (!llvm.ptr<i8>) -> i32
    %4 = llvm.getelementptr %arg1[%c2_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.call @atoi(%5) : (!llvm.ptr<i8>) -> i32
    %7 = llvm.mlir.addressof @glob : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
    %8 = arith.extsi %3 : i32 to i64
    %9 = arith.muli %8, %c8_i64 : i64
    %10 = llvm.call @malloc(%9) : (i64) -> !llvm.ptr<i8>
    %11 = llvm.bitcast %10 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    llvm.store %11, %7 : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
    %12 = arith.index_cast %3 : i32 to index
    %13 = scf.for %arg2 = %c0 to %12 step %c1 iter_args(%arg3 = %0) -> (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>) {
      %14 = arith.index_cast %arg2 : index to i32
      %15 = func.call @expand(%arg3, %14) : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
      %16 = llvm.mlir.addressof @glob : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
      %17 = llvm.load %16 : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
      %18 = arith.index_cast %arg2 : index to i64
      %19 = llvm.getelementptr %17[%18] : (!llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>, i64) -> !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
      llvm.store %15, %19 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
      scf.yield %15 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    }
    call @visit(%6) : (i32) -> ()
    return %c0_i32 : i32
  }
  func.func @expand(%arg0: !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, %arg1: i32) -> !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c16_i64 = arith.constant 16 : i64
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.call @malloc(%c16_i64) : (i64) -> !llvm.ptr<i8>
    %1 = llvm.bitcast %0 : !llvm.ptr<i8> to !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    %2 = llvm.getelementptr %1[%c0_i32, 0] : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<struct<(i32)>>
    %3 = llvm.getelementptr %2[%c0_i32, 0] : (!llvm.ptr<struct<(i32)>>, i32) -> !llvm.ptr<i32>
    llvm.store %arg1, %3 : !llvm.ptr<i32>
    %4 = llvm.getelementptr %1[%c0_i32, 1] : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    %5 = llvm.mlir.null : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    llvm.store %5, %4 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    %6 = llvm.getelementptr %arg0[%c0_i32, 1] : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    llvm.store %1, %6 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    return %1 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
  }
  func.func @visit(%arg0: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.mlir.addressof @glob : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
    %2 = arith.index_cast %arg0 : i32 to index
    %3 = arith.index_cast %2 : index to i64
    %4 = llvm.getelementptr %1[%3] : (!llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>, i64) -> !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    %6 = llvm.mlir.addressof @str0 : !llvm.ptr<array<24 x i8>>
    %7 = llvm.getelementptr %6[%c0_i32, %c0_i32] : (!llvm.ptr<array<24 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %8 = llvm.call @printf(%7, %arg0) : (!llvm.ptr<i8>, i32) -> i32
    %9 = llvm.mlir.null : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    %10 = llvm.mlir.addressof @str1 : !llvm.ptr<array<4 x i8>>
    %11 = llvm.getelementptr %10[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %12 = scf.while (%arg1 = %5) : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>) -> !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>> {
      %13 = llvm.icmp "ne" %arg1, %9 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
      scf.condition(%13) %arg1 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    } do {
    ^bb0(%arg1: !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>):
      %13 = llvm.getelementptr %arg1[%c0_i32, 0] : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<struct<(i32)>>
      %14 = llvm.getelementptr %13[%c0_i32, 0] : (!llvm.ptr<struct<(i32)>>, i32) -> !llvm.ptr<i32>
      %15 = llvm.load %14 : !llvm.ptr<i32>
      %16 = llvm.call @printf(%11, %15) : (!llvm.ptr<i8>, i32) -> i32
      %17 = llvm.getelementptr %arg1[%c0_i32, 1] : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
      %18 = llvm.load %17 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
      scf.yield %18 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    }
    return
  }
}

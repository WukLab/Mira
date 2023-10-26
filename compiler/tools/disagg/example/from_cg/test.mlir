module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-apple-macosx12.0.0", "polygeist.target-cpu" = "penryn", "polygeist.target-features" = "+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str2("array chaing\0A\00")
  llvm.mlir.global internal constant @str1("%d\0A\00")
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("struct chasing\0A\00")
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global external @glob() : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>> {
    %0 = llvm.mlir.undef : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    llvm.return %0 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
  }
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c8_i64 = arith.constant 8 : i64
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)> : (i64) -> !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    %1 = llvm.getelementptr %arg1[%c1_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<i8>>
    %3 = llvm.call @atoi(%2) : (!llvm.ptr<i8>) -> i32
    %4 = llvm.mlir.addressof @glob : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
    %5 = arith.extsi %3 : i32 to i64
    %6 = arith.muli %5, %c8_i64 : i64
    %7 = llvm.call @malloc(%6) : (i64) -> !llvm.ptr<i8>
    %8 = llvm.bitcast %7 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    llvm.store %8, %4 : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
    %9 = arith.index_cast %3 : i32 to index
    %10 = scf.for %arg2 = %c0 to %9 step %c1 iter_args(%arg3 = %0) -> (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>) {
      %13 = arith.index_cast %arg2 : index to i32
      %14 = func.call @expand(%arg3, %13) : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
      %15 = llvm.mlir.addressof @glob : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
      %16 = llvm.load %15 : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
      %17 = arith.index_cast %arg2 : index to i64
      %18 = llvm.getelementptr %16[%17] : (!llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>, i64) -> !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
      llvm.store %14, %18 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
      scf.yield %14 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    }
    %11 = llvm.getelementptr %0[%c0_i32, 1] : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    %12 = llvm.load %11 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
    call @visit(%12) : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>) -> ()
    call @visit_glob(%3) : (i32) -> ()
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
  func.func @visit(%arg0: !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.mlir.addressof @str0 : !llvm.ptr<array<16 x i8>>
    %1 = llvm.getelementptr %0[%c0_i32, %c0_i32] : (!llvm.ptr<array<16 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %2 = llvm.call @printf(%1) : (!llvm.ptr<i8>) -> i32
    %3 = llvm.mlir.null : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    %4 = llvm.mlir.addressof @str1 : !llvm.ptr<array<4 x i8>>
    %5 = llvm.getelementptr %4[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %6 = scf.while (%arg1 = %arg0) : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>) -> !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>> {
      %7 = llvm.icmp "ne" %arg1, %3 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
      scf.condition(%7) %arg1 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    } do {
    ^bb0(%arg1: !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>):
      %7 = llvm.getelementptr %arg1[%c0_i32, 0] : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<struct<(i32)>>
      %8 = llvm.getelementptr %7[%c0_i32, 0] : (!llvm.ptr<struct<(i32)>>, i32) -> !llvm.ptr<i32>
      %9 = llvm.load %8 : !llvm.ptr<i32>
      %10 = llvm.call @printf(%5, %9) : (!llvm.ptr<i8>, i32) -> i32
      %11 = llvm.getelementptr %arg1[%c0_i32, 1] : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
      %12 = llvm.load %11 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
      scf.yield %12 : !llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>
    }
    return
  }
  func.func @visit_glob(%arg0: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.mlir.addressof @str2 : !llvm.ptr<array<14 x i8>>
    %1 = llvm.getelementptr %0[%c0_i32, %c0_i32] : (!llvm.ptr<array<14 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %2 = llvm.call @printf(%1) : (!llvm.ptr<i8>) -> i32
    %3 = arith.index_cast %arg0 : i32 to index
    scf.for %arg1 = %c0 to %3 step %c1 {
      %4 = llvm.mlir.addressof @str1 : !llvm.ptr<array<4 x i8>>
      %5 = llvm.getelementptr %4[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %6 = llvm.mlir.addressof @glob : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
      %7 = llvm.load %6 : !llvm.ptr<ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>>
      %8 = arith.index_cast %arg1 : index to i64
      %9 = llvm.getelementptr %7[%8] : (!llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>, i64) -> !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
      %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>>
      %11 = llvm.getelementptr %10[%c0_i32, 0] : (!llvm.ptr<struct<"polygeist@mlir@struct.A", (struct<(i32)>, ptr<struct<"polygeist@mlir@struct.A">>)>>, i32) -> !llvm.ptr<struct<(i32)>>
      %12 = llvm.getelementptr %11[%c0_i32, 0] : (!llvm.ptr<struct<(i32)>>, i32) -> !llvm.ptr<i32>
      %13 = llvm.load %12 : !llvm.ptr<i32>
      %14 = llvm.call @printf(%5, %13) : (!llvm.ptr<i8>, i32) -> i32
    }
    return
  }
}

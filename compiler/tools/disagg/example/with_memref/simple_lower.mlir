module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @cache_access(!llvm.ptr<i128>) -> !llvm.ptr<i8>
  llvm.func @cache_access_mut(!llvm.ptr<i128>) -> !llvm.ptr<i8>
  llvm.func @cache_request(i64) -> i128
  llvm.func @_disagg_alloc(i32, i64) -> !llvm.ptr<i8>
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  func.func private @atoi(memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  llvm.mlir.global internal constant @str0("%d = %d * %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @as() {addr_space = 0 : i32} : !llvm.array<1 x struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>> {
    %0 = llvm.mlir.undef : !llvm.array<1 x struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.return %0 : !llvm.array<1 x struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
  }
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.mlir.constant(2 : i32) : i32
    %2 = llvm.mlir.constant(2 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(1 : index) : i64
    %c0_i32 = arith.constant 0 : i32
    %c8 = arith.constant 8 : index
    %c8_i64 = arith.constant 8 : i64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %5 = builtin.unrealized_conversion_cast %c0 : index to i64 {lower_tgt_mat = true}
    %6 = builtin.unrealized_conversion_cast %c1 : index to i64 {lower_tgt_mat = true}
    %7 = affine.load %arg1[1] : memref<?xmemref<?xi8>>
    %8 = call @atoi(%7) : (memref<?xi8>) -> i32
    %9 = llvm.mlir.addressof @as : !llvm.ptr<array<1 x struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<1 x struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %11 = arith.extsi %8 : i32 to i64
    %12 = arith.muli %11, %c8_i64 : i64
    %13 = arith.index_cast %12 : i64 to index
    %14 = arith.divui %13, %c8 : index
    %15 = builtin.unrealized_conversion_cast %14 : index to i64 {lower_tgt_mat = true}
    %16 = llvm.mul %15, %2  : i64
    %17 = llvm.mlir.null : !llvm.ptr<i32>
    %18 = llvm.getelementptr %17[%16] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %19 = llvm.ptrtoint %18 : !llvm.ptr<i32> to i64
    %20 = llvm.call @_disagg_alloc(%1, %19) : (i32, i64) -> !llvm.ptr<i8>
    %21 = llvm.bitcast %20 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %3, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %15, %25[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %2, %26[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.insertvalue %2, %27[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %4, %28[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = builtin.unrealized_conversion_cast %c0 : index to i64 {lower_tgt_mat = true}
    %31 = llvm.getelementptr %10[%30] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.store %29, %31 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %32 = arith.index_cast %8 : i32 to index
    scf.for %arg2 = %c0 to %32 step %c1 {
      %34 = builtin.unrealized_conversion_cast %arg2 : index to i64 {lower_arg_mat = true}
      %35 = arith.index_cast %arg2 : index to i32
      %36 = llvm.mlir.addressof @as : !llvm.ptr<array<1 x struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>>
      %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr<array<1 x struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
      %38 = builtin.unrealized_conversion_cast %c0 : index to i64 {lower_tgt_mat = true}
      %39 = llvm.getelementptr %37[%38] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
      %40 = llvm.load %39 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
      %41 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
      %42 = llvm.mul %34, %2  : i64
      %43 = llvm.add %42, %5  : i64
      %44 = llvm.getelementptr %41[%43] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %45 = llvm.ptrtoint %44 : !llvm.ptr<i32> to i64
      %46 = llvm.call @cache_request(%45) : (i64) -> i128
      %47 = llvm.alloca %0 x i128 : (i64) -> !llvm.ptr<i128>
      llvm.store %46, %47 : !llvm.ptr<i128>
      %48 = llvm.call @cache_access_mut(%47) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %49 = llvm.bitcast %48 : !llvm.ptr<i8> to !llvm.ptr<i32>
      llvm.store %35, %49 : !llvm.ptr<i32>
      %50 = llvm.mlir.addressof @as : !llvm.ptr<array<1 x struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>>
      %51 = llvm.getelementptr %50[0, 0] : (!llvm.ptr<array<1 x struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
      %52 = builtin.unrealized_conversion_cast %c0 : index to i64 {lower_tgt_mat = true}
      %53 = llvm.getelementptr %51[%52] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
      %54 = llvm.load %53 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
      %55 = arith.muli %35, %35 : i32
      %56 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
      %57 = llvm.mul %34, %2  : i64
      %58 = llvm.add %57, %6  : i64
      %59 = llvm.getelementptr %56[%58] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %60 = llvm.ptrtoint %59 : !llvm.ptr<i32> to i64
      %61 = llvm.call @cache_request(%60) : (i64) -> i128
      %62 = llvm.alloca %0 x i128 : (i64) -> !llvm.ptr<i128>
      llvm.store %61, %62 : !llvm.ptr<i128>
      %63 = llvm.call @cache_access_mut(%62) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %64 = llvm.bitcast %63 : !llvm.ptr<i8> to !llvm.ptr<i32>
      llvm.store %55, %64 : !llvm.ptr<i32>
    }
    %33 = arith.index_cast %8 : i32 to index
    scf.for %arg2 = %c0 to %33 step %c1 {
      %34 = builtin.unrealized_conversion_cast %arg2 : index to i64 {lower_arg_mat = true}
      %35 = llvm.mlir.addressof @str0 : !llvm.ptr<array<14 x i8>>
      %36 = llvm.getelementptr %35[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
      %37 = llvm.mlir.addressof @as : !llvm.ptr<array<1 x struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>>
      %38 = llvm.getelementptr %37[0, 0] : (!llvm.ptr<array<1 x struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
      %39 = builtin.unrealized_conversion_cast %c0 : index to i64 {lower_tgt_mat = true}
      %40 = llvm.getelementptr %38[%39] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
      %41 = llvm.load %40 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
      %42 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
      %43 = llvm.mul %34, %2  : i64
      %44 = llvm.add %43, %6  : i64
      %45 = llvm.getelementptr %42[%44] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %46 = llvm.ptrtoint %45 : !llvm.ptr<i32> to i64
      %47 = llvm.call @cache_request(%46) : (i64) -> i128
      %48 = llvm.alloca %0 x i128 : (i64) -> !llvm.ptr<i128>
      llvm.store %47, %48 : !llvm.ptr<i128>
      %49 = llvm.call @cache_access(%48) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
      %51 = llvm.load %50 : !llvm.ptr<i32>
      %52 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
      %53 = llvm.mul %34, %2  : i64
      %54 = llvm.add %53, %5  : i64
      %55 = llvm.getelementptr %52[%54] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %56 = llvm.ptrtoint %55 : !llvm.ptr<i32> to i64
      %57 = llvm.call @cache_request(%56) : (i64) -> i128
      %58 = llvm.alloca %0 x i128 : (i64) -> !llvm.ptr<i128>
      llvm.store %57, %58 : !llvm.ptr<i128>
      %59 = llvm.call @cache_access(%58) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %60 = llvm.bitcast %59 : !llvm.ptr<i8> to !llvm.ptr<i32>
      %61 = llvm.load %60 : !llvm.ptr<i32>
      %62 = llvm.call @printf(%36, %51, %61, %61) : (!llvm.ptr<i8>, i32, i32, i32) -> i32
    }
    return %c0_i32 : i32
  }
}


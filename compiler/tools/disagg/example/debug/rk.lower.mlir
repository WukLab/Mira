module {
  %0 = llvm.mlir.constant(2 : index) : i64
  %1 = llvm.mlir.constant(0 : index) : i64
  %2 = llvm.mlir.constant(16 : index) : i64
  %3 = llvm.mlir.constant(2 : i32) : i32
  %4 = llvm.mlir.constant(1 : index) : i64
  %5 = llvm.mlir.constant(768 : index) : i64
  %6 = llvm.mlir.constant(50264 : index) : i64
  llvm.func @_disagg_alloc(i32, i64) -> !llvm.ptr<i8>
  llvm.func @disagg_read_tensor_f32(!llvm.ptr<i8>, !llvm.struct<(i64, ptr<i8>)>) attributes {sym_visibility = "private"}
  llvm.mlir.global internal constant @constant_0("constant_0\00") {addr_space = 0 : i32}
  %7 = llvm.mlir.null : !llvm.ptr<f32>
  %8 = llvm.getelementptr %7[38602752] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
  %9 = llvm.ptrtoint %8 : !llvm.ptr<f32> to i64
  %10 = llvm.add %9, %2  : i64
  %11 = llvm.call @_disagg_alloc(%3, %10) : (i32, i64) -> !llvm.ptr<i8>
  %12 = llvm.bitcast %11 : !llvm.ptr<i8> to !llvm.ptr<f32>
  %13 = llvm.ptrtoint %12 : !llvm.ptr<f32> to i64
  %14 = llvm.sub %2, %4  : i64
  %15 = llvm.add %13, %14  : i64
  %16 = llvm.urem %15, %2  : i64
  %17 = llvm.sub %15, %16  : i64
  %18 = llvm.inttoptr %17 : i64 to !llvm.ptr<f32>
  %19 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
  %20 = llvm.insertvalue %12, %19[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
  %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
  %22 = llvm.insertvalue %1, %21[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
  %23 = llvm.insertvalue %6, %22[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
  %24 = llvm.insertvalue %5, %23[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
  %25 = llvm.insertvalue %5, %24[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
  %26 = llvm.insertvalue %4, %25[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
  %27 = llvm.alloca %4 x !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
  llvm.store %26, %27 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
  %28 = llvm.bitcast %27 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>> to !llvm.ptr<i8>
  %29 = llvm.mlir.undef : !llvm.struct<(i64, ptr<i8>)>
  %30 = llvm.insertvalue %0, %29[0] : !llvm.struct<(i64, ptr<i8>)> 
  %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(i64, ptr<i8>)> 
  %32 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<11 x i8>>
  %33 = llvm.getelementptr %32[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
  llvm.call @disagg_read_tensor_f32(%33, %31) : (!llvm.ptr<i8>, !llvm.struct<(i64, ptr<i8>)>) -> ()
}


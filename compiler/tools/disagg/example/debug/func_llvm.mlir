module {
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @str1("dummy_i64.dat\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("dummy_f32.dat\00") {addr_space = 0 : i32}
  llvm.func @read_tensor_f32(%arg0: !llvm.ptr<i8>, %arg1: i64, %arg2: !llvm.ptr<i8>) attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.undef : !llvm.struct<(i64, ptr<i8>)>
    %2 = llvm.insertvalue %arg1, %1[0] : !llvm.struct<(i64, ptr<i8>)> 
    %3 = llvm.insertvalue %arg2, %2[1] : !llvm.struct<(i64, ptr<i8>)> 
    %4 = llvm.alloca %0 x !llvm.struct<(i64, ptr<i8>)> : (i64) -> !llvm.ptr<struct<(i64, ptr<i8>)>>
    llvm.store %3, %4 : !llvm.ptr<struct<(i64, ptr<i8>)>>
    llvm.call @_mlir_ciface_read_tensor_f32(%arg0, %4) : (!llvm.ptr<i8>, !llvm.ptr<struct<(i64, ptr<i8>)>>) -> ()
    llvm.return
  }
  llvm.func @_mlir_ciface_read_tensor_f32(!llvm.ptr<i8>, !llvm.ptr<struct<(i64, ptr<i8>)>>) attributes {llvm.emit_c_interface, sym_visibility = "private"}
  llvm.func @print_tensor_f32(%arg0: i64, %arg1: !llvm.ptr<i8>) attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.undef : !llvm.struct<(i64, ptr<i8>)>
    %2 = llvm.insertvalue %arg0, %1[0] : !llvm.struct<(i64, ptr<i8>)> 
    %3 = llvm.insertvalue %arg1, %2[1] : !llvm.struct<(i64, ptr<i8>)> 
    %4 = llvm.alloca %0 x !llvm.struct<(i64, ptr<i8>)> : (i64) -> !llvm.ptr<struct<(i64, ptr<i8>)>>
    llvm.store %3, %4 : !llvm.ptr<struct<(i64, ptr<i8>)>>
    llvm.call @_mlir_ciface_print_tensor_f32(%4) : (!llvm.ptr<struct<(i64, ptr<i8>)>>) -> ()
    llvm.return
  }
  llvm.func @_mlir_ciface_print_tensor_f32(!llvm.ptr<struct<(i64, ptr<i8>)>>) attributes {llvm.emit_c_interface, sym_visibility = "private"}
  llvm.func @read_tensor_i64(%arg0: !llvm.ptr<i8>, %arg1: i64, %arg2: !llvm.ptr<i8>) attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.undef : !llvm.struct<(i64, ptr<i8>)>
    %2 = llvm.insertvalue %arg1, %1[0] : !llvm.struct<(i64, ptr<i8>)> 
    %3 = llvm.insertvalue %arg2, %2[1] : !llvm.struct<(i64, ptr<i8>)> 
    %4 = llvm.alloca %0 x !llvm.struct<(i64, ptr<i8>)> : (i64) -> !llvm.ptr<struct<(i64, ptr<i8>)>>
    llvm.store %3, %4 : !llvm.ptr<struct<(i64, ptr<i8>)>>
    llvm.call @_mlir_ciface_read_tensor_i64(%arg0, %4) : (!llvm.ptr<i8>, !llvm.ptr<struct<(i64, ptr<i8>)>>) -> ()
    llvm.return
  }
  llvm.func @_mlir_ciface_read_tensor_i64(!llvm.ptr<i8>, !llvm.ptr<struct<(i64, ptr<i8>)>>) attributes {llvm.emit_c_interface, sym_visibility = "private"}
  llvm.func @print_tensor_i64(%arg0: i64, %arg1: !llvm.ptr<i8>) attributes {llvm.emit_c_interface, sym_visibility = "private"} {
    %0 = llvm.mlir.constant(1 : index) : i64
    %1 = llvm.mlir.undef : !llvm.struct<(i64, ptr<i8>)>
    %2 = llvm.insertvalue %arg0, %1[0] : !llvm.struct<(i64, ptr<i8>)> 
    %3 = llvm.insertvalue %arg1, %2[1] : !llvm.struct<(i64, ptr<i8>)> 
    %4 = llvm.alloca %0 x !llvm.struct<(i64, ptr<i8>)> : (i64) -> !llvm.ptr<struct<(i64, ptr<i8>)>>
    llvm.store %3, %4 : !llvm.ptr<struct<(i64, ptr<i8>)>>
    llvm.call @_mlir_ciface_print_tensor_i64(%4) : (!llvm.ptr<struct<(i64, ptr<i8>)>>) -> ()
    llvm.return
  }
  llvm.func @_mlir_ciface_print_tensor_i64(!llvm.ptr<struct<(i64, ptr<i8>)>>) attributes {llvm.emit_c_interface, sym_visibility = "private"}
  llvm.func @main() -> i32 attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.constant(4 : index) : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(2 : index) : i64
    %4 = llvm.mlir.constant(3 : index) : i64
    %5 = llvm.mlir.constant(0 : i32) : i32
    %6 = llvm.mlir.addressof @str0 : !llvm.ptr<array<14 x i8>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
    %8 = llvm.mlir.null : !llvm.ptr<f32>
    %9 = llvm.getelementptr %8[6] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %10 = llvm.ptrtoint %9 : !llvm.ptr<f32> to i64
    %11 = llvm.call @malloc(%10) : (i64) -> !llvm.ptr<i8>
    %12 = llvm.bitcast %11 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %13 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %14 = llvm.insertvalue %12, %13[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %12, %14[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %1, %15[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %4, %16[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %3, %17[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %3, %18[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %2, %19[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.alloca %2 x !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.store %20, %21 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %22 = llvm.bitcast %21 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>> to !llvm.ptr<i8>
    llvm.call @read_tensor_f32(%7, %3, %22) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>) -> ()
    llvm.call @print_tensor_f32(%3, %22) : (i64, !llvm.ptr<i8>) -> ()
    %23 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
    %24 = llvm.getelementptr %23[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
    %25 = llvm.mlir.null : !llvm.ptr<i64>
    %26 = llvm.getelementptr %25[4] : (!llvm.ptr<i64>) -> !llvm.ptr<i64>
    %27 = llvm.ptrtoint %26 : !llvm.ptr<i64> to i64
    %28 = llvm.call @malloc(%27) : (i64) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.insertvalue %1, %32[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.insertvalue %0, %33[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %2, %34[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.alloca %2 x !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>>
    llvm.store %35, %36 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>>
    %37 = llvm.bitcast %36 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>> to !llvm.ptr<i8>
    llvm.call @read_tensor_i64(%24, %2, %37) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>) -> ()
    llvm.call @print_tensor_i64(%2, %37) : (i64, !llvm.ptr<i8>) -> ()
    llvm.return %5 : i32
  }
  llvm.func @_mlir_ciface_main() -> i32 attributes {llvm.emit_c_interface} {
    %0 = llvm.call @main() : () -> i32
    llvm.return %0 : i32
  }
}


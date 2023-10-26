llvm.mlir.global internal constant @str1("dummy_i64.dat\00") {addr_space = 0 : i32}
llvm.mlir.global internal constant @str0("dummy_f32.dat\00") {addr_space = 0 : i32}
func.func private @read_tensor_f32( %arg0: !llvm.ptr<i8>, %arg1: memref<*xf32>)
func.func private @print_tensor_f32(%arg0: memref<*xf32>)

func.func private @read_tensor_i64( %arg0: !llvm.ptr<i8>, %arg1: memref<*xi64>)
func.func private @print_tensor_i64(%arg0: memref<*xi64>)
// func.func private @printMemrefF32(memref<*xf32>)
// func.func private @printMemrefI64(memref<*xi64>)

func.func @main() -> i32 {
  %c0 = arith.constant 0 : i32
  %1 = llvm.mlir.addressof @str0 : !llvm.ptr<array<14 x i8>>
  %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
  %3 = memref.alloc() : memref<3x2xf32>
  %4 = memref.cast %3 : memref<3x2xf32> to memref<*xf32>
  func.call @read_tensor_f32(%2, %4) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
  func.call @print_tensor_f32(%4) : (memref<*xf32>) -> ()
  // func.call @printMemrefF32(%4) : (memref<*xf32>) -> ()

  %5 = llvm.mlir.addressof @str1 : !llvm.ptr<array<14 x i8>>
  %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<array<14 x i8>>) -> !llvm.ptr<i8>
  %7 = memref.alloc() : memref<4xi64>
  %8 = memref.cast %7 : memref<4xi64> to memref<*xi64>
  func.call @read_tensor_i64(%6, %8) : (!llvm.ptr<i8>, memref<*xi64>) -> ()
  func.call @print_tensor_i64(%8) : (memref<*xi64>) -> ()
  // func.call @printMemrefI64(%8) : (memref<*xi64>) -> ()
  return %c0 : i32
}

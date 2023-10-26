module attributes {rmem.templates = {t0 = ["ref0", 8192, 0, 768, f32, 768, 1, 1]}} {
  func.func @main_graph(%arg0: memref<1x1x768xf32>, %arg1: memref<64x1x768xf32>) attributes {access_mem_catcher = [["ref0", 0]], input_names = ["X1", "X2"], llvm.emit_c_interface, operand_types = [!rmem.rmref<1, memref<1x1x768xf32>>, memref<64x1x768xf32>], output_names = ["Y"], remote_target = 1 : i64} {
    %alloc = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg2 = 0 to 64 {
      affine.for %arg3 = 0 to 1 {
        affine.for %arg4 = 0 to 768 {
          %0 = affine.load %arg1[%arg2, %arg3, %arg4] : memref<64x1x768xf32>
          %1 = affine.load %arg0[0, %arg3, %arg4] {remote_check_use = 1 : i8} : memref<1x1x768xf32>
          %2 = arith.addf %0, %1 {remote_check_use = 1 : i8} : f32
          affine.store %2, %alloc[%arg2, %arg3, %arg4] {remote_check_use = 1 : i8} : memref<64x1x768xf32>
        }
      }
    }
    return
  }
}

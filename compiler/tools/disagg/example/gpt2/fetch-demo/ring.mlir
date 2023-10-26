#map = affine_map<(d0) -> (0)>
module attributes {rmem.templates = {t0 = ["ref0", 8192, 0, 768, f32, 768, 1, 1]}} {
  func.func @main_graph(%arg0: !rmem.rmref<1, memref<1x1x768xf32>>, %arg1: memref<64x1x768xf32>) attributes {access_mem_catcher = [["ref0", 0]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %c768 = arith.constant 768 : index
    %c1_i64 = arith.constant 1 : i64
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c0_i64 = arith.constant 0 : i64
    %alloc = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %0 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %0 : !llvm.ptr<i64>
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %1 : !llvm.ptr<i64>
    %2 = rmem.wrid : index
    %3 = rmem.rdma %c0, %arg0[%c0] %c768 4 %2 {map = #map, mem = "t0"} : (index, !rmem.rmref<1, memref<1x1x768xf32>>, index, index, index) -> memref<768xf32>
    rmem.sync %0 -> %2 : <i64>, index
    %4:3 = affine.for %arg2 = 0 to 64 iter_args(%arg3 = %c1, %arg4 = %c0, %arg5 = %3) -> (index, index, memref<768xf32>) {
      %5 = arith.addi %arg3, %c1 : index
      %6 = arith.addi %arg4, %c1 : index
      affine.for %arg6 = 0 to 1 {
        affine.for %arg7 = 0 to 1 {
          affine.for %arg8 = 0 to 768 {
            %7 = affine.load %arg1[%arg2 + %arg6, %arg7, %arg8] : memref<64x1x768xf32>
            %8 = affine.load %arg5[%arg7 * 768 + %arg8] : memref<768xf32>
            %9 = arith.addf %7, %8 : f32
            affine.store %9, %alloc[%arg2 + %arg6, %arg7, %arg8] : memref<64x1x768xf32>
          }
        }
      }
      affine.yield %5, %6, %arg5 : index, index, memref<768xf32>
    }
    return
  }
}


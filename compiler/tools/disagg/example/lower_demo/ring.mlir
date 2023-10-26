#map = affine_map<(d0) -> (d0 * 196608)>
#map1 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 * 64 + d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256)>
#map3 = affine_map<(d0, d1, d2) -> (d0 * 256 + d1 * 256 + d2)>
#map4 = affine_map<(d0) -> (d0 * 3072)>
#map5 = affine_map<(d0, d1) -> (d0 + d1)>
#map6 = affine_map<(d0, d1, d2, d3) -> (d0 * 256 + d1 * 256 + d2 + d3 * 256)>
#map7 = affine_map<(d0, d1, d2, d3) -> (d0 * 16384 + d1 + d2 * 256 + d3 * 256)>
module attributes {rmem.pools = [["ref2"], ["ref0", "ref1"]], rmem.templates = {t0 = ["ref0", 0, 0, 12582912, f32, 196608, 1, 1 : i32], t1 = ["ref1", 0, 0, 196608, f32, 3072, 1, 1 : i32], t2 = ["ref2", 786432, 0, 12582912, f32, 196608, 1, 1 : i32]}} {
  func.func @trans_matmul(%arg0: !rmem.rmref<1, memref<64x12x256x64xf32>>, %arg1: memref<64x12x1x64xf32>) -> !rmem.rmref<1, memref<64x12x1x256xf32>> attributes {access_mem_catcher = [["ref2", 0 : i32]], llvm.emit_c_interface} {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c6 = arith.constant 6 : index
    %c7 = arith.constant 7 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0xFF800000 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %0 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref0", 0 : i32]], alignment = 16 : i64} : <1, memref<64x12x64x256xf32>>
    %c0_i64 = arith.constant 0 : i64
    %c0_1 = arith.constant 0 : index
    %c1_2 = arith.constant 1 : index
    %c1_i64 = arith.constant 1 : i64
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %1 : !llvm.ptr<i64>
    %c1_i64_3 = arith.constant 1 : i64
    %2 = llvm.alloca %c1_i64_3 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %2 : !llvm.ptr<i64>
    %c1_4 = arith.constant 1 : index
    %c0_5 = arith.constant 0 : index
    %c0_6 = arith.constant 0 : index
    %c0_7 = arith.constant 0 : index
    %3 = rmem.slot %c0_7 {mem = "t0"} : (index) -> memref<1x196608xf32>
    %4 = rmem.wrid : index
    %c196608 = arith.constant 196608 : index
    %5 = rmem.rdma %c0_7, %arg0[%c0_6] %c196608 4 %4 {map = #map, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %6:5 = affine.for %arg2 = 0 to 64 iter_args(%arg3 = %c1_4, %arg4 = %c0_1, %arg5 = %3, %arg6 = %5, %arg7 = %4) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, index) {
      %18 = arith.addi %c1_2, %arg3 : index
      %19 = arith.addi %c1_2, %arg4 : index
      %c1_27 = arith.constant 1 : index
      %20 = arith.addi %c1_27, %arg2 : index
      %21 = rmem.slot %arg3 {mem = "t0"} : (index) -> memref<1x196608xf32>
      %22 = rmem.wrid : index
      %c196608_28 = arith.constant 196608 : index
      %23 = rmem.rdma %arg3, %arg0[%20] %c196608_28 4 %22 {map = #map, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %1 -> %arg7 : <i64>, index
      affine.for %arg8 = 0 to 1 {
        affine.for %arg9 = 0 to 12 {
          affine.for %arg10 = 0 to 256 {
            affine.for %arg11 = 0 to 64 {
              %25 = affine.apply #map1(%arg9, %arg10, %arg11)
              %26 = affine.load %arg6[%arg8, %25] : memref<1x196608xf32>
              %27 = affine.apply #map2(%arg9, %arg10, %arg11)
              affine.store %26, %arg5[%arg8, %27] : memref<1x196608xf32>
            }
          }
        }
      }
      %c196608_29 = arith.constant 196608 : index
      %24 = rmem.rdma %arg4, %0[%arg2] %c196608_29 0 %c0_1 {map = #map, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %2 -> %c0_1 : <i64>, index
      affine.yield %18, %19, %21, %23, %22 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, index
    }
    %7 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref1", 0 : i32]], alignment = 16 : i64} : <1, memref<64x12x1x256xf32>>
    %c0_i64_8 = arith.constant 0 : i64
    %c0_9 = arith.constant 0 : index
    %c1_10 = arith.constant 1 : index
    %c1_i64_11 = arith.constant 1 : i64
    %8 = llvm.alloca %c1_i64_11 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_8, %8 : !llvm.ptr<i64>
    %c1_i64_12 = arith.constant 1 : i64
    %9 = llvm.alloca %c1_i64_12 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_8, %9 : !llvm.ptr<i64>
    %c1_13 = arith.constant 1 : index
    %c0_14 = arith.constant 0 : index
    %c0_15 = arith.constant 0 : index
    %c0_16 = arith.constant 0 : index
    %10 = rmem.slot %c0_16 {mem = "t1"} : (index) -> memref<1x3072xf32>
    %11:3 = affine.for %arg2 = 0 to 64 iter_args(%arg3 = %c1_13, %arg4 = %c0_9, %arg5 = %10) -> (index, index, memref<1x3072xf32>) {
      %18 = arith.addi %c1_10, %arg3 : index
      %19 = arith.addi %c1_10, %arg4 : index
      %c1_27 = arith.constant 1 : index
      %20 = arith.addi %c1_27, %arg2 : index
      %21 = rmem.slot %arg3 {mem = "t1"} : (index) -> memref<1x3072xf32>
      affine.for %arg6 = 0 to 1 {
        affine.for %arg7 = 0 to 12 {
          affine.for %arg8 = 0 to 1 {
            affine.for %arg9 = 0 to 256 {
              %24 = affine.apply #map3(%arg7, %arg8, %arg9)
              affine.store %cst_0, %arg5[%arg6, %24] : memref<1x3072xf32>
            }
          }
        }
      }
      %22 = rmem.wrid : index
      %c3072_28 = arith.constant 3072 : index
      %23 = rmem.rdma %arg4, %7[%arg2] %c3072_28 0 %22 {map = #map4, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x1x256xf32>>, index, index, index) -> memref<1x3072xf32>
      rmem.sync %9 -> %22 : <i64>, index
      affine.yield %18, %19, %21 : index, index, memref<1x3072xf32>
    }
    %c0_i64_17 = arith.constant 0 : i64
    %c0_18 = arith.constant 0 : index
    %c1_19 = arith.constant 1 : index
    %c1_i64_20 = arith.constant 1 : i64
    %12 = llvm.alloca %c1_i64_20 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_17, %12 : !llvm.ptr<i64>
    %c1_i64_21 = arith.constant 1 : i64
    %13 = llvm.alloca %c1_i64_21 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_17, %13 : !llvm.ptr<i64>
    %c1_22 = arith.constant 1 : index
    %c0_23 = arith.constant 0 : index
    %c0_24 = arith.constant 0 : index
    %c0_25 = arith.constant 0 : index
    %c196608_26 = arith.constant 196608 : index
    %14 = rmem.rdma %c0_25, %0[%c0_24] %c196608_26 4 %c0_18 {map = #map, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
    %15 = rmem.wrid : index
    %c3072 = arith.constant 3072 : index
    %16 = rmem.rdma %c0_25, %7[%c0_24] %c3072 4 %15 {map = #map4, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x1x256xf32>>, index, index, index) -> memref<1x3072xf32>
    %17:5 = affine.for %arg2 = 0 to 64 iter_args(%arg3 = %c1_22, %arg4 = %c0_18, %arg5 = %14, %arg6 = %16, %arg7 = %15) -> (index, index, memref<1x196608xf32>, memref<1x3072xf32>, index) {
      %18 = arith.addi %c1_19, %arg3 : index
      %19 = arith.addi %c1_19, %arg4 : index
      %c1_27 = arith.constant 1 : index
      %20 = arith.addi %c1_27, %arg2 : index
      %c196608_28 = arith.constant 196608 : index
      %21 = rmem.rdma %arg3, %0[%20] %c196608_28 4 %c0_18 {map = #map, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
      %22 = rmem.wrid : index
      %c3072_29 = arith.constant 3072 : index
      %23 = rmem.rdma %arg3, %7[%20] %c3072_29 4 %22 {map = #map4, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x1x256xf32>>, index, index, index) -> memref<1x3072xf32>
      rmem.sync %12 -> %arg7 : <i64>, index
      affine.for %arg8 = 0 to 1 {
        %26 = affine.apply #map5(%arg2, %arg8)
        affine.for %arg9 = 0 to 12 {
          affine.for %arg10 = 0 to 1 {
            affine.for %arg11 = 0 to 256 step 8 {
              affine.for %arg12 = 0 to 64 step 8 {
                %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
                affine.for %arg13 = 0 to 1 {
                  %27 = arith.addi %arg13, %arg10 : index
                  %28 = affine.apply #map6(%arg9, %arg10, %arg11, %arg13)
                  %29 = vector.load %arg6[%arg8, %28] : memref<1x3072xf32>, vector<8xf32>
                  affine.store %29, %alloca[0] : memref<1xvector<8xf32>>
                  affine.for %arg14 = 0 to 8 {
                    %32 = arith.addi %arg12, %arg14 : index
                    %33 = memref.load %arg1[%26, %arg9, %27, %32] : memref<64x12x1x64xf32>
                    %34 = vector.broadcast %33 : f32 to vector<8xf32>
                    %35 = affine.apply #map7(%arg9, %arg11, %arg12, %arg14)
                    %36 = vector.load %arg5[%arg8, %35] : memref<1x196608xf32>, vector<8xf32>
                    %37 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                    %38 = vector.fma %34, %36, %37 : vector<8xf32>
                    affine.store %38, %alloca[0] : memref<1xvector<8xf32>>
                  }
                  %30 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %31 = affine.apply #map6(%arg9, %arg10, %arg11, %arg13)
                  vector.store %30, %arg6[%arg8, %31] : memref<1x3072xf32>, vector<8xf32>
                }
              }
            }
          }
        }
      }
      %24 = rmem.wrid : index
      %c3072_30 = arith.constant 3072 : index
      %25 = rmem.rdma %arg4, %7[%arg2] %c3072_30 0 %24 {map = #map4, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x1x256xf32>>, index, index, index) -> memref<1x3072xf32>
      rmem.sync %13 -> %24 : <i64>, index
      affine.yield %18, %19, %21, %23, %22 : index, index, memref<1x196608xf32>, memref<1x3072xf32>, index
    }
    return %7 : !rmem.rmref<1, memref<64x12x1x256xf32>>
  }
}


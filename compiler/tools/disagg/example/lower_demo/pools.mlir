#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0) -> (d0 * 196608)>
#map2 = affine_map<(d0) -> (d0 * 3072)>
module attributes {
  rmem.templates = {
  // "t" = [rbase,  l_ofst,    r_ofst, SizeInEle, eleType, bSize,  nBlock, type],
    t0 = ["ref0", 0, 0, 12582912, f32, 196608, 1, 1 : i32], 
    t1 = ["ref1", 0, 0, 196608, f32, 3072, 1, 1 : i32], 
    t2 = ["ref2", 786432, 0, 12582912, f32, 196608, 1, 1 : i32]
    },
  rmem.pools = [
    ["ref2"], ["ref0", "ref1"]
  ]
  } {
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
    affine.for %arg2 = 0 to 64 {
      affine.for %arg3 = 0 to 12 {
        affine.for %arg4 = 0 to 256 {
          affine.for %arg5 = 0 to 64 {
            %2 = rmem.affine.load %arg0[%arg2, %arg3, %arg4, %arg5] {map = #map} : (!rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index, index) -> f32
            rmem.affine.store %2 -> %0[%arg2, %arg3, %arg5, %arg4] {map = #map} : f32, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index, index
          }
        }
      }
    } {access_mem = [["ref0", #map1, 196608, "t0"], ["ref2", #map1, 196608, "t2"]], batch = 1 : i64, nahead = 1 : i64, pf_target = 1 : i64}

    %1 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref1", 0 : i32]], alignment = 16 : i64} : <1, memref<64x12x1x256xf32>>
    affine.for %arg2 = 0 to 64 {
      affine.for %arg3 = 0 to 12 {
        affine.for %arg4 = 0 to 1 {
          affine.for %arg5 = 0 to 256 {
            rmem.affine.store %cst_0 -> %1[%arg2, %arg3, %arg4, %arg5] {map = #map} : f32, !rmem.rmref<1, memref<64x12x1x256xf32>>, index, index, index, index
          }
        }
      }
    } {access_mem = [["ref1", #map2, 3072, "t1"]], batch = 1 : i64, nahead = 1 : i64, pf_target = 1 : i64}

    affine.for %arg2 = 0 to 64 {
      affine.for %arg3 = 0 to 12 {
        affine.for %arg4 = 0 to 1 {
          affine.for %arg5 = 0 to 256 step 8 {
            affine.for %arg6 = 0 to 64 step 8 {
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
              affine.for %arg7 = 0 to 1 {
                %2 = arith.addi %arg7, %arg4 : index
                %3 = rmem.vec.load %1[%arg2, %arg3, %2, %arg5] : !rmem.rmref<1, memref<64x12x1x256xf32>>, vector<8xf32>
                affine.store %3, %alloca[0] : memref<1xvector<8xf32>>
                affine.for %arg8 = 0 to 8 {
                  %5 = arith.addi %arg6, %arg8 : index
                  %6 = memref.load %arg1[%arg2, %arg3, %2, %5] : memref<64x12x1x64xf32>
                  %7 = vector.broadcast %6 : f32 to vector<8xf32>
                  %8 = rmem.vec.load %0[%arg2, %arg3, %5, %arg5] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                  %9 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %10 = vector.fma %7, %8, %9 : vector<8xf32>
                  affine.store %10, %alloca[0] : memref<1xvector<8xf32>>
                }
                %4 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                rmem.vec.store %4, %1[%arg2, %arg3, %2, %arg5] {map = #map} : !rmem.rmref<1, memref<64x12x1x256xf32>>, vector<8xf32>
              }
            }
          }
        }
      }
    } {access_mem = [["ref0", #map1, 196608, "t0"], ["ref1", #map2, 3072, "t1"]], batch = 1 : i64, nahead = 1 : i64, pf_target = 1 : i64}
    return %1 : !rmem.rmref<1, memref<64x12x1x256xf32>>
  }
}


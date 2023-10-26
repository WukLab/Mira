  #map7 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>

  func.func @trans_matmul(%arg0: !rmem.rmref<1, memref<64x12x256x64xf32>>, %reinterpret_cast_59: memref<64x12x1x64xf32>) -> !rmem.rmref<1, memref<64x12x1x256xf32>> attributes {
    llvm.emit_c_interface
  } {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c6 = arith.constant 6 : index
    %c7 = arith.constant 7 : index
    %c0 = arith.constant 0 : index
    %cst_0 = arith.constant 0xFF800000 : f32
    %cst_1 = arith.constant 0.000000e+00 : f32
    // transpose
    %42 = rmem.alloc_memref(2, ) {alignment = 16 : i64} : <1, memref<64x12x64x256xf32>>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %74 = rmem.affine.load %arg0[%arg3, %arg4, %arg5, %arg6] {map = #map7} : (!rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index, index) -> f32
            rmem.affine.store %74 -> %42[%arg3, %arg4, %arg6, %arg5] {map = #map7} : f32, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index, index
          }
        }
      }
    }

    // matmul
    %alloc_62 = rmem.alloc_memref(2, ) {alignment = 16 : i64} : <1, memref<64x12x1x256xf32>>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            rmem.affine.store %cst_1 -> %alloc_62[%arg3, %arg4, %arg5, %arg6] {map=#map7} : f32, !rmem.rmref<1, memref<64x12x1x256xf32>>, index, index, index, index
          }
        }
      }
    }

    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 step 8 {
            affine.for %arg7 = 0 to 64 step 8 {
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
              affine.for %arg8 = 0 to 1 {
                %74 = arith.addi %arg8, %arg5 : index
                %75 = rmem.vec.load %alloc_62[%arg3, %arg4, %74, %arg6] : !rmem.rmref<1, memref<64x12x1x256xf32>>, vector<8xf32>
                affine.store %75, %alloca[0] : memref<1xvector<8xf32>>
                affine.for %arg9 = 0 to 8 {
                  %81 = arith.addi %arg7, %arg9 : index
                  %82 = memref.load %reinterpret_cast_59[%arg3, %arg4, %74, %81] : memref<64x12x1x64xf32>
                  %83 = vector.broadcast %82 : f32 to vector<8xf32>
                  %84 = rmem.vec.load %42[%arg3, %arg4, %81, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                  %85 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %86 = vector.fma %83, %84, %85 : vector<8xf32>
                  affine.store %86, %alloca[0] : memref<1xvector<8xf32>>
                }
                %123 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                rmem.vec.store %123, %alloc_62[%arg3, %arg4, %74, %arg6] {map=#map7} : !rmem.rmref<1, memref<64x12x1x256xf32>>, vector<8xf32>
              }
            }
          }
        }
      }
    }
    return %alloc_62 : !rmem.rmref<1, memref<64x12x1x256xf32>> 
  }
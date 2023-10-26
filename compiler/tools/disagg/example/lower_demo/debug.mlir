#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
module {
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
  %0 = rmem.alloc_memref(2, ) {alignment = 16 : i64} : <1, memref<64x1x1024xf32>>
  %1 = rmem.alloc_memref(2, ) {alignment = 16 : i64} : <1, memref<1024x50264xf32>>
  %2 = rmem.alloc_memref(2, ) {alignment = 16 : i64} : <1, memref<64x1x50264xf32>>
  affine.for %arg0 = 0 to 256 {
    affine.for %arg1 = 0 to 1 {
      affine.for %arg2 = 0 to 50264 step 8 {
        affine.for %arg3 = 0 to 1024 step 8 {
          %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
          affine.for %arg4 = 0 to 1 {
            %3 = arith.addi %arg4, %arg1 : index
            %4 = rmem.vec.load %2[%arg0, %3, %arg2] : !rmem.rmref<1, memref<64x1x50264xf32>>, vector<8xf32>
            affine.store %4, %alloca[0] : memref<1xvector<8xf32>>
            affine.for %arg5 = 0 to 8 {
              %6 = arith.addi %arg3, %arg5 : index
              %7 = rmem.affine.load %0[%arg0, %3, %6] {map = #map} : (!rmem.rmref<1, memref<64x1x1024xf32>>, index, index, index) -> f32
              %8 = vector.broadcast %7 : f32 to vector<8xf32>
              %9 = rmem.vec.load %1[%6, %arg2] : !rmem.rmref<1, memref<1024x50264xf32>>, vector<8xf32>
              %10 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %11 = vector.fma %8, %9, %10 : vector<8xf32>
              affine.store %11, %alloca[0] : memref<1xvector<8xf32>>
            }
            %5 = affine.load %alloca[0] : memref<1xvector<8xf32>>
            rmem.vec.store %5, %2[%arg0, %3, %arg2] : !rmem.rmref<1, memref<64x1x50264xf32>>, vector<8xf32>
          }
        }
      }
    }
  }
}


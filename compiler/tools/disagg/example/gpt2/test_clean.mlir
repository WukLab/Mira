#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0) -> (d0 * 1024)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 * 512)>
#map4 = affine_map<(d0) -> (0)>
module {
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c2 = arith.constant 2 : index
  %c3 = arith.constant 3 : index
  %c4 = arith.constant 4 : index
  %c1024 = arith.constant 1024 : index
  %c2048 = arith.constant 2048 : index
  %cst = arith.constant 0.000000e+00 : f32
  %0 = rmem.alloc_memref(2, ) {access_mem_catcher = ["ref0", 0], alignment = 16 : i64} : <1, memref<64512x1024xf32>>
  %1 = rmem.alloc_memref(2, ) {access_mem_catcher = ["ref1", 0], alignment = 16 : i64} : <1, memref<64512x512xf32>>
  %2 = rmem.alloc_memref(2, ) {access_mem_catcher = ["ref2", 0], alignment = 16 : i64} : <1, memref<512x1024xf32>>
  affine.for %arg0 = 0 to 64512 {
    affine.for %arg1 = 0 to 1024 {
      rmem.affine.store %cst -> %0[%arg0, %arg1] {map = #map} : f32, !rmem.rmref<1, memref<64512x1024xf32>>, index, index
    }
  } {access_mem = [["ref0", #map1, 1024]], batch = 2 : i64, nahead = 2 : i64, pf_target = 1 : i64}
  func.func private @save(index)
  affine.for %arg0 = 0 to 64512 step 4 {
    affine.for %arg1 = 0 to 1024 step 8 {
      affine.for %arg2 = 0 to 512 step 8 {
        %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<8xf32>>
        %3 = rmem.vec.load %0[%arg0, %arg1] : !rmem.rmref<1, memref<64512x1024xf32>>, vector<8xf32>
        affine.store %3, %alloca[0] : memref<4xvector<8xf32>>
        %4 = arith.addi %arg0, %c1 : index
        %5 = rmem.vec.load %0[%4, %arg1] : !rmem.rmref<1, memref<64512x1024xf32>>, vector<8xf32>
        affine.store %5, %alloca[1] : memref<4xvector<8xf32>>
        %6 = arith.addi %arg0, %c2 : index
        %7 = rmem.vec.load %0[%6, %arg1] : !rmem.rmref<1, memref<64512x1024xf32>>, vector<8xf32>
        affine.store %7, %alloca[2] : memref<4xvector<8xf32>>
        %8 = arith.addi %arg0, %c3 : index
        %9 = rmem.vec.load %0[%8, %arg1] : !rmem.rmref<1, memref<64512x1024xf32>>, vector<8xf32>
        affine.store %9, %alloca[3] : memref<4xvector<8xf32>>
        affine.for %arg3 = 0 to 8 step 4 {
          %10 = arith.addi %arg3, %arg2 : index
          %11 = rmem.memref.load %1[%arg0, %10] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
          %12 = vector.broadcast %11 : f32 to vector<8xf32>
          %13 = rmem.vec.load %2[%10, %arg1] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
          %14 = affine.load %alloca[0] : memref<4xvector<8xf32>>
          %15 = vector.fma %12, %13, %14 : vector<8xf32>
          affine.store %15, %alloca[0] : memref<4xvector<8xf32>>
          %16 = affine.apply #map2(%arg3)
          %17 = arith.addi %16, %arg2 : index
          %18 = rmem.memref.load %1[%arg0, %17] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
          %19 = vector.broadcast %18 : f32 to vector<8xf32>
          %20 = rmem.vec.load %2[%17, %arg1] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
          %21 = affine.load %alloca[0] : memref<4xvector<8xf32>>
          %22 = vector.fma %19, %20, %21 : vector<8xf32>
          affine.store %22, %alloca[0] : memref<4xvector<8xf32>>
        }
      }
    }
  } {access_mem = [["ref0", #map1, 4096], ["ref1", #map3, 2048], ["ref2", #map4, 524288]], batch = 2 : i64, nahead = 1 : i64, pf_target = 1 : i64}
}


#map1 = affine_map<(d0) -> (d0 * 196608)>
#map2 = affine_map<(d0) -> (0)>

module attributes {
  rmem.templates = {
// "t" = [rbase,  l_ofst, eleType, block Size, nBlock],
    t0 = ["ref0", 0,      f32,     196608,     2], 
    t1 = ["ref1", 1572864,f32,     196608,     2], 
    t2 = ["ref2", 0,      f32,     196608,     1]
    }
  } {
  %rel_1 = result_of_some_op {access_mem_catcher = "ref0"} : !rmem.rmref<memref<64x12x256x64xf32>>
  %rel_2 = result_of_some_op : memref<64x12x1x64xf32>
  ...
  %0 = remotable.alloc_memref {access_mem_catcher = "ref1"} : !rmem.rmref<memref<64x12x64x256xf32>>
  affine.for %arg1 = 0 to 64 {
    affine.for %arg2 = 0 to 12 {
      affine.for %arg3 = 0 to 256 {
        affine.for %arg4 = 0 to 64 {
          %2 = rmem.load %rel_1[%arg1, %arg2, %arg3, %arg4]
          rmem.store %2 -> %0[%arg1, %arg2, %arg4, %arg3]
        }
      }
    }
  } {
    batch = 1, nahead = 1, pf_target = 1,
    access_mem = [
      ["ref0", #map1, 196608, "t0"],
      ["ref1", #map1, 196608, "t1"]]
    }
  %1 = remotable.alloc_memref {access_mem_catcher = "ref2"} : !rmem.rmref<memref<64x12x1x256xf32>>
  affine.for %arg2 = 0 to 64 {
    affine.for %arg3 = 0 to 12 {
      affine.for %arg5 = 0 to 256 step 8 {
        affine.for %arg6 = 0 to 64 step 8 {
          %alloca = memref.alloca() : memref<1xvector<8xf32>>
          %3 = rmem.vec.load %1[%arg2, %arg3, 0, %arg5] -> vector<8xf32>
          affine.store %3 -> %alloca[0]
          affine.for %arg8 = 0 to 8 {
            %5 = arith.addi %arg6, %arg8 : index
            %6 = memref.load %rel_2[%arg2, %arg3, 0, %5]
            %7 = vector.broadcast %6 : f32 to vector<8xf32>
            %8 = rmem.vec.load %0[%arg2, %arg3, %5, %arg5] -> vector<8xf32>
            %9 = affine.load %alloca[0] : memref<1xvector<8xf32>>
            %10 = vector.fma %7, %8, %9 : vector<8xf32>
            affine.store %10, %alloca[0] : memref<1xvector<8xf32>>
          }
          %4 = affine.load %alloca[0] : memref<1xvector<8xf32>>
          rmem.vec.store %4 -> %1[%arg2, %arg3, %2, %arg5] 
        }
      }
    }
  } {
    batch = 1, nahead = 1, pf_target = 1,
    access_mem = [
      ["ref1", #map1, 196608, "t1"],
      ["ref2", #map2, 196608, "t2"]
    ]
  }
}

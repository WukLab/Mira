#map1 = affine_map<(d0) -> (d0 * 196608)>
#map2 = affine_map<(d0) -> (0)>
#map3 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 * 64 + d2)>
#map4 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256)>

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
  // prologue prefetch ref1
  %s0 = rmem.reserve_slot {"t0", 0} -> memref<1x196608xf32>
  %s1 = rmem.reserve_slot {"t1", 0} -> memref<1x196608xf32>
  %w0 = rmem.wrid {read} : index
  rmem.rdma %w0, %rel_1 + #map1(0) -> %slot_2, size: 196608xf32, code: read
  %loop1:4 = affine.for %arg1 = 0 to 64 iter_args(
    %i = 1, %a0 = %s0, %a1 = %s1, %a2 = %w0
  ) {
    // prefetch for next iter
    %5 = rmem.reserve_slot {"t0", %i} -> memref<1x196608xf32>
    %6 = rmem.reserve_slot {"t1", %i} -> memref<1x196608xf32>
    %7 = arith.addi 1, %arg1
    %8 = rmem.wrid {read} : index
    rmem.rdma %8, %rel_1 + #map1(%7) -> %6, size: 196608xf32, code: read
    // sync previous fetch
    rmem.sync %a2 : index
    // inner loop
    affine.for %arg2 = 0 to 12 {
      affine.for %arg3 = 0 to 256 {
        affine.for %arg4 = 0 to 64 {
          %9 = affine.apply #map3(%arg2, %arg3, %arg4)
          %10 = affine.load %a1[0, %9] : memref<1x196608xf32>
          %11 = affine.apply #map4(%arg2, %arg3, %arg4)
          affine.store %10 -> %a0[0, %11]
        }
      }
    }
    // write back
    %12 = rmem.wrid {write} : index
    rmem.rdma %12, %a0 -> %rel_1 + #map1(%arg1), size: 196608xf32, code: write
    rmem.sync %12 : index
    // input for next iter
    %13 = arith.addi 1, %i
    affine.yield %13, %5, %6, %8 : index, memref<1x196608xf32>, memref<1x196608xf32>, index 
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

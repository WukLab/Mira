#S = rmem.cache_section {
  #type = "direct",
  raddr = %rel,
  block size = 4,
  ...
}
#S0 = rmem.cache_section {
  #type = "direct",
  raddr = %0,
  block size = 1048576,
  ...
}
#map1 = affine_map<(d0)[s0] -> (d0*32768 + s0)>
#map2 = affine_map<(d0,d1) -> (d0*1024 + d1)>

func.func private @goo(%arg0: f32, %arg1: index) -> f32
%rel = previous_op_rel : !rmem.rmref<memref<256x1024x32xf32>>
%0 = rmem.alloc_memref {alignment = 16 : i64} : !rmem.rmref<memref<256x1x1024xf32>>

// prologue of %0 prefetch
%slot = rmem.reserve_slot {"#S0", 0} -> memref<262144xf32>
%sync_id = rmem.rdma %0 -> %slot, size 262144xf32, code read

// prologue of %rel prefetch
%slot0 = rmem.reserve_slot {"#S", 0} -> memref<1xf32>
%sync_id0 = rmem.rdma %rel + #map1(0)[0] -> %slot, size 1xf32, code read
...
%slot1 = rmem.reserve_slot {"#S", 1} -> memref<1xf32>
%sync_id1 = rmem.rdma %rel + #map1(1) -> %slot, size 1xf32, code read
[Operations ...]

rmem.sync %sync_id
affine.for %arg0 = 0 to 256 {

  affine.for %arg1 = 0 to 1024
    : iter_args (%i = 2, %slot0, %slot1, %sync_id0, %sync_id1) {
    // prefetch
    %slot2 = rmem.reserve_slot {"#S", %i} -> memref<1xf32>
    %sync_id2 = rmem.rdma %rel + #map1(%arg1) -> %slot, size 1xf32, code read

    // sync previous fech
    rmem.sync %sync_id0

    %a = affine.load %slot0[0] 
    %c = call @goo(%a, %arg0)
    affine.store %c -> %slot[#map2(%arg0, %arg1)]
    affine.yield (%i+1, %slot1, %slot2, %sync_id1, %sync_id2)
  }
}
%sync_id3 = rmem.rdma %slot -> %0, size 262144xf32, code write
rmem.sync %sync_id3

// [Operations ...]

// %1 = rmem.alloc_memref {alignment = 16 : i64} : !rmem.rmref<memref<1024x50264xf32>>
// %2 = rmem.alloc_memref {alignment = 16 : i64} : !rmem.rmref<memref<256x1x50264xf32>>
// affine.for %arg0 = 0 to 256 {
//   affine.for %arg1 = 0 to 50264 step 8 {
//     affine.for %arg2 = 0 to 1024 step 8 {
//       %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
//       %4 = rmem.vec.load %2[%arg0, 0, %arg1] -> vector<8xf32>
//       affine.store %4 -> %alloca[0]
//       affine.for %arg3 = 0 to 8 {
//         %6 = arith.addi %arg2, %arg3 : index
//         %7 = rmem.affine.load %0[%arg0, 0, %6] 
//         %9 = rmem.vec.load %1[%6, %arg1] -> vector<8xf32>
//         call @foo(%7, %9, %alloca)
//       }
//       %5 = affine.load %alloca[0] : memref<1xvector<8xf32>>
//       rmem.vec.store %5 -> %2[%arg0, 0, %arg1]
//     }
//   } {
//     access_mem = [
//       {base = %0, offset = <(d0,d1) -> (d0 * 1024)>, size = 1024},
//       {base = %1, offset = <(d0,d1) -> (50264 + d1)>, size = 8},
//       ...
//       {base = %1, offset = <(d0,d1) -> (1023 * 50264 + d1)>, size = 8},
//       {base = %2, offset = <(d0,d1) -> (d0 * 50264 + d1)>, size = 8}
//     ]
//   }
// }
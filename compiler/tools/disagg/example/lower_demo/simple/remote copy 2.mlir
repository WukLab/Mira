%SRel = rmem.cache_section {
  #type = "direct", #local = 0, #remote = %rel,
  #line = 4B, #n_blocks = 2048
  ...
}

%S0 = rmem.cache_section {
  #type = "direct", #local = 5242880, #remote = %rel,
  #line = 1MB, #n_blocks = 1
  ...
}

%S1 = rmem.cache_section {
  #type = "direct", #local = 0, #remote = %rel,
  #line = 1608448B, #n_blocks = 3
  ...
}

%S2 = rmem.cache_section {
  #type = "direct", #local = 6291456, #remote = %rel,
  #line = 1608448B, #n_blocks = 3
  ...
}

#map0 = affine_map<(d0,d1) -> (d0 * 8 + d1)>
#map1 = affine_map<(d0) -> (d0 * 50264 * 8)>
#map2 = affine_map<(d0,d1,d2,d3) -> (d0*8192 + d1*1024 + d2 + d3)>

func.func private @foo(%arg0: f32, %arg1: vector<8xf32>, %arg2: memref<1xvector<8xf32>>)

%rel = previous_op_rel : !rmem.rmref<memref<256x1024x32xf32>>
%0 = rmem.alloc_memref {alignment = 16 : i64} : !rmem.rmref<memref<256x1x1024xf32>>
[Operations ...]
%1 = rmem.alloc_memref {alignment = 16 : i64} : !rmem.rmref<memref<1024x50264xf32>>
%2 = rmem.alloc_memref {alignment = 16 : i64} : !rmem.rmref<memref<256x1x50264xf32>>

rmem.fetch %S0, %0
rmem.fetch %S2, %2 + #map1(0)
rmem.fetch %S2, %2 + #map1(1)

[Operations ...]

rmem.wait %S0, %0
%m0: memref<262144xf32> = rmem.paddr %S0, %0
affine.for %i = 0 to 32 {
  affine.if (%i < 30) {
    rmem.fetch %S2, %2 + #map1(%i + 2)
  }
  rmem.wait %S0, %2 + #map1(%i)
  %m2: memref<8x50264xf32> = rmem.paddr %S2, %2 + #map1(%i)
  affine.for %j = 0 to 8 {
    %arg0 = #map0(%i, %j)
    affine.for %arg1 = 0 to 50264 step 8 {
      rmem.fetch %S1, %1 + #map1(1)
      affine.for %arg2 = 0 to 1024 step 8 {
        %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
        %4 = vector.load %m2[%j, %arg1] -> vector<8xf32>
        affine.store %4 -> %alloca[0]
        affine.for %arg3 = 0 to 8 {
          %6 = arith.addi %arg2, %arg3 : index
          %7 = affine.load %0[#map2(%i,%j,%arg2,%arg3)] 
          %9 = rmem.vec.load %1[%6, %arg1] -> vector<8xf32>
          call @foo(%7, %9, %alloca)
        }
        %5 = affine.load %alloca[0] : memref<1xvector<8xf32>>
        vector.store %5 -> %m2[%j, %arg1]
      }
    } 
  }
  rmem.flush %S2, %2 + #map1(%i)
}

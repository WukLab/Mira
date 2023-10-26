module {
  func.func private @goo(%arg0: f32, %arg1: index) -> f32
  func.func private @foo(%arg0: f32, %arg1: vector<8xf32>, %arg2: memref<1xvector<8xf32>>)

  [Operations ...]

  %rel = previous_op_rel : !rmem.rmref<memref<256x1024x32xf32>>
  %0 = rmem.alloc_memref {alignment = 16 : i64} : !rmem.rmref<memref<256x1x1024xf32>>
  affine.for %arg0 = 0 to 256 {
    affine.for %arg1 = 0 to 1024 {
      %a = rmem.affine.load %rel[%arg0, %arg1, 0] 
      %c = call @goo(%a, %arg0)
      rmem.affine.store %c -> %0[%arg0, 0, %arg1]
    } {
      access_mem = [
        {base = %rel, offset = <(d0,d1) -> (d0 * 32768 + d1 * 32)>, size = 1},
        {base = %0, offset = <(d0,d1) -> (d0 * 1024 + d1)>, size = 1}
      ]
    }
  } {
    access_mem = [
      {base = %rel, offset = <(d0) -> (d0 * 32768)>, size = 1},
      {base = %rel, offset = <(d0) -> (d0 * 32768 + 32)>, size = 1},
      ...
      {base = %rel, offset = <(d0) -> (d0 * 32768 + 32736)>, size = 1},
      {base = %0, offset = <(d0) -> (d0 * 1024)>, size = 1024}
    ]
  }

  [Operations ...]

  %1 = rmem.alloc_memref {alignment = 16 : i64} : !rmem.rmref<memref<1024x50264xf32>>
  %2 = rmem.alloc_memref {alignment = 16 : i64} : !rmem.rmref<memref<256x1x50264xf32>>
  affine.for %arg0 = 0 to 256 {
    affine.for %arg1 = 0 to 50264 step 8 {
      affine.for %arg2 = 0 to 1024 step 8 {
        %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
        %4 = rmem.vec.load %2[%arg0, 0, %arg1] -> vector<8xf32>
        affine.store %4 -> %alloca[0]
        affine.for %arg3 = 0 to 8 {
          %6 = arith.addi %arg2, %arg3 : index
          %7 = rmem.affine.load %0[%arg0, 0, %6] 
          %9 = rmem.vec.load %1[%6, %arg1] -> vector<8xf32>
          call @foo(%7, %9, %alloca)
        } {
          access_mem = [
            {base = %0, offset = <(d0,d1,d2,d3) -> (d0 * 1024 + (d2+d3))>, size = 1},
            {base = %1, offset = <(d0,d1,d2,d3) -> ((d2+d3) * 50264 + d1)>, size = 8}
          ]
        }
        %5 = affine.load %alloca[0] : memref<1xvector<8xf32>>
        rmem.vec.store %5 -> %2[%arg0, 0, %arg1]
      } {
        access_mem = [
          {base = %0, offset = <(d0,d1,d2) -> (d0 * 1024 + d2)>, size = 8},
          {base = %1, offset = <(d0,d1,d2) -> (d2 * 50264 + d1)>, size = 8},
          ...
          {base = %1, offset = <(d0,d1,d2) -> ((d2+7) * 50264 + d1)>, size = 8},
          {base = %2, offset = <(d0,d1,d2) -> (d0 * 50264 + d1)>, size = 8}
        ]
      }
    } {
      access_mem = [
        {base = %0, offset = <(d0,d1) -> (d0 * 1024)>, size = 1024},
        {base = %1, offset = <(d0,d1) -> (50264 + d1)>, size = 8},
        ...
        {base = %1, offset = <(d0,d1) -> (1023 * 50264 + d1)>, size = 8},
        {base = %2, offset = <(d0,d1) -> (d0 * 50264 + d1)>, size = 8}
      ]
    }
  } {
    access_mem = [
      {base = %0, offset = <(d0) -> (d0 * 1024)>, size = 1024},
      {base = %1, offset = <(d0) -> (0)>, size = 51470336},
      {base = %2, offset = <(d0) -> (d0 * 50264)>, size = 50264}
    ]
  }
}
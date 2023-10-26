#map7 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>

%40 = rmem.alloc_memref(2, ) {alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
%arg1 = rmem.alloc_memref(2, ) {alignment = 16 : i64} : <1, memref<64x12x255x64xf32>>
affine.for %arg3 = 0 to 64 {
  affine.for %arg4 = 0 to 12 {
    affine.for %arg5 = 0 to 255 {
      affine.for %arg6 = 0 to 64 {
        %74 = rmem.affine.load %arg1[%arg3, %arg4, %arg5, %arg6] {map = #map7} : (!rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index, index) -> f32
        rmem.affine.store %74 -> %40[%arg3, %arg4, %arg5, %arg6] {map = #map7} : f32, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index, index
      }
    }
  }
}
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c6 = arith.constant 6 : index
    %c7 = arith.constant 7 : index
    %c0 = arith.constant 0 : index
%41 = rmem.alloc_memref(2, ) {alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
%alloc_77 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x64xf32>
%alloc_74 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
affine.for %arg3 = 0 to 64 {
  affine.for %arg4 = 0 to 12 {
    affine.for %arg5 = 0 to 1 {
      affine.for %arg6 = 0 to 64 step 8 {
        affine.for %arg7 = 0 to 256 step 8 {
          %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
          affine.for %arg8 = 0 to 1 {
            %74 = arith.addi %arg8, %arg5 : index
            %75 = vector.load %alloc_77[%arg3, %arg4, %74, %arg6] : memref<64x12x1x64xf32>, vector<8xf32>
            affine.store %75, %alloca[0] : memref<1xvector<8xf32>>
            %76 = memref.load %alloc_74[%arg3, %arg4, %74, %arg7] : memref<64x12x1x256xf32>
            %77 = vector.broadcast %76 : f32 to vector<8xf32>
            %78 = rmem.vec.load %41[%arg3, %arg4, %arg7, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
            %79 = affine.load %alloca[0] : memref<1xvector<8xf32>>
            %80 = vector.fma %77, %78, %79 : vector<8xf32>
            affine.store %80, %alloca[0] : memref<1xvector<8xf32>>
            %81 = arith.addi %arg7, %c1 : index
            %82 = memref.load %alloc_74[%arg3, %arg4, %74, %81] : memref<64x12x1x256xf32>
            %83 = vector.broadcast %82 : f32 to vector<8xf32>
            %84 = rmem.vec.load %41[%arg3, %arg4, %81, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
            %85 = affine.load %alloca[0] : memref<1xvector<8xf32>>
            %86 = vector.fma %83, %84, %85 : vector<8xf32>
            affine.store %86, %alloca[0] : memref<1xvector<8xf32>>
            %87 = arith.addi %arg7, %c2 : index
            %88 = memref.load %alloc_74[%arg3, %arg4, %74, %87] : memref<64x12x1x256xf32>
            %89 = vector.broadcast %88 : f32 to vector<8xf32>
            %90 = rmem.vec.load %41[%arg3, %arg4, %87, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
            %91 = affine.load %alloca[0] : memref<1xvector<8xf32>>
            %92 = vector.fma %89, %90, %91 : vector<8xf32>
            affine.store %92, %alloca[0] : memref<1xvector<8xf32>>
            %93 = arith.addi %arg7, %c3 : index
            %94 = memref.load %alloc_74[%arg3, %arg4, %74, %93] : memref<64x12x1x256xf32>
            %95 = vector.broadcast %94 : f32 to vector<8xf32>
            %96 = rmem.vec.load %41[%arg3, %arg4, %93, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
            %97 = affine.load %alloca[0] : memref<1xvector<8xf32>>
            %98 = vector.fma %95, %96, %97 : vector<8xf32>
            affine.store %98, %alloca[0] : memref<1xvector<8xf32>>
            %99 = arith.addi %arg7, %c4 : index
            %100 = memref.load %alloc_74[%arg3, %arg4, %74, %99] : memref<64x12x1x256xf32>
            %101 = vector.broadcast %100 : f32 to vector<8xf32>
            %102 = rmem.vec.load %41[%arg3, %arg4, %99, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
            %103 = affine.load %alloca[0] : memref<1xvector<8xf32>>
            %104 = vector.fma %101, %102, %103 : vector<8xf32>
            affine.store %104, %alloca[0] : memref<1xvector<8xf32>>
            %105 = arith.addi %arg7, %c5 : index
            %106 = memref.load %alloc_74[%arg3, %arg4, %74, %105] : memref<64x12x1x256xf32>
            %107 = vector.broadcast %106 : f32 to vector<8xf32>
            %108 = rmem.vec.load %41[%arg3, %arg4, %105, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
            %109 = affine.load %alloca[0] : memref<1xvector<8xf32>>
            %110 = vector.fma %107, %108, %109 : vector<8xf32>
            affine.store %110, %alloca[0] : memref<1xvector<8xf32>>
            %111 = arith.addi %arg7, %c6 : index
            %112 = memref.load %alloc_74[%arg3, %arg4, %74, %111] : memref<64x12x1x256xf32>
            %113 = vector.broadcast %112 : f32 to vector<8xf32>
            %114 = rmem.vec.load %41[%arg3, %arg4, %111, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
            %115 = affine.load %alloca[0] : memref<1xvector<8xf32>>
            %116 = vector.fma %113, %114, %115 : vector<8xf32>
            affine.store %116, %alloca[0] : memref<1xvector<8xf32>>
            %117 = arith.addi %arg7, %c7 : index
            %118 = memref.load %alloc_74[%arg3, %arg4, %74, %117] : memref<64x12x1x256xf32>
            %119 = vector.broadcast %118 : f32 to vector<8xf32>
            %120 = rmem.vec.load %41[%arg3, %arg4, %117, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
            %121 = affine.load %alloca[0] : memref<1xvector<8xf32>>
            %122 = vector.fma %119, %120, %121 : vector<8xf32>
            affine.store %122, %alloca[0] : memref<1xvector<8xf32>>
            %123 = affine.load %alloca[0] : memref<1xvector<8xf32>>
            vector.store %123, %alloc_77[%arg3, %arg4, %74, %arg6] : memref<64x12x1x64xf32>, vector<8xf32>
          }
        }
      }
    }
  }
}
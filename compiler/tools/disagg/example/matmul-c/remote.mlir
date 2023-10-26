#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0) -> (d0 + 1)>
#map2 = affine_map<(d0) -> (d0 + 2)>
#map3 = affine_map<(d0) -> (d0 + 3)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  func.func @main_graph(%arg0: !rmem.rmref<1, memref<64512x512xf32>>, %arg1: !rmem.rmref<1, memref<512x1024xf32>>) -> !rmem.rmref<1, memref<64512x1024xf32>> attributes {input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %cst = arith.constant 0.000000e+00 : f32
    %0 = rmem.alloc_memref(2, ) {alignment = 16 : i64} : <1, memref<64512x1024xf32>>
    affine.for %arg2 = 0 to 64512 {
      affine.for %arg3 = 0 to 1024 {
        rmem.affine.store %cst -> %0[%arg2, %arg3] {map = #map} : f32, !rmem.rmref<1, memref<64512x1024xf32>>, index, index
      }
    }
    affine.for %arg2 = 0 to 64512 step 4 {
      affine.for %arg3 = 0 to 1024 step 8 {
        affine.for %arg4 = 0 to 512 step 8 {
          %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<8xf32>>
          %1 = rmem.vec.load %0[%arg2, %arg3] : !rmem.rmref<1, memref<64512x1024xf32>>, vector<8xf32>
          affine.store %1, %alloca[0] : memref<4xvector<8xf32>>
          %2 = arith.addi %arg2, %c1 : index
          %3 = rmem.vec.load %0[%2, %arg3] : !rmem.rmref<1, memref<64512x1024xf32>>, vector<8xf32>
          affine.store %3, %alloca[1] : memref<4xvector<8xf32>>
          // %4 = arith.addi %arg2, %c2 : index
          // %5 = rmem.vec.load %0[%4, %arg3] : !rmem.rmref<1, memref<64512x1024xf32>>, vector<8xf32>
          // affine.store %5, %alloca[2] : memref<4xvector<8xf32>>
          // %6 = arith.addi %arg2, %c3 : index
          // %7 = rmem.vec.load %0[%6, %arg3] : !rmem.rmref<1, memref<64512x1024xf32>>, vector<8xf32>
          // affine.store %7, %alloca[3] : memref<4xvector<8xf32>>
          affine.for %arg5 = 0 to 8 step 4 {
            %12 = arith.addi %arg5, %arg4 : index
            %13 = rmem.memref.load %arg0[%arg2, %12] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %14 = vector.broadcast %13 : f32 to vector<8xf32>
            %15 = rmem.vec.load %arg1[%12, %arg3] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
            %16 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            %17 = vector.fma %14, %15, %16 : vector<8xf32>
            affine.store %17, %alloca[0] : memref<4xvector<8xf32>>
            %18 = affine.apply #map1(%arg5)
            %19 = arith.addi %18, %arg4 : index
            %20 = rmem.memref.load %arg0[%arg2, %19] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %21 = vector.broadcast %20 : f32 to vector<8xf32>
            %22 = rmem.vec.load %arg1[%19, %arg3] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
            %23 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            %24 = vector.fma %21, %22, %23 : vector<8xf32>
            affine.store %24, %alloca[0] : memref<4xvector<8xf32>>
            // %25 = affine.apply #map2(%arg5)
            // %26 = arith.addi %25, %arg4 : index
            // %27 = rmem.memref.load %arg0[%arg2, %26] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            // %28 = vector.broadcast %27 : f32 to vector<8xf32>
            // %29 = rmem.vec.load %arg1[%26, %arg3] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
            // %30 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            // %31 = vector.fma %28, %29, %30 : vector<8xf32>
            // affine.store %31, %alloca[0] : memref<4xvector<8xf32>>
            // %32 = affine.apply #map3(%arg5)
            // %33 = arith.addi %32, %arg4 : index
            // %34 = rmem.memref.load %arg0[%arg2, %33] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            // %35 = vector.broadcast %34 : f32 to vector<8xf32>
            // %36 = rmem.vec.load %arg1[%33, %arg3] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
            // %37 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            // %38 = vector.fma %35, %36, %37 : vector<8xf32>
            // affine.store %38, %alloca[0] : memref<4xvector<8xf32>>
            // %39 = rmem.memref.load %arg0[%2, %12] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            // %40 = vector.broadcast %39 : f32 to vector<8xf32>
            // %41 = rmem.vec.load %arg1[%12, %arg3] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
            // %42 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            // %43 = vector.fma %40, %41, %42 : vector<8xf32>
            // affine.store %43, %alloca[1] : memref<4xvector<8xf32>>
            // %44 = rmem.memref.load %arg0[%2, %19] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            // %45 = vector.broadcast %44 : f32 to vector<8xf32>
            // %46 = rmem.vec.load %arg1[%19, %arg3] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
            // %47 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            // %48 = vector.fma %45, %46, %47 : vector<8xf32>
            // affine.store %48, %alloca[1] : memref<4xvector<8xf32>>
            // %49 = rmem.memref.load %arg0[%2, %26] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            // %50 = vector.broadcast %49 : f32 to vector<8xf32>
            // %51 = rmem.vec.load %arg1[%26, %arg3] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
            // %52 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            // %53 = vector.fma %50, %51, %52 : vector<8xf32>
            // affine.store %53, %alloca[1] : memref<4xvector<8xf32>>
            // %54 = rmem.memref.load %arg0[%2, %33] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            // %55 = vector.broadcast %54 : f32 to vector<8xf32>
            // %56 = rmem.vec.load %arg1[%33, %arg3] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
            // %57 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            // %58 = vector.fma %55, %56, %57 : vector<8xf32>
            // affine.store %58, %alloca[1] : memref<4xvector<8xf32>>
            // %59 = rmem.memref.load %arg0[%4, %12] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            // %60 = vector.broadcast %59 : f32 to vector<8xf32>
            // %61 = rmem.vec.load %arg1[%12, %arg3] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
            // %62 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            // %63 = vector.fma %60, %61, %62 : vector<8xf32>
            // affine.store %63, %alloca[2] : memref<4xvector<8xf32>>
            // %64 = rmem.memref.load %arg0[%4, %19] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            // %65 = vector.broadcast %64 : f32 to vector<8xf32>
            // %66 = rmem.vec.load %arg1[%19, %arg3] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
            // %67 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            // %68 = vector.fma %65, %66, %67 : vector<8xf32>
            // affine.store %68, %alloca[2] : memref<4xvector<8xf32>>
            // %69 = rmem.memref.load %arg0[%4, %26] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            // %70 = vector.broadcast %69 : f32 to vector<8xf32>
            // %71 = rmem.vec.load %arg1[%26, %arg3] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
            // %72 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            // %73 = vector.fma %70, %71, %72 : vector<8xf32>
            // affine.store %73, %alloca[2] : memref<4xvector<8xf32>>
            // %74 = rmem.memref.load %arg0[%4, %33] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            // %75 = vector.broadcast %74 : f32 to vector<8xf32>
            // %76 = rmem.vec.load %arg1[%33, %arg3] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
            // %77 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            // %78 = vector.fma %75, %76, %77 : vector<8xf32>
            // affine.store %78, %alloca[2] : memref<4xvector<8xf32>>
            // %79 = rmem.memref.load %arg0[%6, %12] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            // %80 = vector.broadcast %79 : f32 to vector<8xf32>
            // %81 = rmem.vec.load %arg1[%12, %arg3] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
            // %82 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            // %83 = vector.fma %80, %81, %82 : vector<8xf32>
            // affine.store %83, %alloca[3] : memref<4xvector<8xf32>>
            // %84 = rmem.memref.load %arg0[%6, %19] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            // %85 = vector.broadcast %84 : f32 to vector<8xf32>
            // %86 = rmem.vec.load %arg1[%19, %arg3] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
            // %87 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            // %88 = vector.fma %85, %86, %87 : vector<8xf32>
            // affine.store %88, %alloca[3] : memref<4xvector<8xf32>>
            // %89 = rmem.memref.load %arg0[%6, %26] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            // %90 = vector.broadcast %89 : f32 to vector<8xf32>
            // %91 = rmem.vec.load %arg1[%26, %arg3] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
            // %92 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            // %93 = vector.fma %90, %91, %92 : vector<8xf32>
            // affine.store %93, %alloca[3] : memref<4xvector<8xf32>>
            // %94 = rmem.memref.load %arg0[%6, %33] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            // %95 = vector.broadcast %94 : f32 to vector<8xf32>
            // %96 = rmem.vec.load %arg1[%33, %arg3] : !rmem.rmref<1, memref<512x1024xf32>>, vector<8xf32>
            // %97 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            // %98 = vector.fma %95, %96, %97 : vector<8xf32>
            // affine.store %98, %alloca[3] : memref<4xvector<8xf32>>
          }
          %8 = affine.load %alloca[0] : memref<4xvector<8xf32>>
          rmem.vec.store %8, %0[%arg2, %arg3] : !rmem.rmref<1, memref<64512x1024xf32>>, vector<8xf32>
          %9 = affine.load %alloca[1] : memref<4xvector<8xf32>>
          rmem.vec.store %9, %0[%2, %arg3] : !rmem.rmref<1, memref<64512x1024xf32>>, vector<8xf32>
          // %10 = affine.load %alloca[2] : memref<4xvector<8xf32>>
          // rmem.vec.store %10, %0[%4, %arg3] : !rmem.rmref<1, memref<64512x1024xf32>>, vector<8xf32>
          // %11 = affine.load %alloca[3] : memref<4xvector<8xf32>>
          // rmem.vec.store %11, %0[%6, %arg3] : !rmem.rmref<1, memref<64512x1024xf32>>, vector<8xf32>
        }
      }
    }
    return %0 : !rmem.rmref<1, memref<64512x1024xf32>>
  }
}


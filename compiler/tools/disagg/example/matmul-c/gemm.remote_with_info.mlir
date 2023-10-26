#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>

#amap0 = affine_map<(d0) -> (d0 * 512)>
#amap1 = affine_map<(d0) -> (0)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu",
  rmem.templates = {
  // "t" = [rbase,  l_ofst,    r_ofst, SizeInEle, eleType, bSize,  nBlock, type],
    "t0" = ["ref0", 8192,      0,      33030144,  f32,     8192,   64,   1],
    "t1" = ["ref1", 268443648, 0,      262144,    f32,     262144, 1,      1]
  }
} {
  func.func @main_graph(%arg0: !rmem.rmref<1, memref<64512x512xf32>>, %arg1: !rmem.rmref<1, memref<512x512xf32>>) -> memref<64512x512xf32> attributes {input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"],
    access_mem_catcher = [["ref0", 0], ["ref1", 1]] 
  } {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %cst = arith.constant 0.000000e+00 : f32
    %alloc = memref.alloc() {alignment = 16 : i64} : memref<64512x512xf32>
    affine.for %arg2 = 0 to 64512 {
      affine.for %arg3 = 0 to 512 {
        affine.store %cst, %alloc[%arg2, %arg3] : memref<64512x512xf32>
      }
    }
    %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<8xf32>>
    affine.for %arg2 = 0 to 64512 step 4 {
      affine.for %arg3 = 0 to 512 step 8 {
        affine.for %arg4 = 0 to 512 step 8 {
          %0 = vector.load %alloc[%arg2, %arg3] : memref<64512x512xf32>, vector<8xf32>
          affine.store %0, %alloca[0] : memref<4xvector<8xf32>>
          %1 = arith.addi %arg2, %c1 : index
          %2 = vector.load %alloc[%1, %arg3] : memref<64512x512xf32>, vector<8xf32>
          affine.store %2, %alloca[1] : memref<4xvector<8xf32>>
          %3 = arith.addi %arg2, %c2 : index
          %4 = vector.load %alloc[%3, %arg3] : memref<64512x512xf32>, vector<8xf32>
          affine.store %4, %alloca[2] : memref<4xvector<8xf32>>
          %5 = arith.addi %arg2, %c3 : index
          %6 = vector.load %alloc[%5, %arg3] : memref<64512x512xf32>, vector<8xf32>
          affine.store %6, %alloca[3] : memref<4xvector<8xf32>>
          affine.for %arg5 = 0 to 8 step 4 {
            %11 = arith.addi %arg5, %arg4 : index
            %12 = rmem.memref.load %arg0[%arg2, %11] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %13 = vector.broadcast %12 : f32 to vector<8xf32>
            %14 = rmem.vec.load %arg1[%11, %arg3] : !rmem.rmref<1, memref<512x512xf32>>, vector<8xf32>
            %15 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            %16 = vector.fma %13, %14, %15 : vector<8xf32>
            affine.store %16, %alloca[0] : memref<4xvector<8xf32>>
            %17 = affine.apply #map(%arg5)
            %18 = arith.addi %17, %arg4 : index
            %19 = rmem.memref.load %arg0[%arg2, %18] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %20 = vector.broadcast %19 : f32 to vector<8xf32>
            %21 = rmem.vec.load %arg1[%18, %arg3] : !rmem.rmref<1, memref<512x512xf32>>, vector<8xf32>
            %22 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            %23 = vector.fma %20, %21, %22 : vector<8xf32>
            affine.store %23, %alloca[0] : memref<4xvector<8xf32>>
            %24 = affine.apply #map1(%arg5)
            %25 = arith.addi %24, %arg4 : index
            %26 = rmem.memref.load %arg0[%arg2, %25] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %27 = vector.broadcast %26 : f32 to vector<8xf32>
            %28 = rmem.vec.load %arg1[%25, %arg3] : !rmem.rmref<1, memref<512x512xf32>>, vector<8xf32>
            %29 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            %30 = vector.fma %27, %28, %29 : vector<8xf32>
            affine.store %30, %alloca[0] : memref<4xvector<8xf32>>
            %31 = affine.apply #map2(%arg5)
            %32 = arith.addi %31, %arg4 : index
            %33 = rmem.memref.load %arg0[%arg2, %32] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %34 = vector.broadcast %33 : f32 to vector<8xf32>
            %35 = rmem.vec.load %arg1[%32, %arg3] : !rmem.rmref<1, memref<512x512xf32>>, vector<8xf32>
            %36 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            %37 = vector.fma %34, %35, %36 : vector<8xf32>
            affine.store %37, %alloca[0] : memref<4xvector<8xf32>>
            %38 = rmem.memref.load %arg0[%1, %11] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %39 = vector.broadcast %38 : f32 to vector<8xf32>
            %40 = rmem.vec.load %arg1[%11, %arg3] : !rmem.rmref<1, memref<512x512xf32>>, vector<8xf32>
            %41 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            %42 = vector.fma %39, %40, %41 : vector<8xf32>
            affine.store %42, %alloca[1] : memref<4xvector<8xf32>>
            %43 = rmem.memref.load %arg0[%1, %18] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %44 = vector.broadcast %43 : f32 to vector<8xf32>
            %45 = rmem.vec.load %arg1[%18, %arg3] : !rmem.rmref<1, memref<512x512xf32>>, vector<8xf32>
            %46 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            %47 = vector.fma %44, %45, %46 : vector<8xf32>
            affine.store %47, %alloca[1] : memref<4xvector<8xf32>>
            %48 = rmem.memref.load %arg0[%1, %25] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %49 = vector.broadcast %48 : f32 to vector<8xf32>
            %50 = rmem.vec.load %arg1[%25, %arg3] : !rmem.rmref<1, memref<512x512xf32>>, vector<8xf32>
            %51 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            %52 = vector.fma %49, %50, %51 : vector<8xf32>
            affine.store %52, %alloca[1] : memref<4xvector<8xf32>>
            %53 = rmem.memref.load %arg0[%1, %32] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %54 = vector.broadcast %53 : f32 to vector<8xf32>
            %55 = rmem.vec.load %arg1[%32, %arg3] : !rmem.rmref<1, memref<512x512xf32>>, vector<8xf32>
            %56 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            %57 = vector.fma %54, %55, %56 : vector<8xf32>
            affine.store %57, %alloca[1] : memref<4xvector<8xf32>>
            %58 = rmem.memref.load %arg0[%3, %11] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %59 = vector.broadcast %58 : f32 to vector<8xf32>
            %60 = rmem.vec.load %arg1[%11, %arg3] : !rmem.rmref<1, memref<512x512xf32>>, vector<8xf32>
            %61 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            %62 = vector.fma %59, %60, %61 : vector<8xf32>
            affine.store %62, %alloca[2] : memref<4xvector<8xf32>>
            %63 = rmem.memref.load %arg0[%3, %18] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %64 = vector.broadcast %63 : f32 to vector<8xf32>
            %65 = rmem.vec.load %arg1[%18, %arg3] : !rmem.rmref<1, memref<512x512xf32>>, vector<8xf32>
            %66 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            %67 = vector.fma %64, %65, %66 : vector<8xf32>
            affine.store %67, %alloca[2] : memref<4xvector<8xf32>>
            %68 = rmem.memref.load %arg0[%3, %25] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %69 = vector.broadcast %68 : f32 to vector<8xf32>
            %70 = rmem.vec.load %arg1[%25, %arg3] : !rmem.rmref<1, memref<512x512xf32>>, vector<8xf32>
            %71 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            %72 = vector.fma %69, %70, %71 : vector<8xf32>
            affine.store %72, %alloca[2] : memref<4xvector<8xf32>>
            %73 = rmem.memref.load %arg0[%3, %32] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %74 = vector.broadcast %73 : f32 to vector<8xf32>
            %75 = rmem.vec.load %arg1[%32, %arg3] : !rmem.rmref<1, memref<512x512xf32>>, vector<8xf32>
            %76 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            %77 = vector.fma %74, %75, %76 : vector<8xf32>
            affine.store %77, %alloca[2] : memref<4xvector<8xf32>>
            %78 = rmem.memref.load %arg0[%5, %11] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %79 = vector.broadcast %78 : f32 to vector<8xf32>
            %80 = rmem.vec.load %arg1[%11, %arg3] : !rmem.rmref<1, memref<512x512xf32>>, vector<8xf32>
            %81 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            %82 = vector.fma %79, %80, %81 : vector<8xf32>
            affine.store %82, %alloca[3] : memref<4xvector<8xf32>>
            %83 = rmem.memref.load %arg0[%5, %18] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %84 = vector.broadcast %83 : f32 to vector<8xf32>
            %85 = rmem.vec.load %arg1[%18, %arg3] : !rmem.rmref<1, memref<512x512xf32>>, vector<8xf32>
            %86 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            %87 = vector.fma %84, %85, %86 : vector<8xf32>
            affine.store %87, %alloca[3] : memref<4xvector<8xf32>>
            %88 = rmem.memref.load %arg0[%5, %25] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %89 = vector.broadcast %88 : f32 to vector<8xf32>
            %90 = rmem.vec.load %arg1[%25, %arg3] : !rmem.rmref<1, memref<512x512xf32>>, vector<8xf32>
            %91 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            %92 = vector.fma %89, %90, %91 : vector<8xf32>
            affine.store %92, %alloca[3] : memref<4xvector<8xf32>>
            %93 = rmem.memref.load %arg0[%5, %32] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %94 = vector.broadcast %93 : f32 to vector<8xf32>
            %95 = rmem.vec.load %arg1[%32, %arg3] : !rmem.rmref<1, memref<512x512xf32>>, vector<8xf32>
            %96 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            %97 = vector.fma %94, %95, %96 : vector<8xf32>
            affine.store %97, %alloca[3] : memref<4xvector<8xf32>>
          }
          %7 = affine.load %alloca[0] : memref<4xvector<8xf32>>
          vector.store %7, %alloc[%arg2, %arg3] : memref<64512x512xf32>, vector<8xf32>
          %8 = affine.load %alloca[1] : memref<4xvector<8xf32>>
          vector.store %8, %alloc[%1, %arg3] : memref<64512x512xf32>, vector<8xf32>
          %9 = affine.load %alloca[2] : memref<4xvector<8xf32>>
          vector.store %9, %alloc[%3, %arg3] : memref<64512x512xf32>, vector<8xf32>
          %10 = affine.load %alloca[3] : memref<4xvector<8xf32>>
          vector.store %10, %alloc[%5, %arg3] : memref<64512x512xf32>, vector<8xf32>
        }
      }
    } 
    {"pf_target" = 1, "nahead" = 4, "batch" = 4,
    "access_mem" = [
      ["ref0", #amap0, 2048, "t0"],
      ["ref1", #amap1, 262144, "t1"]
    ]}
    rmem.return %alloc : memref<64512x512xf32>
  }
}


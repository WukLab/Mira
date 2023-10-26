#map = affine_map<(d0) -> (0)>
#map1 = affine_map<(d0) -> (d0 * 512)>
#map2 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map3 = affine_map<(d0, d1) -> (d0 + d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0 + d1 * 512 + d2 * 512)>
#map5 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
#map6 = affine_map<(d0, d1, d2) -> (d0 + d1 * 512 + d2 * 512 + 512)>
#map7 = affine_map<(d0, d1) -> (d0 + d1 + 2)>
#map8 = affine_map<(d0, d1, d2) -> (d0 + d1 * 512 + d2 * 512 + 1024)>
#map9 = affine_map<(d0, d1) -> (d0 + d1 + 3)>
#map10 = affine_map<(d0, d1, d2) -> (d0 + d1 * 512 + d2 * 512 + 1536)>
#map11 = affine_map<(d0, d1) -> (d0 + d1 + 512)>
#map12 = affine_map<(d0, d1) -> (d0 + d1 + 513)>
#map13 = affine_map<(d0, d1) -> (d0 + d1 + 514)>
#map14 = affine_map<(d0, d1) -> (d0 + d1 + 515)>
#map15 = affine_map<(d0, d1) -> (d0 + d1 + 1024)>
#map16 = affine_map<(d0, d1) -> (d0 + d1 + 1025)>
#map17 = affine_map<(d0, d1) -> (d0 + d1 + 1026)>
#map18 = affine_map<(d0, d1) -> (d0 + d1 + 1027)>
#map19 = affine_map<(d0, d1) -> (d0 + d1 + 1536)>
#map20 = affine_map<(d0, d1) -> (d0 + d1 + 1537)>
#map21 = affine_map<(d0, d1) -> (d0 + d1 + 1538)>
#map22 = affine_map<(d0, d1) -> (d0 + d1 + 1539)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 8192, 0, 33030144, f32, 8192, 64, 1], t1 = ["ref1", 268443648, 0, 262144, f32, 262144, 1, 1]}} {
  func.func @main_graph(%arg0: !rmem.rmref<1, memref<64512x512xf32>>, %arg1: !rmem.rmref<1, memref<512x512xf32>>) -> memref<64512x512xf32> attributes {access_mem_catcher = [["ref0", 0], ["ref1", 1]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %c64 = arith.constant 64 : index
    %c48 = arith.constant 48 : index
    %c32 = arith.constant 32 : index
    %c16 = arith.constant 16 : index
    %c8192 = arith.constant 8192 : index
    %c262144 = arith.constant 262144 : index
    %c4 = arith.constant 4 : index
    %c1_i64 = arith.constant 1 : i64
    %c0 = arith.constant 0 : index
    %c0_i64 = arith.constant 0 : i64
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
    %0 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %0 : !llvm.ptr<i64>
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %1 : !llvm.ptr<i64>
    %2 = rmem.wrid : index
    %3 = rmem.rdma %c0, %arg1[%c0] %c262144 4 %2 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index) -> memref<262144xf32>
    %4 = rmem.wrid : index
    %5 = rmem.rdma %c0, %arg0[%c0] %c8192 4 %4 {map = #map1, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<4x2048xf32>
    %6 = rmem.wrid : index
    %7 = rmem.rdma %c1, %arg0[%c16] %c8192 4 %6 {map = #map1, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<4x2048xf32>
    %8 = rmem.wrid : index
    %9 = rmem.rdma %c2, %arg0[%c32] %c8192 4 %8 {map = #map1, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<4x2048xf32>
    %10 = rmem.wrid : index
    %11 = rmem.rdma %c3, %arg0[%c48] %c8192 4 %10 {map = #map1, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<4x2048xf32>
    rmem.sync %0 -> %2 : <i64>, index
    %12:11 = affine.for %arg2 = 0 to 64512 step 16 iter_args(%arg3 = %c4, %arg4 = %c0, %arg5 = %3, %arg6 = %5, %arg7 = %4, %arg8 = %7, %arg9 = %6, %arg10 = %9, %arg11 = %8, %arg12 = %11, %arg13 = %10) -> (index, index, memref<262144xf32>, memref<4x2048xf32>, index, memref<4x2048xf32>, index, memref<4x2048xf32>, index, memref<4x2048xf32>, index) {
      %13 = arith.addi %arg3, %c1 : index
      %14 = arith.addi %arg4, %c1 : index
      %15 = arith.addi %arg2, %c64 : index
      %16 = rmem.wrid : index
      %17 = rmem.rdma %arg3, %arg0[%15] %c8192 4 %16 {map = #map1, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<4x2048xf32>
      rmem.sync %0 -> %arg7 : <i64>, index
      affine.for %arg14 = 0 to 4 {
        %18 = affine.apply #map2(%arg2, %arg14)
        affine.for %arg15 = 0 to 512 step 8 {
          affine.for %arg16 = 0 to 512 step 8 {
            %19 = vector.load %alloc[%18, %arg15] : memref<64512x512xf32>, vector<8xf32>
            affine.store %19, %alloca[0] : memref<4xvector<8xf32>>
            %20 = arith.addi %18, %c1 : index
            %21 = vector.load %alloc[%20, %arg15] : memref<64512x512xf32>, vector<8xf32>
            affine.store %21, %alloca[1] : memref<4xvector<8xf32>>
            %22 = arith.addi %18, %c2 : index
            %23 = vector.load %alloc[%22, %arg15] : memref<64512x512xf32>, vector<8xf32>
            affine.store %23, %alloca[2] : memref<4xvector<8xf32>>
            %24 = arith.addi %18, %c3 : index
            %25 = vector.load %alloc[%24, %arg15] : memref<64512x512xf32>, vector<8xf32>
            affine.store %25, %alloca[3] : memref<4xvector<8xf32>>
            affine.for %arg17 = 0 to 8 step 4 {
              %30 = affine.apply #map3(%arg16, %arg17)
              %31 = memref.load %arg6[%arg14, %30] : memref<4x2048xf32>
              %32 = vector.broadcast %31 : f32 to vector<8xf32>
              %33 = affine.apply #map4(%arg15, %arg16, %arg17)
              %34 = vector.load %arg5[%33] : memref<262144xf32>, vector<8xf32>
              %35 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %36 = vector.fma %32, %34, %35 : vector<8xf32>
              affine.store %36, %alloca[0] : memref<4xvector<8xf32>>
              %37 = affine.apply #map5(%arg16, %arg17)
              %38 = memref.load %arg6[%arg14, %37] : memref<4x2048xf32>
              %39 = vector.broadcast %38 : f32 to vector<8xf32>
              %40 = affine.apply #map6(%arg15, %arg16, %arg17)
              %41 = vector.load %arg5[%40] : memref<262144xf32>, vector<8xf32>
              %42 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %43 = vector.fma %39, %41, %42 : vector<8xf32>
              affine.store %43, %alloca[0] : memref<4xvector<8xf32>>
              %44 = affine.apply #map7(%arg16, %arg17)
              %45 = memref.load %arg6[%arg14, %44] : memref<4x2048xf32>
              %46 = vector.broadcast %45 : f32 to vector<8xf32>
              %47 = affine.apply #map8(%arg15, %arg16, %arg17)
              %48 = vector.load %arg5[%47] : memref<262144xf32>, vector<8xf32>
              %49 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %50 = vector.fma %46, %48, %49 : vector<8xf32>
              affine.store %50, %alloca[0] : memref<4xvector<8xf32>>
              %51 = affine.apply #map9(%arg16, %arg17)
              %52 = memref.load %arg6[%arg14, %51] : memref<4x2048xf32>
              %53 = vector.broadcast %52 : f32 to vector<8xf32>
              %54 = affine.apply #map10(%arg15, %arg16, %arg17)
              %55 = vector.load %arg5[%54] : memref<262144xf32>, vector<8xf32>
              %56 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %57 = vector.fma %53, %55, %56 : vector<8xf32>
              affine.store %57, %alloca[0] : memref<4xvector<8xf32>>
              %58 = affine.apply #map11(%arg16, %arg17)
              %59 = memref.load %arg6[%arg14, %58] : memref<4x2048xf32>
              %60 = vector.broadcast %59 : f32 to vector<8xf32>
              %61 = vector.load %arg5[%33] : memref<262144xf32>, vector<8xf32>
              %62 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %63 = vector.fma %60, %61, %62 : vector<8xf32>
              affine.store %63, %alloca[1] : memref<4xvector<8xf32>>
              %64 = affine.apply #map12(%arg16, %arg17)
              %65 = memref.load %arg6[%arg14, %64] : memref<4x2048xf32>
              %66 = vector.broadcast %65 : f32 to vector<8xf32>
              %67 = vector.load %arg5[%40] : memref<262144xf32>, vector<8xf32>
              %68 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %69 = vector.fma %66, %67, %68 : vector<8xf32>
              affine.store %69, %alloca[1] : memref<4xvector<8xf32>>
              %70 = affine.apply #map13(%arg16, %arg17)
              %71 = memref.load %arg6[%arg14, %70] : memref<4x2048xf32>
              %72 = vector.broadcast %71 : f32 to vector<8xf32>
              %73 = vector.load %arg5[%47] : memref<262144xf32>, vector<8xf32>
              %74 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %75 = vector.fma %72, %73, %74 : vector<8xf32>
              affine.store %75, %alloca[1] : memref<4xvector<8xf32>>
              %76 = affine.apply #map14(%arg16, %arg17)
              %77 = memref.load %arg6[%arg14, %76] : memref<4x2048xf32>
              %78 = vector.broadcast %77 : f32 to vector<8xf32>
              %79 = vector.load %arg5[%54] : memref<262144xf32>, vector<8xf32>
              %80 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %81 = vector.fma %78, %79, %80 : vector<8xf32>
              affine.store %81, %alloca[1] : memref<4xvector<8xf32>>
              %82 = affine.apply #map15(%arg16, %arg17)
              %83 = memref.load %arg6[%arg14, %82] : memref<4x2048xf32>
              %84 = vector.broadcast %83 : f32 to vector<8xf32>
              %85 = vector.load %arg5[%33] : memref<262144xf32>, vector<8xf32>
              %86 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %87 = vector.fma %84, %85, %86 : vector<8xf32>
              affine.store %87, %alloca[2] : memref<4xvector<8xf32>>
              %88 = affine.apply #map16(%arg16, %arg17)
              %89 = memref.load %arg6[%arg14, %88] : memref<4x2048xf32>
              %90 = vector.broadcast %89 : f32 to vector<8xf32>
              %91 = vector.load %arg5[%40] : memref<262144xf32>, vector<8xf32>
              %92 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %93 = vector.fma %90, %91, %92 : vector<8xf32>
              affine.store %93, %alloca[2] : memref<4xvector<8xf32>>
              %94 = affine.apply #map17(%arg16, %arg17)
              %95 = memref.load %arg6[%arg14, %94] : memref<4x2048xf32>
              %96 = vector.broadcast %95 : f32 to vector<8xf32>
              %97 = vector.load %arg5[%47] : memref<262144xf32>, vector<8xf32>
              %98 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %99 = vector.fma %96, %97, %98 : vector<8xf32>
              affine.store %99, %alloca[2] : memref<4xvector<8xf32>>
              %100 = affine.apply #map18(%arg16, %arg17)
              %101 = memref.load %arg6[%arg14, %100] : memref<4x2048xf32>
              %102 = vector.broadcast %101 : f32 to vector<8xf32>
              %103 = vector.load %arg5[%54] : memref<262144xf32>, vector<8xf32>
              %104 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %105 = vector.fma %102, %103, %104 : vector<8xf32>
              affine.store %105, %alloca[2] : memref<4xvector<8xf32>>
              %106 = affine.apply #map19(%arg16, %arg17)
              %107 = memref.load %arg6[%arg14, %106] : memref<4x2048xf32>
              %108 = vector.broadcast %107 : f32 to vector<8xf32>
              %109 = vector.load %arg5[%33] : memref<262144xf32>, vector<8xf32>
              %110 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %111 = vector.fma %108, %109, %110 : vector<8xf32>
              affine.store %111, %alloca[3] : memref<4xvector<8xf32>>
              %112 = affine.apply #map20(%arg16, %arg17)
              %113 = memref.load %arg6[%arg14, %112] : memref<4x2048xf32>
              %114 = vector.broadcast %113 : f32 to vector<8xf32>
              %115 = vector.load %arg5[%40] : memref<262144xf32>, vector<8xf32>
              %116 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %117 = vector.fma %114, %115, %116 : vector<8xf32>
              affine.store %117, %alloca[3] : memref<4xvector<8xf32>>
              %118 = affine.apply #map21(%arg16, %arg17)
              %119 = memref.load %arg6[%arg14, %118] : memref<4x2048xf32>
              %120 = vector.broadcast %119 : f32 to vector<8xf32>
              %121 = vector.load %arg5[%47] : memref<262144xf32>, vector<8xf32>
              %122 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %123 = vector.fma %120, %121, %122 : vector<8xf32>
              affine.store %123, %alloca[3] : memref<4xvector<8xf32>>
              %124 = affine.apply #map22(%arg16, %arg17)
              %125 = memref.load %arg6[%arg14, %124] : memref<4x2048xf32>
              %126 = vector.broadcast %125 : f32 to vector<8xf32>
              %127 = vector.load %arg5[%54] : memref<262144xf32>, vector<8xf32>
              %128 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %129 = vector.fma %126, %127, %128 : vector<8xf32>
              affine.store %129, %alloca[3] : memref<4xvector<8xf32>>
            }
            %26 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            vector.store %26, %alloc[%18, %arg15] : memref<64512x512xf32>, vector<8xf32>
            %27 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            vector.store %27, %alloc[%20, %arg15] : memref<64512x512xf32>, vector<8xf32>
            %28 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            vector.store %28, %alloc[%22, %arg15] : memref<64512x512xf32>, vector<8xf32>
            %29 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            vector.store %29, %alloc[%24, %arg15] : memref<64512x512xf32>, vector<8xf32>
          }
        }
      }
      affine.yield %13, %14, %arg5, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %17, %16 : index, index, memref<262144xf32>, memref<4x2048xf32>, index, memref<4x2048xf32>, index, memref<4x2048xf32>, index, memref<4x2048xf32>, index
    }
    rmem.return %alloc : memref<64512x512xf32>
  }
}


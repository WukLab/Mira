#map = affine_map<(d0, d1, d2) -> (d0 + d1 * 512 + d2 * 512)>
#map1 = affine_map<(d0, d1, d2) -> (d2 * 512)>
#map2 = affine_map<(d0) -> (d0)>
#map3 = affine_map<(d0) -> (d0 + 64)>
#map4 = affine_map<(d0, d1) -> (d0 + d1 * 32)>
#map5 = affine_map<(d0, d1) -> (d0 + d1 * 32 + 32)>
#map6 = affine_map<(d0, d1, d2) -> (d0 - d1 - d2 * 32)>
#map7 = affine_map<(d0, d1) -> (-d0 + d1)>
#map8 = affine_map<(d0, d1, d2) -> (d0 * -512 + d1 + d2 * 512)>
#map9 = affine_map<(d0, d1, d2) -> (d0 * -512 + d1 + d2 * 512 + 512)>
#map10 = affine_map<(d0, d1, d2) -> (d0 * -512 + d1 + d2 * 512 + 1024)>
#map11 = affine_map<(d0, d1, d2) -> (d0 * -512 + d1 + d2 * 512 + 1536)>
#map12 = affine_map<(d0) -> (d0 + 1)>
#map13 = affine_map<(d0) -> (d0 + 2)>
#map14 = affine_map<(d0) -> (d0 + 3)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 8192, 0, 33030144, f32, 16384, 64, 1], t1 = ["ref1", 268443648, 0, 262144, f32, 64, 1, 1], t2 = ["ref2", 269492224, 0, 33030144, f32, 16384, 64, 1]}} {
  func.func @main_graph(%arg0: !rmem.rmref<1, memref<64512x512xf32>>, %arg1: !rmem.rmref<1, memref<512x512xf32>>) -> !rmem.rmref<1, memref<64512x512xf32>> attributes {access_mem_catcher = [["ref0", 0], ["ref1", 1]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %c256 = arith.constant 256 : index
    %c192 = arith.constant 192 : index
    %c128 = arith.constant 128 : index
    %c32768 = arith.constant 32768 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c64 = arith.constant 64 : index
    %c8 = arith.constant 8 : index
    %c1_i64 = arith.constant 1 : i64
    %c0 = arith.constant 0 : index
    %c0_i64 = arith.constant 0 : i64
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %0 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref2", 0]], alignment = 16 : i64} : <1, memref<64512x512xf32>>
    %alloc = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_0 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    %alloc_1 = memref.alloc() {alignment = 128 : i64} : memref<64512x512xf32>
    affine.for %arg2 = 0 to 512 step 64 {
      affine.for %arg3 = 0 to 512 step 256 {
        %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
        llvm.store %c0_i64, %1 : !llvm.ptr<i64>
        %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
        llvm.store %c0_i64, %2 : !llvm.ptr<i64>
        %3 = rmem.wrid : index
        %4 = rmem.rdma %c0, %arg1[%arg2, %arg3, %c0] %c64 4 %3 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
        %5 = rmem.wrid : index
        %6 = rmem.rdma %c0, %arg1[%arg2, %arg3, %c1] %c64 4 %5 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
        %7 = rmem.wrid : index
        %8 = rmem.rdma %c0, %arg1[%arg2, %arg3, %c2] %c64 4 %7 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
        %9 = rmem.wrid : index
        %10 = rmem.rdma %c0, %arg1[%arg2, %arg3, %c3] %c64 4 %9 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
        %11 = rmem.wrid : index
        %12 = rmem.rdma %c0, %arg1[%arg2, %arg3, %c4] %c64 4 %11 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
        %13 = rmem.wrid : index
        %14 = rmem.rdma %c0, %arg1[%arg2, %arg3, %c5] %c64 4 %13 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
        %15 = rmem.wrid : index
        %16 = rmem.rdma %c0, %arg1[%arg2, %arg3, %c6] %c64 4 %15 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
        %17 = rmem.wrid : index
        %18 = rmem.rdma %c0, %arg1[%arg2, %arg3, %c7] %c64 4 %17 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
        %19:18 = affine.for %arg4 = 0 to 256 iter_args(%arg5 = %c8, %arg6 = %c0, %arg7 = %4, %arg8 = %3, %arg9 = %6, %arg10 = %5, %arg11 = %8, %arg12 = %7, %arg13 = %10, %arg14 = %9, %arg15 = %12, %arg16 = %11, %arg17 = %14, %arg18 = %13, %arg19 = %16, %arg20 = %15, %arg21 = %18, %arg22 = %17) -> (index, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index) {
          %35 = arith.addi %arg5, %c1 : index
          %36 = arith.addi %arg6, %c1 : index
          %37 = arith.addi %arg4, %c8 : index
          %38 = rmem.wrid : index
          %39 = rmem.rdma %c0, %arg1[%arg2, %arg3, %37] %c64 4 %38 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
          rmem.sync %1 -> %arg8 : <i64>, index
          affine.for %arg23 = 0 to 1 {
            affine.for %arg24 = 0 to 64 {
              %40 = affine.load %arg7[%arg23, %arg24] : memref<1x64xf32>
              affine.store %40, %alloc_0[%arg4 + %arg23, %arg24] : memref<256x64xf32>
            }
          }
          affine.yield %35, %36, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19, %arg20, %arg21, %arg22, %39, %38 : index, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index
        }
        %20 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
        llvm.store %c0_i64, %20 : !llvm.ptr<i64>
        %21 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
        llvm.store %c0_i64, %21 : !llvm.ptr<i64>
        %22 = rmem.rdma %c0, %arg0[%arg2, %arg3, %c0] %c32768 4 %c0 {map = #map1, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
        %23 = rmem.wrid : index
        %24 = rmem.rdma %c0, %0[%arg2, %arg3, %c0] %c32768 4 %23 {map = #map1, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
        %25 = rmem.rdma %c0, %arg0[%arg2, %arg3, %c64] %c32768 4 %c0 {map = #map1, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
        %26 = rmem.wrid : index
        %27 = rmem.rdma %c0, %0[%arg2, %arg3, %c64] %c32768 4 %26 {map = #map1, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
        %28 = rmem.rdma %c0, %arg0[%arg2, %arg3, %c128] %c32768 4 %c0 {map = #map1, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
        %29 = rmem.wrid : index
        %30 = rmem.rdma %c0, %0[%arg2, %arg3, %c128] %c32768 4 %29 {map = #map1, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
        %31 = rmem.rdma %c0, %arg0[%arg2, %arg3, %c192] %c32768 4 %c0 {map = #map1, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
        %32 = rmem.wrid : index
        %33 = rmem.rdma %c0, %0[%arg2, %arg3, %c192] %c32768 4 %32 {map = #map1, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
        %34:14 = affine.for %arg4 = 0 to 64512 step 64 iter_args(%arg5 = %c4, %arg6 = %c0, %arg7 = %22, %arg8 = %24, %arg9 = %23, %arg10 = %25, %arg11 = %27, %arg12 = %26, %arg13 = %28, %arg14 = %30, %arg15 = %29, %arg16 = %31, %arg17 = %33, %arg18 = %32) -> (index, index, memref<2x16384xf32>, memref<2x16384xf32>, index, memref<2x16384xf32>, memref<2x16384xf32>, index, memref<2x16384xf32>, memref<2x16384xf32>, index, memref<2x16384xf32>, memref<2x16384xf32>, index) {
          %35 = arith.addi %arg5, %c1 : index
          %36 = arith.addi %arg6, %c1 : index
          %37 = arith.addi %arg4, %c256 : index
          %38 = rmem.rdma %c0, %arg0[%arg2, %arg3, %37] %c32768 4 %c0 {map = #map1, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
          %39 = rmem.wrid : index
          %40 = rmem.rdma %c0, %0[%arg2, %arg3, %37] %c32768 4 %39 {map = #map1, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
          rmem.sync %20 -> %arg9 : <i64>, index
          affine.for %arg19 = 0 to 2 {
            affine.for %arg20 = 0 to 32 {
              affine.for %arg21 = 0 to 256 {
                %41 = affine.load %arg7[%arg19, %arg3 + %arg20 * 512 + %arg21] : memref<2x16384xf32>
                affine.store %41, %alloc[%arg20, %arg21] : memref<32x256xf32>
              }
            }
            affine.for %arg20 = #map2(%arg2) to #map3(%arg2) step 16 {
              affine.for %arg21 = #map4(%arg4, %arg19) to #map5(%arg4, %arg19) step 4 {
                %41 = affine.apply #map6(%arg21, %arg4, %arg19)
                %42 = affine.apply #map7(%arg2, %arg20)
                %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
                %43 = affine.apply #map8(%arg19, %arg20, %arg21)
                %44 = vector.load %arg8[%arg19, %43] : memref<2x16384xf32>, vector<16xf32>
                affine.store %44, %alloca[0] : memref<4xvector<16xf32>>
                %45 = arith.addi %arg21, %c1 : index
                %46 = affine.apply #map9(%arg19, %arg20, %arg21)
                %47 = vector.load %arg8[%arg19, %46] : memref<2x16384xf32>, vector<16xf32>
                affine.store %47, %alloca[1] : memref<4xvector<16xf32>>
                %48 = arith.addi %arg21, %c2 : index
                %49 = affine.apply #map10(%arg19, %arg20, %arg21)
                %50 = vector.load %arg8[%arg19, %49] : memref<2x16384xf32>, vector<16xf32>
                affine.store %50, %alloca[2] : memref<4xvector<16xf32>>
                %51 = arith.addi %arg21, %c3 : index
                %52 = affine.apply #map11(%arg19, %arg20, %arg21)
                %53 = vector.load %arg8[%arg19, %52] : memref<2x16384xf32>, vector<16xf32>
                affine.store %53, %alloca[3] : memref<4xvector<16xf32>>
                affine.for %arg22 = 0 to 256 step 4 {
                  %58 = memref.load %alloc[%41, %arg22] : memref<32x256xf32>
                  %59 = vector.broadcast %58 : f32 to vector<16xf32>
                  %60 = vector.load %alloc_0[%arg22, %42] : memref<256x64xf32>, vector<16xf32>
                  %61 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                  %62 = vector.fma %59, %60, %61 : vector<16xf32>
                  affine.store %62, %alloca[0] : memref<4xvector<16xf32>>
                  %63 = affine.apply #map12(%arg22)
                  %64 = memref.load %alloc[%41, %63] : memref<32x256xf32>
                  %65 = vector.broadcast %64 : f32 to vector<16xf32>
                  %66 = vector.load %alloc_0[%63, %42] : memref<256x64xf32>, vector<16xf32>
                  %67 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                  %68 = vector.fma %65, %66, %67 : vector<16xf32>
                  affine.store %68, %alloca[0] : memref<4xvector<16xf32>>
                  %69 = affine.apply #map13(%arg22)
                  %70 = memref.load %alloc[%41, %69] : memref<32x256xf32>
                  %71 = vector.broadcast %70 : f32 to vector<16xf32>
                  %72 = vector.load %alloc_0[%69, %42] : memref<256x64xf32>, vector<16xf32>
                  %73 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                  %74 = vector.fma %71, %72, %73 : vector<16xf32>
                  affine.store %74, %alloca[0] : memref<4xvector<16xf32>>
                  %75 = affine.apply #map14(%arg22)
                  %76 = memref.load %alloc[%41, %75] : memref<32x256xf32>
                  %77 = vector.broadcast %76 : f32 to vector<16xf32>
                  %78 = vector.load %alloc_0[%75, %42] : memref<256x64xf32>, vector<16xf32>
                  %79 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                  %80 = vector.fma %77, %78, %79 : vector<16xf32>
                  affine.store %80, %alloca[0] : memref<4xvector<16xf32>>
                  %81 = arith.addi %41, %c1 : index
                  %82 = memref.load %alloc[%81, %arg22] : memref<32x256xf32>
                  %83 = vector.broadcast %82 : f32 to vector<16xf32>
                  %84 = vector.load %alloc_0[%arg22, %42] : memref<256x64xf32>, vector<16xf32>
                  %85 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                  %86 = vector.fma %83, %84, %85 : vector<16xf32>
                  affine.store %86, %alloca[1] : memref<4xvector<16xf32>>
                  %87 = memref.load %alloc[%81, %63] : memref<32x256xf32>
                  %88 = vector.broadcast %87 : f32 to vector<16xf32>
                  %89 = vector.load %alloc_0[%63, %42] : memref<256x64xf32>, vector<16xf32>
                  %90 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                  %91 = vector.fma %88, %89, %90 : vector<16xf32>
                  affine.store %91, %alloca[1] : memref<4xvector<16xf32>>
                  %92 = memref.load %alloc[%81, %69] : memref<32x256xf32>
                  %93 = vector.broadcast %92 : f32 to vector<16xf32>
                  %94 = vector.load %alloc_0[%69, %42] : memref<256x64xf32>, vector<16xf32>
                  %95 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                  %96 = vector.fma %93, %94, %95 : vector<16xf32>
                  affine.store %96, %alloca[1] : memref<4xvector<16xf32>>
                  %97 = memref.load %alloc[%81, %75] : memref<32x256xf32>
                  %98 = vector.broadcast %97 : f32 to vector<16xf32>
                  %99 = vector.load %alloc_0[%75, %42] : memref<256x64xf32>, vector<16xf32>
                  %100 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                  %101 = vector.fma %98, %99, %100 : vector<16xf32>
                  affine.store %101, %alloca[1] : memref<4xvector<16xf32>>
                  %102 = arith.addi %41, %c2 : index
                  %103 = memref.load %alloc[%102, %arg22] : memref<32x256xf32>
                  %104 = vector.broadcast %103 : f32 to vector<16xf32>
                  %105 = vector.load %alloc_0[%arg22, %42] : memref<256x64xf32>, vector<16xf32>
                  %106 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                  %107 = vector.fma %104, %105, %106 : vector<16xf32>
                  affine.store %107, %alloca[2] : memref<4xvector<16xf32>>
                  %108 = memref.load %alloc[%102, %63] : memref<32x256xf32>
                  %109 = vector.broadcast %108 : f32 to vector<16xf32>
                  %110 = vector.load %alloc_0[%63, %42] : memref<256x64xf32>, vector<16xf32>
                  %111 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                  %112 = vector.fma %109, %110, %111 : vector<16xf32>
                  affine.store %112, %alloca[2] : memref<4xvector<16xf32>>
                  %113 = memref.load %alloc[%102, %69] : memref<32x256xf32>
                  %114 = vector.broadcast %113 : f32 to vector<16xf32>
                  %115 = vector.load %alloc_0[%69, %42] : memref<256x64xf32>, vector<16xf32>
                  %116 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                  %117 = vector.fma %114, %115, %116 : vector<16xf32>
                  affine.store %117, %alloca[2] : memref<4xvector<16xf32>>
                  %118 = memref.load %alloc[%102, %75] : memref<32x256xf32>
                  %119 = vector.broadcast %118 : f32 to vector<16xf32>
                  %120 = vector.load %alloc_0[%75, %42] : memref<256x64xf32>, vector<16xf32>
                  %121 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                  %122 = vector.fma %119, %120, %121 : vector<16xf32>
                  affine.store %122, %alloca[2] : memref<4xvector<16xf32>>
                  %123 = arith.addi %41, %c3 : index
                  %124 = memref.load %alloc[%123, %arg22] : memref<32x256xf32>
                  %125 = vector.broadcast %124 : f32 to vector<16xf32>
                  %126 = vector.load %alloc_0[%arg22, %42] : memref<256x64xf32>, vector<16xf32>
                  %127 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                  %128 = vector.fma %125, %126, %127 : vector<16xf32>
                  affine.store %128, %alloca[3] : memref<4xvector<16xf32>>
                  %129 = memref.load %alloc[%123, %63] : memref<32x256xf32>
                  %130 = vector.broadcast %129 : f32 to vector<16xf32>
                  %131 = vector.load %alloc_0[%63, %42] : memref<256x64xf32>, vector<16xf32>
                  %132 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                  %133 = vector.fma %130, %131, %132 : vector<16xf32>
                  affine.store %133, %alloca[3] : memref<4xvector<16xf32>>
                  %134 = memref.load %alloc[%123, %69] : memref<32x256xf32>
                  %135 = vector.broadcast %134 : f32 to vector<16xf32>
                  %136 = vector.load %alloc_0[%69, %42] : memref<256x64xf32>, vector<16xf32>
                  %137 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                  %138 = vector.fma %135, %136, %137 : vector<16xf32>
                  affine.store %138, %alloca[3] : memref<4xvector<16xf32>>
                  %139 = memref.load %alloc[%123, %75] : memref<32x256xf32>
                  %140 = vector.broadcast %139 : f32 to vector<16xf32>
                  %141 = vector.load %alloc_0[%75, %42] : memref<256x64xf32>, vector<16xf32>
                  %142 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                  %143 = vector.fma %140, %141, %142 : vector<16xf32>
                  affine.store %143, %alloca[3] : memref<4xvector<16xf32>>
                }
                %54 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                vector.store %54, %alloc_1[%arg21, %arg20] : memref<64512x512xf32>, vector<16xf32>
                %55 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                vector.store %55, %alloc_1[%45, %arg20] : memref<64512x512xf32>, vector<16xf32>
                %56 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                vector.store %56, %alloc_1[%48, %arg20] : memref<64512x512xf32>, vector<16xf32>
                %57 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                vector.store %57, %alloc_1[%51, %arg20] : memref<64512x512xf32>, vector<16xf32>
              }
            }
          }
          affine.yield %35, %36, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %38, %40, %39 : index, index, memref<2x16384xf32>, memref<2x16384xf32>, index, memref<2x16384xf32>, memref<2x16384xf32>, index, memref<2x16384xf32>, memref<2x16384xf32>, index, memref<2x16384xf32>, memref<2x16384xf32>, index
        }
      }
    }
    rmem.return %0 : !rmem.rmref<1, memref<64512x512xf32>>
  }
}


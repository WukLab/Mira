#map = affine_map<(d0) -> (d0 * 512)>
#map1 = affine_map<(d0, d1, d2) -> (d0 + d1 * 512 + d2 * 512)>
#map2 = affine_map<(d0, d1, d2) -> (d2 * 512)>
#map3 = affine_map<(d0) -> (d0)>
#map4 = affine_map<(d0) -> (d0 + 64)>
#map5 = affine_map<(d0, d1) -> (d0 + d1 * 32)>
#map6 = affine_map<(d0, d1) -> (d0 + d1 * 32 + 32)>
#map7 = affine_map<(d0, d1, d2) -> (d0 - d1 - d2 * 32)>
#map8 = affine_map<(d0, d1) -> (-d0 + d1)>
#map9 = affine_map<(d0, d1, d2) -> (d0 * -512 + d1 + d2 * 512)>
#map10 = affine_map<(d0, d1, d2) -> (d0 * -512 + d1 + d2 * 512 + 512)>
#map11 = affine_map<(d0, d1, d2) -> (d0 * -512 + d1 + d2 * 512 + 1024)>
#map12 = affine_map<(d0, d1, d2) -> (d0 * -512 + d1 + d2 * 512 + 1536)>
#map13 = affine_map<(d0) -> (d0 + 1)>
#map14 = affine_map<(d0) -> (d0 + 2)>
#map15 = affine_map<(d0) -> (d0 + 3)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 8192, 0, 33030144, f32, 32768, 64, 1], t1 = ["ref1", 268443648, 0, 262144, f32, 64, 1, 1], t2 = ["ref2", 269492224, 0, 33030144, f32, 32768, 64, 1]}} {
  func.func @main_graph(%arg0: !rmem.rmref<1, memref<64512x512xf32>>, %arg1: !rmem.rmref<1, memref<512x512xf32>>) -> !rmem.rmref<1, memref<64512x512xf32>> attributes {access_mem_catcher = [["ref0", 0], ["ref1", 1]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %c192 = arith.constant 192 : index
    %c128 = arith.constant 128 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c64 = arith.constant 64 : index
    %c8 = arith.constant 8 : index
    %c32768 = arith.constant 32768 : index
    %c256 = arith.constant 256 : index
    %c4 = arith.constant 4 : index
    %c1_i64 = arith.constant 1 : i64
    %c0 = arith.constant 0 : index
    %c0_i64 = arith.constant 0 : i64
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %cst = arith.constant 0.000000e+00 : f32
    %0 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref2", 0]], alignment = 16 : i64} : <1, memref<64512x512xf32>>
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %1 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %2 : !llvm.ptr<i64>
    %3 = rmem.slot %c0 {mem = "t2"} : (index) -> memref<64x512xf32>
    %4 = rmem.slot %c1 {mem = "t2"} : (index) -> memref<64x512xf32>
    %5 = rmem.slot %c2 {mem = "t2"} : (index) -> memref<64x512xf32>
    %6 = rmem.slot %c3 {mem = "t2"} : (index) -> memref<64x512xf32>
    %7:6 = affine.for %arg2 = 0 to 64512 step 64 iter_args(%arg3 = %c4, %arg4 = %c0, %arg5 = %3, %arg6 = %4, %arg7 = %5, %arg8 = %6) -> (index, index, memref<64x512xf32>, memref<64x512xf32>, memref<64x512xf32>, memref<64x512xf32>) {
      %8 = arith.addi %arg3, %c1 : index
      %9 = arith.addi %arg4, %c1 : index
      %10 = rmem.slot %arg3 {mem = "t2"} : (index) -> memref<64x512xf32>
      affine.for %arg9 = 0 to 64 {
        affine.for %arg10 = 0 to 512 {
          affine.store %cst, %arg5[%arg9, %arg10] : memref<64x512xf32>
        }
      }
      %11 = rmem.wrid : index
      %12 = rmem.rdma %arg4, %0[%arg2] %c32768 0 %11 {map = #map, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<64x512xf32>
      rmem.sync %2 -> %11 : <i64>, index
      affine.yield %8, %9, %arg6, %arg7, %arg8, %10 : index, index, memref<64x512xf32>, memref<64x512xf32>, memref<64x512xf32>, memref<64x512xf32>
    }
    %alloc = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_0 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    %alloc_1 = memref.alloc() {alignment = 128 : i64} : memref<64512x512xf32>
    %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
    affine.for %arg2 = 0 to 512 step 64 {
      affine.for %arg3 = 0 to 512 step 256 {
        %8 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
        llvm.store %c0_i64, %8 : !llvm.ptr<i64>
        %9 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
        llvm.store %c0_i64, %9 : !llvm.ptr<i64>
        %10 = rmem.wrid : index
        %11 = rmem.rdma %c0, %arg1[%arg2, %arg3, %c0] %c64 4 %10 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
        %12 = rmem.wrid : index
        %13 = rmem.rdma %c0, %arg1[%arg2, %arg3, %c1] %c64 4 %12 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
        %14 = rmem.wrid : index
        %15 = rmem.rdma %c0, %arg1[%arg2, %arg3, %c2] %c64 4 %14 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
        %16 = rmem.wrid : index
        %17 = rmem.rdma %c0, %arg1[%arg2, %arg3, %c3] %c64 4 %16 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
        %18 = rmem.wrid : index
        %19 = rmem.rdma %c0, %arg1[%arg2, %arg3, %c4] %c64 4 %18 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
        %20 = rmem.wrid : index
        %21 = rmem.rdma %c0, %arg1[%arg2, %arg3, %c5] %c64 4 %20 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
        %22 = rmem.wrid : index
        %23 = rmem.rdma %c0, %arg1[%arg2, %arg3, %c6] %c64 4 %22 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
        %24 = rmem.wrid : index
        %25 = rmem.rdma %c0, %arg1[%arg2, %arg3, %c7] %c64 4 %24 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
        %26:18 = affine.for %arg4 = 0 to 256 iter_args(%arg5 = %c8, %arg6 = %c0, %arg7 = %11, %arg8 = %10, %arg9 = %13, %arg10 = %12, %arg11 = %15, %arg12 = %14, %arg13 = %17, %arg14 = %16, %arg15 = %19, %arg16 = %18, %arg17 = %21, %arg18 = %20, %arg19 = %23, %arg20 = %22, %arg21 = %25, %arg22 = %24) -> (index, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index) {
          %42 = arith.addi %arg5, %c1 : index
          %43 = arith.addi %arg6, %c1 : index
          %44 = arith.addi %arg4, %c8 : index
          %45 = rmem.wrid : index
          %46 = rmem.rdma %c0, %arg1[%arg2, %arg3, %44] %c64 4 %45 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index, index, index) -> memref<1x64xf32>
          rmem.sync %8 -> %arg8 : <i64>, index
          affine.for %arg23 = 0 to 1 {
            affine.for %arg24 = 0 to 64 {
              %47 = affine.load %arg7[%arg23, %arg24] : memref<1x64xf32>
              affine.store %47, %alloc_0[%arg4 + %arg23, %arg24] : memref<256x64xf32>
            }
          }
          affine.yield %42, %43, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %arg19, %arg20, %arg21, %arg22, %46, %45 : index, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index, memref<1x64xf32>, index
        }
        %27 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
        llvm.store %c0_i64, %27 : !llvm.ptr<i64>
        %28 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
        llvm.store %c0_i64, %28 : !llvm.ptr<i64>
        %29 = rmem.rdma %c0, %arg0[%arg2, %arg3, %c0] %c32768 4 %c0 {map = #map2, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
        %30 = rmem.wrid : index
        %31 = rmem.rdma %c0, %0[%arg2, %arg3, %c0] %c32768 4 %30 {map = #map2, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
        %32 = rmem.rdma %c0, %arg0[%arg2, %arg3, %c64] %c32768 4 %c0 {map = #map2, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
        %33 = rmem.wrid : index
        %34 = rmem.rdma %c0, %0[%arg2, %arg3, %c64] %c32768 4 %33 {map = #map2, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
        %35 = rmem.rdma %c0, %arg0[%arg2, %arg3, %c128] %c32768 4 %c0 {map = #map2, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
        %36 = rmem.wrid : index
        %37 = rmem.rdma %c0, %0[%arg2, %arg3, %c128] %c32768 4 %36 {map = #map2, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
        %38 = rmem.rdma %c0, %arg0[%arg2, %arg3, %c192] %c32768 4 %c0 {map = #map2, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
        %39 = rmem.wrid : index
        %40 = rmem.rdma %c0, %0[%arg2, %arg3, %c192] %c32768 4 %39 {map = #map2, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
        %41:14 = affine.for %arg4 = 0 to 64512 step 64 iter_args(%arg5 = %c4, %arg6 = %c0, %arg7 = %29, %arg8 = %31, %arg9 = %30, %arg10 = %32, %arg11 = %34, %arg12 = %33, %arg13 = %35, %arg14 = %37, %arg15 = %36, %arg16 = %38, %arg17 = %40, %arg18 = %39) -> (index, index, memref<2x16384xf32>, memref<2x16384xf32>, index, memref<2x16384xf32>, memref<2x16384xf32>, index, memref<2x16384xf32>, memref<2x16384xf32>, index, memref<2x16384xf32>, memref<2x16384xf32>, index) {
          %42 = arith.addi %arg5, %c1 : index
          %43 = arith.addi %arg6, %c1 : index
          %44 = arith.addi %arg4, %c256 : index
          %45 = rmem.rdma %c0, %arg0[%arg2, %arg3, %44] %c32768 4 %c0 {map = #map2, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
          %46 = rmem.wrid : index
          %47 = rmem.rdma %c0, %0[%arg2, %arg3, %44] %c32768 4 %46 {map = #map2, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index, index) -> memref<2x16384xf32>
          rmem.sync %27 -> %arg9 : <i64>, index
          affine.for %arg19 = 0 to 2 {
            affine.for %arg20 = 0 to 32 {
              affine.for %arg21 = 0 to 256 {
                %48 = affine.load %arg7[%arg19, %arg3 + %arg20 * 512 + %arg21] : memref<2x16384xf32>
                affine.store %48, %alloc[%arg20, %arg21] : memref<32x256xf32>
              }
            }
            affine.for %arg20 = #map3(%arg2) to #map4(%arg2) step 16 {
              affine.for %arg21 = #map5(%arg4, %arg19) to #map6(%arg4, %arg19) step 4 {
                %48 = affine.apply #map7(%arg21, %arg4, %arg19)
                %49 = affine.apply #map8(%arg2, %arg20)
                %50 = affine.apply #map9(%arg19, %arg20, %arg21)
                %51 = vector.load %arg8[%arg19, %50] : memref<2x16384xf32>, vector<16xf32>
                affine.store %51, %alloca[0] : memref<4xvector<16xf32>>
                %52 = arith.addi %arg21, %c1 : index
                %53 = affine.apply #map10(%arg19, %arg20, %arg21)
                %54 = vector.load %arg8[%arg19, %53] : memref<2x16384xf32>, vector<16xf32>
                affine.store %54, %alloca[1] : memref<4xvector<16xf32>>
                %55 = arith.addi %arg21, %c2 : index
                %56 = affine.apply #map11(%arg19, %arg20, %arg21)
                %57 = vector.load %arg8[%arg19, %56] : memref<2x16384xf32>, vector<16xf32>
                affine.store %57, %alloca[2] : memref<4xvector<16xf32>>
                %58 = arith.addi %arg21, %c3 : index
                %59 = affine.apply #map12(%arg19, %arg20, %arg21)
                %60 = vector.load %arg8[%arg19, %59] : memref<2x16384xf32>, vector<16xf32>
                affine.store %60, %alloca[3] : memref<4xvector<16xf32>>
                affine.for %arg22 = 0 to 256 step 4 {
                  %65 = memref.load %alloc[%48, %arg22] : memref<32x256xf32>
                  %66 = vector.broadcast %65 : f32 to vector<16xf32>
                  %67 = vector.load %alloc_0[%arg22, %49] : memref<256x64xf32>, vector<16xf32>
                  %68 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                  %69 = vector.fma %66, %67, %68 : vector<16xf32>
                  affine.store %69, %alloca[0] : memref<4xvector<16xf32>>
                  %70 = affine.apply #map13(%arg22)
                  %71 = memref.load %alloc[%48, %70] : memref<32x256xf32>
                  %72 = vector.broadcast %71 : f32 to vector<16xf32>
                  %73 = vector.load %alloc_0[%70, %49] : memref<256x64xf32>, vector<16xf32>
                  %74 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                  %75 = vector.fma %72, %73, %74 : vector<16xf32>
                  affine.store %75, %alloca[0] : memref<4xvector<16xf32>>
                  %76 = affine.apply #map14(%arg22)
                  %77 = memref.load %alloc[%48, %76] : memref<32x256xf32>
                  %78 = vector.broadcast %77 : f32 to vector<16xf32>
                  %79 = vector.load %alloc_0[%76, %49] : memref<256x64xf32>, vector<16xf32>
                  %80 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                  %81 = vector.fma %78, %79, %80 : vector<16xf32>
                  affine.store %81, %alloca[0] : memref<4xvector<16xf32>>
                  %82 = affine.apply #map15(%arg22)
                  %83 = memref.load %alloc[%48, %82] : memref<32x256xf32>
                  %84 = vector.broadcast %83 : f32 to vector<16xf32>
                  %85 = vector.load %alloc_0[%82, %49] : memref<256x64xf32>, vector<16xf32>
                  %86 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                  %87 = vector.fma %84, %85, %86 : vector<16xf32>
                  affine.store %87, %alloca[0] : memref<4xvector<16xf32>>
                  %88 = arith.addi %48, %c1 : index
                  %89 = memref.load %alloc[%88, %arg22] : memref<32x256xf32>
                  %90 = vector.broadcast %89 : f32 to vector<16xf32>
                  %91 = vector.load %alloc_0[%arg22, %49] : memref<256x64xf32>, vector<16xf32>
                  %92 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                  %93 = vector.fma %90, %91, %92 : vector<16xf32>
                  affine.store %93, %alloca[1] : memref<4xvector<16xf32>>
                  %94 = memref.load %alloc[%88, %70] : memref<32x256xf32>
                  %95 = vector.broadcast %94 : f32 to vector<16xf32>
                  %96 = vector.load %alloc_0[%70, %49] : memref<256x64xf32>, vector<16xf32>
                  %97 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                  %98 = vector.fma %95, %96, %97 : vector<16xf32>
                  affine.store %98, %alloca[1] : memref<4xvector<16xf32>>
                  %99 = memref.load %alloc[%88, %76] : memref<32x256xf32>
                  %100 = vector.broadcast %99 : f32 to vector<16xf32>
                  %101 = vector.load %alloc_0[%76, %49] : memref<256x64xf32>, vector<16xf32>
                  %102 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                  %103 = vector.fma %100, %101, %102 : vector<16xf32>
                  affine.store %103, %alloca[1] : memref<4xvector<16xf32>>
                  %104 = memref.load %alloc[%88, %82] : memref<32x256xf32>
                  %105 = vector.broadcast %104 : f32 to vector<16xf32>
                  %106 = vector.load %alloc_0[%82, %49] : memref<256x64xf32>, vector<16xf32>
                  %107 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                  %108 = vector.fma %105, %106, %107 : vector<16xf32>
                  affine.store %108, %alloca[1] : memref<4xvector<16xf32>>
                  %109 = arith.addi %48, %c2 : index
                  %110 = memref.load %alloc[%109, %arg22] : memref<32x256xf32>
                  %111 = vector.broadcast %110 : f32 to vector<16xf32>
                  %112 = vector.load %alloc_0[%arg22, %49] : memref<256x64xf32>, vector<16xf32>
                  %113 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                  %114 = vector.fma %111, %112, %113 : vector<16xf32>
                  affine.store %114, %alloca[2] : memref<4xvector<16xf32>>
                  %115 = memref.load %alloc[%109, %70] : memref<32x256xf32>
                  %116 = vector.broadcast %115 : f32 to vector<16xf32>
                  %117 = vector.load %alloc_0[%70, %49] : memref<256x64xf32>, vector<16xf32>
                  %118 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                  %119 = vector.fma %116, %117, %118 : vector<16xf32>
                  affine.store %119, %alloca[2] : memref<4xvector<16xf32>>
                  %120 = memref.load %alloc[%109, %76] : memref<32x256xf32>
                  %121 = vector.broadcast %120 : f32 to vector<16xf32>
                  %122 = vector.load %alloc_0[%76, %49] : memref<256x64xf32>, vector<16xf32>
                  %123 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                  %124 = vector.fma %121, %122, %123 : vector<16xf32>
                  affine.store %124, %alloca[2] : memref<4xvector<16xf32>>
                  %125 = memref.load %alloc[%109, %82] : memref<32x256xf32>
                  %126 = vector.broadcast %125 : f32 to vector<16xf32>
                  %127 = vector.load %alloc_0[%82, %49] : memref<256x64xf32>, vector<16xf32>
                  %128 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                  %129 = vector.fma %126, %127, %128 : vector<16xf32>
                  affine.store %129, %alloca[2] : memref<4xvector<16xf32>>
                  %130 = arith.addi %48, %c3 : index
                  %131 = memref.load %alloc[%130, %arg22] : memref<32x256xf32>
                  %132 = vector.broadcast %131 : f32 to vector<16xf32>
                  %133 = vector.load %alloc_0[%arg22, %49] : memref<256x64xf32>, vector<16xf32>
                  %134 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                  %135 = vector.fma %132, %133, %134 : vector<16xf32>
                  affine.store %135, %alloca[3] : memref<4xvector<16xf32>>
                  %136 = memref.load %alloc[%130, %70] : memref<32x256xf32>
                  %137 = vector.broadcast %136 : f32 to vector<16xf32>
                  %138 = vector.load %alloc_0[%70, %49] : memref<256x64xf32>, vector<16xf32>
                  %139 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                  %140 = vector.fma %137, %138, %139 : vector<16xf32>
                  affine.store %140, %alloca[3] : memref<4xvector<16xf32>>
                  %141 = memref.load %alloc[%130, %76] : memref<32x256xf32>
                  %142 = vector.broadcast %141 : f32 to vector<16xf32>
                  %143 = vector.load %alloc_0[%76, %49] : memref<256x64xf32>, vector<16xf32>
                  %144 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                  %145 = vector.fma %142, %143, %144 : vector<16xf32>
                  affine.store %145, %alloca[3] : memref<4xvector<16xf32>>
                  %146 = memref.load %alloc[%130, %82] : memref<32x256xf32>
                  %147 = vector.broadcast %146 : f32 to vector<16xf32>
                  %148 = vector.load %alloc_0[%82, %49] : memref<256x64xf32>, vector<16xf32>
                  %149 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                  %150 = vector.fma %147, %148, %149 : vector<16xf32>
                  affine.store %150, %alloca[3] : memref<4xvector<16xf32>>
                }
                %61 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                vector.store %61, %alloc_1[%arg21, %arg20] : memref<64512x512xf32>, vector<16xf32>
                %62 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                vector.store %62, %alloc_1[%52, %arg20] : memref<64512x512xf32>, vector<16xf32>
                %63 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                vector.store %63, %alloc_1[%55, %arg20] : memref<64512x512xf32>, vector<16xf32>
                %64 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                vector.store %64, %alloc_1[%58, %arg20] : memref<64512x512xf32>, vector<16xf32>
              }
            }
          }
          affine.yield %42, %43, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %arg18, %45, %47, %46 : index, index, memref<2x16384xf32>, memref<2x16384xf32>, index, memref<2x16384xf32>, memref<2x16384xf32>, index, memref<2x16384xf32>, memref<2x16384xf32>, index, memref<2x16384xf32>, memref<2x16384xf32>, index
        }
      }
    }
    rmem.return %0 : !rmem.rmref<1, memref<64512x512xf32>>
  }
}


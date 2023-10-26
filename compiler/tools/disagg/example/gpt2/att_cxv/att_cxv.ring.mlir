#map = affine_map<(d0) -> (0)>
#map1 = affine_map<(d0) -> (d0 * 196608)>
#map2 = affine_map<(d0, d1) -> (d0 + d1)>
#map3 = affine_map<(d0, d1, d2, d3, d4) -> (d0 * 3072 + d1 * 256 + d2 * 256 + d3 + d4 * 256)>
#map4 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64)>
#map5 = affine_map<(d0, d1, d2, d3, d4) -> (d0 * 3072 + d1 * 256 + d2 * 256 + d3 + d4 * 256 + 1)>
#map6 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 64)>
#map7 = affine_map<(d0, d1, d2, d3, d4) -> (d0 * 3072 + d1 * 256 + d2 * 256 + d3 + d4 * 256 + 2)>
#map8 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 128)>
#map9 = affine_map<(d0, d1, d2, d3, d4) -> (d0 * 3072 + d1 * 256 + d2 * 256 + d3 + d4 * 256 + 3)>
#map10 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 192)>
#map11 = affine_map<(d0, d1, d2, d3, d4) -> (d0 * 3072 + d1 * 256 + d2 * 256 + d3 + d4 * 256 + 4)>
#map12 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 256)>
#map13 = affine_map<(d0, d1, d2, d3, d4) -> (d0 * 3072 + d1 * 256 + d2 * 256 + d3 + d4 * 256 + 5)>
#map14 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 320)>
#map15 = affine_map<(d0, d1, d2, d3, d4) -> (d0 * 3072 + d1 * 256 + d2 * 256 + d3 + d4 * 256 + 6)>
#map16 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 384)>
#map17 = affine_map<(d0, d1, d2, d3, d4) -> (d0 * 3072 + d1 * 256 + d2 * 256 + d3 + d4 * 256 + 7)>
#map18 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 448)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 8192, 0, 196608, f32, 196608, 1, 1], t1 = ["ref1", 268443648, 0, 12582912, f32, 262144, 64, 1]}} {
  func.func @main_graph(%arg0: !rmem.rmref<1, memref<64x12x1x256xf32>>, %arg1: !rmem.rmref<1, memref<64x12x256x64xf32>>) -> memref<64x12x1x64xf32> attributes {access_mem_catcher = [["ref0", 0], ["ref1", 1]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %c8 = arith.constant 8 : index
    %c393216 = arith.constant 393216 : index
    %c196608 = arith.constant 196608 : index
    %c1_i64 = arith.constant 1 : i64
    %c0 = arith.constant 0 : index
    %c0_i64 = arith.constant 0 : i64
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c6 = arith.constant 6 : index
    %cst = arith.constant 0.000000e+00 : f32
    %alloc = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x64xf32>
    affine.for %arg2 = 0 to 64 {
      affine.for %arg3 = 0 to 12 {
        affine.for %arg4 = 0 to 1 {
          affine.for %arg5 = 0 to 64 {
            affine.store %cst, %alloc[%arg2, %arg3, %arg4, %arg5] : memref<64x12x1x64xf32>
          }
        }
      }
    }
    %0 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %0 : !llvm.ptr<i64>
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %1 : !llvm.ptr<i64>
    %2 = rmem.wrid : index
    %3 = rmem.rdma %c0, %arg0[%c0] %c196608 4 %2 {map = #map, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x1x256xf32>>, index, index, index) -> memref<196608xf32>
    %4 = rmem.wrid : index
    %5 = rmem.rdma %c0, %arg1[%c0] %c393216 4 %4 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<2x196608xf32>
    %6 = rmem.wrid : index
    %7 = rmem.rdma %c1, %arg1[%c2] %c393216 4 %6 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<2x196608xf32>
    %8 = rmem.wrid : index
    %9 = rmem.rdma %c2, %arg1[%c4] %c393216 4 %8 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<2x196608xf32>
    %10 = rmem.wrid : index
    %11 = rmem.rdma %c3, %arg1[%c6] %c393216 4 %10 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<2x196608xf32>
    rmem.sync %0 -> %2 : <i64>, index
    %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
    %12:11 = affine.for %arg2 = 0 to 64 step 2 iter_args(%arg3 = %c4, %arg4 = %c0, %arg5 = %3, %arg6 = %5, %arg7 = %4, %arg8 = %7, %arg9 = %6, %arg10 = %9, %arg11 = %8, %arg12 = %11, %arg13 = %10) -> (index, index, memref<196608xf32>, memref<2x196608xf32>, index, memref<2x196608xf32>, index, memref<2x196608xf32>, index, memref<2x196608xf32>, index) {
      %13 = arith.addi %arg3, %c1 : index
      %14 = arith.addi %arg4, %c1 : index
      %15 = arith.addi %arg2, %c8 : index
      %16 = rmem.wrid : index
      %17 = rmem.rdma %arg3, %arg1[%15] %c393216 4 %16 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<2x196608xf32>
      rmem.sync %0 -> %arg7 : <i64>, index
      affine.for %arg14 = 0 to 2 {
        %18 = affine.apply #map2(%arg2, %arg14)
        affine.for %arg15 = 0 to 12 {
          affine.for %arg16 = 0 to 1 {
            affine.for %arg17 = 0 to 64 step 8 {
              affine.for %arg18 = 0 to 256 step 8 {
                affine.for %arg19 = 0 to 1 {
                  %19 = arith.addi %arg19, %arg16 : index
                  %20 = vector.load %alloc[%18, %arg15, %19, %arg17] : memref<64x12x1x64xf32>, vector<8xf32>
                  affine.store %20, %alloca[0] : memref<1xvector<8xf32>>
                  %21 = affine.apply #map3(%arg14, %arg15, %arg16, %arg18, %arg19)
                  %22 = memref.load %arg5[%21] : memref<196608xf32>
                  %23 = vector.broadcast %22 : f32 to vector<8xf32>
                  %24 = affine.apply #map4(%arg15, %arg17, %arg18)
                  %25 = vector.load %arg6[%arg14, %24] : memref<2x196608xf32>, vector<8xf32>
                  %26 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %27 = vector.fma %23, %25, %26 : vector<8xf32>
                  affine.store %27, %alloca[0] : memref<1xvector<8xf32>>
                  %28 = affine.apply #map5(%arg14, %arg15, %arg16, %arg18, %arg19)
                  %29 = memref.load %arg5[%28] : memref<196608xf32>
                  %30 = vector.broadcast %29 : f32 to vector<8xf32>
                  %31 = affine.apply #map6(%arg15, %arg17, %arg18)
                  %32 = vector.load %arg6[%arg14, %31] : memref<2x196608xf32>, vector<8xf32>
                  %33 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %34 = vector.fma %30, %32, %33 : vector<8xf32>
                  affine.store %34, %alloca[0] : memref<1xvector<8xf32>>
                  %35 = affine.apply #map7(%arg14, %arg15, %arg16, %arg18, %arg19)
                  %36 = memref.load %arg5[%35] : memref<196608xf32>
                  %37 = vector.broadcast %36 : f32 to vector<8xf32>
                  %38 = affine.apply #map8(%arg15, %arg17, %arg18)
                  %39 = vector.load %arg6[%arg14, %38] : memref<2x196608xf32>, vector<8xf32>
                  %40 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %41 = vector.fma %37, %39, %40 : vector<8xf32>
                  affine.store %41, %alloca[0] : memref<1xvector<8xf32>>
                  %42 = affine.apply #map9(%arg14, %arg15, %arg16, %arg18, %arg19)
                  %43 = memref.load %arg5[%42] : memref<196608xf32>
                  %44 = vector.broadcast %43 : f32 to vector<8xf32>
                  %45 = affine.apply #map10(%arg15, %arg17, %arg18)
                  %46 = vector.load %arg6[%arg14, %45] : memref<2x196608xf32>, vector<8xf32>
                  %47 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %48 = vector.fma %44, %46, %47 : vector<8xf32>
                  affine.store %48, %alloca[0] : memref<1xvector<8xf32>>
                  %49 = affine.apply #map11(%arg14, %arg15, %arg16, %arg18, %arg19)
                  %50 = memref.load %arg5[%49] : memref<196608xf32>
                  %51 = vector.broadcast %50 : f32 to vector<8xf32>
                  %52 = affine.apply #map12(%arg15, %arg17, %arg18)
                  %53 = vector.load %arg6[%arg14, %52] : memref<2x196608xf32>, vector<8xf32>
                  %54 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %55 = vector.fma %51, %53, %54 : vector<8xf32>
                  affine.store %55, %alloca[0] : memref<1xvector<8xf32>>
                  %56 = affine.apply #map13(%arg14, %arg15, %arg16, %arg18, %arg19)
                  %57 = memref.load %arg5[%56] : memref<196608xf32>
                  %58 = vector.broadcast %57 : f32 to vector<8xf32>
                  %59 = affine.apply #map14(%arg15, %arg17, %arg18)
                  %60 = vector.load %arg6[%arg14, %59] : memref<2x196608xf32>, vector<8xf32>
                  %61 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %62 = vector.fma %58, %60, %61 : vector<8xf32>
                  affine.store %62, %alloca[0] : memref<1xvector<8xf32>>
                  %63 = affine.apply #map15(%arg14, %arg15, %arg16, %arg18, %arg19)
                  %64 = memref.load %arg5[%63] : memref<196608xf32>
                  %65 = vector.broadcast %64 : f32 to vector<8xf32>
                  %66 = affine.apply #map16(%arg15, %arg17, %arg18)
                  %67 = vector.load %arg6[%arg14, %66] : memref<2x196608xf32>, vector<8xf32>
                  %68 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %69 = vector.fma %65, %67, %68 : vector<8xf32>
                  affine.store %69, %alloca[0] : memref<1xvector<8xf32>>
                  %70 = affine.apply #map17(%arg14, %arg15, %arg16, %arg18, %arg19)
                  %71 = memref.load %arg5[%70] : memref<196608xf32>
                  %72 = vector.broadcast %71 : f32 to vector<8xf32>
                  %73 = affine.apply #map18(%arg15, %arg17, %arg18)
                  %74 = vector.load %arg6[%arg14, %73] : memref<2x196608xf32>, vector<8xf32>
                  %75 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %76 = vector.fma %72, %74, %75 : vector<8xf32>
                  affine.store %76, %alloca[0] : memref<1xvector<8xf32>>
                  %77 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  vector.store %77, %alloc[%18, %arg15, %19, %arg17] : memref<64x12x1x64xf32>, vector<8xf32>
                }
              }
            }
          }
        }
      }
      affine.yield %13, %14, %arg5, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %17, %16 : index, index, memref<196608xf32>, memref<2x196608xf32>, index, memref<2x196608xf32>, index, memref<2x196608xf32>, index, memref<2x196608xf32>, index
    }
    return %alloc : memref<64x12x1x64xf32>
  }
}


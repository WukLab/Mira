#amap0 = affine_map<(d0) -> (0)>
#amap1 = affine_map<(d0) -> (d0 * 196608)>

module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu",
  rmem.templates = {
  // "t" = [rbase,  l_ofst,    r_ofst, SizeInEle, eleType, bSize,  nBlock, type],
    "t0" = ["ref0", 8192,      0,      196608,      f32,    196608,   1,   1],
    "t1" = ["ref1", 268443648, 0,      12582912,    f32,    393216,   64,  1]}
} {
  func.func @main_graph(%arg0: !rmem.rmref<1, memref<64x12x1x256xf32>>, %arg1: !rmem.rmref<1, memref<64x12x256x64xf32>>) -> memref<64x12x1x64xf32> attributes {input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"],
    access_mem_catcher = [["ref0", 0], ["ref1", 1]]
  } {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c6 = arith.constant 6 : index
    %c7 = arith.constant 7 : index
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
    affine.for %arg2 = 0 to 64 {
      affine.for %arg3 = 0 to 12 {
        affine.for %arg4 = 0 to 1 {
          affine.for %arg5 = 0 to 64 step 8 {
            affine.for %arg6 = 0 to 256 step 8 {
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
              affine.for %arg7 = 0 to 1 {
                %0 = arith.addi %arg7, %arg4 : index
                %1 = vector.load %alloc[%arg2, %arg3, %0, %arg5] : memref<64x12x1x64xf32>, vector<8xf32>
                affine.store %1, %alloca[0] : memref<1xvector<8xf32>>
                %2 = rmem.memref.load %arg0[%arg2, %arg3, %0, %arg6] : (!rmem.rmref<1, memref<64x12x1x256xf32>>, index, index, index, index) -> f32
                %3 = vector.broadcast %2 : f32 to vector<8xf32>
                %4 = rmem.vec.load %arg1[%arg2, %arg3, %arg6, %arg5] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %5 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %6 = vector.fma %3, %4, %5 : vector<8xf32>
                affine.store %6, %alloca[0] : memref<1xvector<8xf32>>
                %7 = arith.addi %arg6, %c1 : index
                %8 = rmem.memref.load %arg0[%arg2, %arg3, %0, %7] : (!rmem.rmref<1, memref<64x12x1x256xf32>>, index, index, index, index) -> f32
                %9 = vector.broadcast %8 : f32 to vector<8xf32>
                %10 = rmem.vec.load %arg1[%arg2, %arg3, %7, %arg5] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %11 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %12 = vector.fma %9, %10, %11 : vector<8xf32>
                affine.store %12, %alloca[0] : memref<1xvector<8xf32>>
                %13 = arith.addi %arg6, %c2 : index
                %14 = rmem.memref.load %arg0[%arg2, %arg3, %0, %13] : (!rmem.rmref<1, memref<64x12x1x256xf32>>, index, index, index, index) -> f32
                %15 = vector.broadcast %14 : f32 to vector<8xf32>
                %16 = rmem.vec.load %arg1[%arg2, %arg3, %13, %arg5] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %17 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %18 = vector.fma %15, %16, %17 : vector<8xf32>
                affine.store %18, %alloca[0] : memref<1xvector<8xf32>>
                %19 = arith.addi %arg6, %c3 : index
                %20 = rmem.memref.load %arg0[%arg2, %arg3, %0, %19] : (!rmem.rmref<1, memref<64x12x1x256xf32>>, index, index, index, index) -> f32
                %21 = vector.broadcast %20 : f32 to vector<8xf32>
                %22 = rmem.vec.load %arg1[%arg2, %arg3, %19, %arg5] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %23 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %24 = vector.fma %21, %22, %23 : vector<8xf32>
                affine.store %24, %alloca[0] : memref<1xvector<8xf32>>
                %25 = arith.addi %arg6, %c4 : index
                %26 = rmem.memref.load %arg0[%arg2, %arg3, %0, %25] : (!rmem.rmref<1, memref<64x12x1x256xf32>>, index, index, index, index) -> f32
                %27 = vector.broadcast %26 : f32 to vector<8xf32>
                %28 = rmem.vec.load %arg1[%arg2, %arg3, %25, %arg5] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %29 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %30 = vector.fma %27, %28, %29 : vector<8xf32>
                affine.store %30, %alloca[0] : memref<1xvector<8xf32>>
                %31 = arith.addi %arg6, %c5 : index
                %32 = rmem.memref.load %arg0[%arg2, %arg3, %0, %31] : (!rmem.rmref<1, memref<64x12x1x256xf32>>, index, index, index, index) -> f32
                %33 = vector.broadcast %32 : f32 to vector<8xf32>
                %34 = rmem.vec.load %arg1[%arg2, %arg3, %31, %arg5] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %35 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %36 = vector.fma %33, %34, %35 : vector<8xf32>
                affine.store %36, %alloca[0] : memref<1xvector<8xf32>>
                %37 = arith.addi %arg6, %c6 : index
                %38 = rmem.memref.load %arg0[%arg2, %arg3, %0, %37] : (!rmem.rmref<1, memref<64x12x1x256xf32>>, index, index, index, index) -> f32
                %39 = vector.broadcast %38 : f32 to vector<8xf32>
                %40 = rmem.vec.load %arg1[%arg2, %arg3, %37, %arg5] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %41 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %42 = vector.fma %39, %40, %41 : vector<8xf32>
                affine.store %42, %alloca[0] : memref<1xvector<8xf32>>
                %43 = arith.addi %arg6, %c7 : index
                %44 = rmem.memref.load %arg0[%arg2, %arg3, %0, %43] : (!rmem.rmref<1, memref<64x12x1x256xf32>>, index, index, index, index) -> f32
                %45 = vector.broadcast %44 : f32 to vector<8xf32>
                %46 = rmem.vec.load %arg1[%arg2, %arg3, %43, %arg5] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %47 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %48 = vector.fma %45, %46, %47 : vector<8xf32>
                affine.store %48, %alloca[0] : memref<1xvector<8xf32>>
                %49 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                vector.store %49, %alloc[%arg2, %arg3, %0, %arg5] : memref<64x12x1x64xf32>, vector<8xf32>
              }
            }
          }
        }
      }
    } {"pf_target" = 1, "nahead" = 4, "batch" = 2,
      "access_mem" = [
        ["ref0", #amap0, 196608, "t0"],
        ["ref1", #amap1, 196608, "t1"]
      ]
    }
    return %alloc : memref<64x12x1x64xf32>
  }
}

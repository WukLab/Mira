#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0 + d1, d2 + d3)>
#map2 = affine_map<(d0) -> (d0)>
#map3 = affine_map<(d0) -> (d0 + 64)>
#map4 = affine_map<(d0) -> (d0 + 32)>
#map5 = affine_map<(d0, d1) -> (-d0 + d1)>
#map6 = affine_map<(d0) -> (d0 + 1)>
#map7 = affine_map<(d0) -> (d0 + 2)>
#map8 = affine_map<(d0) -> (d0 + 3)>

#amap0 = affine_map<(d0,d1,d2) -> ((d1+d2)*512 + d0)>
#amap1 = affine_map<(d0,d1,d2) -> (d2*512)>

module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu",
  rmem.templates = {
  // "t" = [rbase,  l_ofst,    r_ofst, SizeInEle, eleType, bSize,  nBlock, type],
    "t0" = ["ref0", 8192,      0,      33030144,  f32,     16384,   64,   1],
    "t1" = ["ref1", 268443648, 0,      262144,    f32,     64, 1,      1],
    "t2" = ["ref2", 269492224, 0,      33030144,  f32,     16384,   64,   1]}
} {
  func.func @main_graph(%arg0: !rmem.rmref<1, memref<64512x512xf32>>, %arg1: !rmem.rmref<1, memref<512x512xf32>>) -> !rmem.rmref<1, memref<64512x512xf32>> attributes {input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"],
   access_mem_catcher = [["ref0", 0], ["ref1", 1]]
  } {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %cst = arith.constant 0.000000e+00 : f32
    %0 = rmem.alloc_memref(2, ) {alignment = 16 : i64, access_mem_catcher = [["ref2", 0]]} : <1, memref<64512x512xf32>>
    // affine.for %arg2 = 0 to 64512 {
    //   // ref2: [%arg2, 512]
    //   affine.for %arg3 = 0 to 512 {
    //     rmem.affine.store %cst -> %0[%arg2, %arg3] {map = #map} : f32, !rmem.rmref<1, memref<64512x512xf32>>, index, index
    //   }
    // } {"pf_target" = 1, "nahead" = 4, "access_mem" = [
    //   ["ref2", #amap2, 512, "t2"]
    // ], "batch" = 16
    // }

    %alloc = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_0 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    %out_0 = memref.alloc() {alignment = 128 : i64} : memref<64512x512xf32>
    affine.for %arg2 = 0 to 512 step 64 {
      // ref0: [0->64512, 0->512]
      // ref1: [0->N->512, %arg2->%arg2+64] 
      // ref2: [0->N->64512, %arg2->%arg2+64] 
      affine.for %arg3 = 0 to 512 step 256 {
        // ref0: [0->N->64512, %arg3->%arg3+256]
        // ref1: [%arg3->N->%arg3+256, %arg2->%arg2+64]
        // ref2: [0->N->64512, %arg2->%arg2+64]
        affine.for %arg4 = 0 to 256 {
          // ref1: [%arg3+%arg4, %arg2->%arg2+64]
          affine.for %arg5 = 0 to 64 {
            %1 = rmem.affine.load %arg1[%arg3, %arg4, %arg2, %arg5] {map = #map1} : (!rmem.rmref<1, memref<512x512xf32>>, index, index, index, index) -> f32
            affine.store %1, %alloc_0[%arg4, %arg5] : memref<256x64xf32>
          }
        } {"pf_target" = 1, "nahead" = 8, "access_mem" = [
          ["ref1", #amap0, 64, "t1"]
        ], "batch" = 1}
        affine.for %arg4 = 0 to 64512 step 32 {
          // ref0: [%arg4->$arg4+32, 512] ok
          // ref2: [%arg4->$arg4+32, 512] ok
          affine.for %arg5 = 0 to 32 {
            affine.for %arg6 = 0 to 256 {
              %1 = rmem.affine.load %arg0[%arg4, %arg5, %arg3, %arg6] {map = #map1} : (!rmem.rmref<1, memref<64512x512xf32>>, index, index, index, index) -> f32
              affine.store %1, %alloc[%arg5, %arg6] : memref<32x256xf32>
            }
          } 
          affine.for %arg5 = #map2(%arg2) to #map3(%arg2) step 16 {
            affine.for %arg6 = #map2(%arg4) to #map4(%arg4) step 4 {
              %1 = affine.apply #map5(%arg4, %arg6)
              %2 = affine.apply #map5(%arg2, %arg5)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %3 = rmem.vec.load %0[%arg6, %arg5] : !rmem.rmref<1, memref<64512x512xf32>>, vector<16xf32>
              affine.store %3, %alloca[0] : memref<4xvector<16xf32>>
              %4 = arith.addi %arg6, %c1 : index
              %5 = rmem.vec.load %0[%4, %arg5] : !rmem.rmref<1, memref<64512x512xf32>>, vector<16xf32>
              affine.store %5, %alloca[1] : memref<4xvector<16xf32>>
              %6 = arith.addi %arg6, %c2 : index
              %7 = rmem.vec.load %0[%6, %arg5] : !rmem.rmref<1, memref<64512x512xf32>>, vector<16xf32>
              affine.store %7, %alloca[2] : memref<4xvector<16xf32>>
              %8 = arith.addi %arg6, %c3 : index
              %9 = rmem.vec.load %0[%8, %arg5] : !rmem.rmref<1, memref<64512x512xf32>>, vector<16xf32>
              affine.store %9, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg7 = 0 to 256 step 4 {
                %14 = memref.load %alloc[%1, %arg7] : memref<32x256xf32>
                %15 = vector.broadcast %14 : f32 to vector<16xf32>
                %16 = vector.load %alloc_0[%arg7, %2] : memref<256x64xf32>, vector<16xf32>
                %17 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %18 = vector.fma %15, %16, %17 : vector<16xf32>
                affine.store %18, %alloca[0] : memref<4xvector<16xf32>>
                %19 = affine.apply #map6(%arg7)
                %20 = memref.load %alloc[%1, %19] : memref<32x256xf32>
                %21 = vector.broadcast %20 : f32 to vector<16xf32>
                %22 = vector.load %alloc_0[%19, %2] : memref<256x64xf32>, vector<16xf32>
                %23 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %24 = vector.fma %21, %22, %23 : vector<16xf32>
                affine.store %24, %alloca[0] : memref<4xvector<16xf32>>
                %25 = affine.apply #map7(%arg7)
                %26 = memref.load %alloc[%1, %25] : memref<32x256xf32>
                %27 = vector.broadcast %26 : f32 to vector<16xf32>
                %28 = vector.load %alloc_0[%25, %2] : memref<256x64xf32>, vector<16xf32>
                %29 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %30 = vector.fma %27, %28, %29 : vector<16xf32>
                affine.store %30, %alloca[0] : memref<4xvector<16xf32>>
                %31 = affine.apply #map8(%arg7)
                %32 = memref.load %alloc[%1, %31] : memref<32x256xf32>
                %33 = vector.broadcast %32 : f32 to vector<16xf32>
                %34 = vector.load %alloc_0[%31, %2] : memref<256x64xf32>, vector<16xf32>
                %35 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %36 = vector.fma %33, %34, %35 : vector<16xf32>
                affine.store %36, %alloca[0] : memref<4xvector<16xf32>>
                %37 = arith.addi %1, %c1 : index
                %38 = memref.load %alloc[%37, %arg7] : memref<32x256xf32>
                %39 = vector.broadcast %38 : f32 to vector<16xf32>
                %40 = vector.load %alloc_0[%arg7, %2] : memref<256x64xf32>, vector<16xf32>
                %41 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %42 = vector.fma %39, %40, %41 : vector<16xf32>
                affine.store %42, %alloca[1] : memref<4xvector<16xf32>>
                %43 = memref.load %alloc[%37, %19] : memref<32x256xf32>
                %44 = vector.broadcast %43 : f32 to vector<16xf32>
                %45 = vector.load %alloc_0[%19, %2] : memref<256x64xf32>, vector<16xf32>
                %46 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %47 = vector.fma %44, %45, %46 : vector<16xf32>
                affine.store %47, %alloca[1] : memref<4xvector<16xf32>>
                %48 = memref.load %alloc[%37, %25] : memref<32x256xf32>
                %49 = vector.broadcast %48 : f32 to vector<16xf32>
                %50 = vector.load %alloc_0[%25, %2] : memref<256x64xf32>, vector<16xf32>
                %51 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %52 = vector.fma %49, %50, %51 : vector<16xf32>
                affine.store %52, %alloca[1] : memref<4xvector<16xf32>>
                %53 = memref.load %alloc[%37, %31] : memref<32x256xf32>
                %54 = vector.broadcast %53 : f32 to vector<16xf32>
                %55 = vector.load %alloc_0[%31, %2] : memref<256x64xf32>, vector<16xf32>
                %56 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %57 = vector.fma %54, %55, %56 : vector<16xf32>
                affine.store %57, %alloca[1] : memref<4xvector<16xf32>>
                %58 = arith.addi %1, %c2 : index
                %59 = memref.load %alloc[%58, %arg7] : memref<32x256xf32>
                %60 = vector.broadcast %59 : f32 to vector<16xf32>
                %61 = vector.load %alloc_0[%arg7, %2] : memref<256x64xf32>, vector<16xf32>
                %62 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %63 = vector.fma %60, %61, %62 : vector<16xf32>
                affine.store %63, %alloca[2] : memref<4xvector<16xf32>>
                %64 = memref.load %alloc[%58, %19] : memref<32x256xf32>
                %65 = vector.broadcast %64 : f32 to vector<16xf32>
                %66 = vector.load %alloc_0[%19, %2] : memref<256x64xf32>, vector<16xf32>
                %67 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %68 = vector.fma %65, %66, %67 : vector<16xf32>
                affine.store %68, %alloca[2] : memref<4xvector<16xf32>>
                %69 = memref.load %alloc[%58, %25] : memref<32x256xf32>
                %70 = vector.broadcast %69 : f32 to vector<16xf32>
                %71 = vector.load %alloc_0[%25, %2] : memref<256x64xf32>, vector<16xf32>
                %72 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %73 = vector.fma %70, %71, %72 : vector<16xf32>
                affine.store %73, %alloca[2] : memref<4xvector<16xf32>>
                %74 = memref.load %alloc[%58, %31] : memref<32x256xf32>
                %75 = vector.broadcast %74 : f32 to vector<16xf32>
                %76 = vector.load %alloc_0[%31, %2] : memref<256x64xf32>, vector<16xf32>
                %77 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %78 = vector.fma %75, %76, %77 : vector<16xf32>
                affine.store %78, %alloca[2] : memref<4xvector<16xf32>>
                %79 = arith.addi %1, %c3 : index
                %80 = memref.load %alloc[%79, %arg7] : memref<32x256xf32>
                %81 = vector.broadcast %80 : f32 to vector<16xf32>
                %82 = vector.load %alloc_0[%arg7, %2] : memref<256x64xf32>, vector<16xf32>
                %83 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %84 = vector.fma %81, %82, %83 : vector<16xf32>
                affine.store %84, %alloca[3] : memref<4xvector<16xf32>>
                %85 = memref.load %alloc[%79, %19] : memref<32x256xf32>
                %86 = vector.broadcast %85 : f32 to vector<16xf32>
                %87 = vector.load %alloc_0[%19, %2] : memref<256x64xf32>, vector<16xf32>
                %88 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %89 = vector.fma %86, %87, %88 : vector<16xf32>
                affine.store %89, %alloca[3] : memref<4xvector<16xf32>>
                %90 = memref.load %alloc[%79, %25] : memref<32x256xf32>
                %91 = vector.broadcast %90 : f32 to vector<16xf32>
                %92 = vector.load %alloc_0[%25, %2] : memref<256x64xf32>, vector<16xf32>
                %93 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %94 = vector.fma %91, %92, %93 : vector<16xf32>
                affine.store %94, %alloca[3] : memref<4xvector<16xf32>>
                %95 = memref.load %alloc[%79, %31] : memref<32x256xf32>
                %96 = vector.broadcast %95 : f32 to vector<16xf32>
                %97 = vector.load %alloc_0[%31, %2] : memref<256x64xf32>, vector<16xf32>
                %98 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %99 = vector.fma %96, %97, %98 : vector<16xf32>
                affine.store %99, %alloca[3] : memref<4xvector<16xf32>>
              }
          //     %10 = affine.load %alloca[0] : memref<4xvector<16xf32>>
          //     rmem.vec.store %10, %0[%arg6, %arg5] : !rmem.rmref<1, memref<64512x512xf32>>, vector<16xf32>
          //     %11 = affine.load %alloca[1] : memref<4xvector<16xf32>>
          //     rmem.vec.store %11, %0[%4, %arg5] : !rmem.rmref<1, memref<64512x512xf32>>, vector<16xf32>
          //     %12 = affine.load %alloca[2] : memref<4xvector<16xf32>>
          //     rmem.vec.store %12, %0[%6, %arg5] : !rmem.rmref<1, memref<64512x512xf32>>, vector<16xf32>
          //     %13 = affine.load %alloca[3] : memref<4xvector<16xf32>>
          //     rmem.vec.store %13, %0[%8, %arg5] : !rmem.rmref<1, memref<64512x512xf32>>, vector<16xf32>
              %10 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %10, %out_0[%arg6, %arg5] : memref<64512x512xf32>, vector<16xf32>
              %11 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %11, %out_0[%4, %arg5] : memref<64512x512xf32>, vector<16xf32>
              %12 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %12, %out_0[%6, %arg5] : memref<64512x512xf32>, vector<16xf32>
              %13 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %13, %out_0[%8, %arg5] : memref<64512x512xf32>, vector<16xf32>
            }
          }
        } {"pf_target" = 1, "nahead" = 4, "access_mem" = [
          ["ref0", #amap1, 16384, "t0"],
          ["ref2", #amap1, 16384, "t2"]
        ], "batch" = 2}
      }
    } 
    rmem.return %0 : !rmem.rmref<1, memref<64512x512xf32>>
  }
}


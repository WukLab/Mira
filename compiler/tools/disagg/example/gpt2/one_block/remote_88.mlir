#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 64)>
#map2 = affine_map<(d0) -> (d0 + 32)>
#map3 = affine_map<(d0, d1) -> (-d0 + d1)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map8 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 + 255, d3)>
#map9 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>

#amap0 = affine_map<(d0) -> (d0 * 195840)>
#amap1 = affine_map<(d0) -> (d0 * 196608)>
#amap2 = affine_map<(d0) -> (d0 * 50264)>

#amap3 = affine_map<(d0,d1,d2,d3) ->  (d3 * 50264     + d2)>
#amap4 = affine_map<(d0,d1,d2,d3) ->  ((d3+1) * 50264 + d2)>
#amap5 = affine_map<(d0,d1,d2,d3) ->  ((d3+2) * 50264 + d2)>
#amap6 = affine_map<(d0,d1,d2,d3) ->  ((d3+3) * 50264 + d2)>
#amap7 = affine_map<(d0,d1,d2,d3) ->  ((d3+4) * 50264 + d2)>
#amap8 = affine_map<(d0,d1,d2,d3) ->  ((d3+5) * 50264 + d2)>
#amap9 = affine_map<(d0,d1,d2,d3) ->  ((d3+6) * 50264 + d2)>
#amap10 = affine_map<(d0,d1,d2,d3) -> ((d3+7) * 50264 + d2)>

module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu",
  rmem.templates = {
  // "t" = [rbase,     l_ofst,   r_ofst,   SizeInEle, eleType, bSize,  nBlock, type],
    "t0" = ["ref0",         0,      0,      12533760,  f32,     195840,   64,   1],
    "t1" = ["ref1",  67108864,      0,      12533760,  f32,     195840,   64,   1],
    "t2" = ["ref2", 134217728,      0,      12582912,  f32,     196608,   64,   1],
    "t3" = ["ref3", 201326592,      0,      12582912,  f32,     196608,   64,   1],
    "t4" = ["ref4", 268435456,      0,      12582912,  f32,     196608,   64,   1],
    "t5" = ["ref5", 335544320,      0,      3216896,   f32,      50264,   64,   1],

    "t6" = ["ref6", 352321536,      0,      38602752,  f32,          8,   64,   1],
    "t7" = ["ref6", 352325632,      0,      38602752,  f32,          8,   64,   1],
    "t8" = ["ref6", 352329728,      0,      38602752,  f32,          8,   64,   1],
    "t9" = ["ref6", 352333824,      0,      38602752,  f32,          8,   64,   1],
   "t10" = ["ref6", 352337920,      0,      38602752,  f32,          8,   64,   1],
   "t11" = ["ref6", 352342016,      0,      38602752,  f32,          8,   64,   1],
   "t12" = ["ref6", 352346112,      0,      38602752,  f32,          8,   64,   1],
   "t13" = ["ref6", 352350208,      0,      38602752,  f32,          8,   64,   1]
  }
} {
  llvm.mlir.global internal constant @constant_45("constant_45\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_44("constant_44\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_41("constant_41\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_40("constant_40\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_39("constant_39\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_38("constant_38\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_37("constant_37\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_34("constant_34\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_33("constant_33\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_30("constant_30\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_28("constant_28\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_27("constant_27\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_20("constant_20\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_19("constant_19\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_18("constant_18\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_16("constant_16\00") {addr_space = 0 : i32}
  func.func private @read_tensor_i1(!llvm.ptr<i8>, memref<*xi1>) attributes {llvm.emit_c_interface}
  llvm.mlir.global internal constant @constant_15("constant_15\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_14("constant_14\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_13("constant_13\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_12("constant_12\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_11("constant_11\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_10("constant_10\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_9("constant_9\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_8("constant_8\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_7("constant_7\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_6("constant_6\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_5("constant_5\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_4("constant_4\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_3("constant_3\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_2("constant_2\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_1("constant_1\00") {addr_space = 0 : i32}
  func.func private @read_tensor_f32(!llvm.ptr<i8>, memref<*xf32>) attributes {llvm.emit_c_interface}
  func.func private @disagg_read_tensor_f32(!llvm.ptr<i8>, !rmem.rmref<1, memref<*xf32>>) attributes {llvm.emit_c_interface}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%ld\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_0("constant_0\00") {addr_space = 0 : i32}
  func.func @main_graph(%arg0: memref<64x1xi64>, %arg1: !rmem.rmref<1, memref<64x12x255x64xf32>>, %arg2: !rmem.rmref<1, memref<64x12x255x64xf32>>) -> !rmem.rmref<1, memref<64x1x50264xf32>> attributes {input_names = ["input_ids", "past.0.key", "past.0.value"], llvm.emit_c_interface, output_names = ["logits"],
    access_mem_catcher = [["ref0", 1], ["ref1", 2]]
  } {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c6 = arith.constant 6 : index
    %c7 = arith.constant 7 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 7.680000e+02 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %cst_1 = arith.constant 0.000000e+00 : f32
    %c50264 = arith.constant 50264 : index
    %alloc = memref.alloc() {alignment = 16 : i64} : memref<50264x768xf32>
    %cast = memref.cast %alloc : memref<50264x768xf32> to memref<*xf32>
    %0 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<11 x i8>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%1, %cast) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_2 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_3 = memref.cast %alloc_2 : memref<768xf32> to memref<*xf32>
    %2 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<11 x i8>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%3, %cast_3) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_4 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_5 = memref.cast %alloc_4 : memref<768xf32> to memref<*xf32>
    %4 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<11 x i8>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%5, %cast_5) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_6 = memref.alloc() {alignment = 16 : i64} : memref<768x2304xf32>
    %cast_7 = memref.cast %alloc_6 : memref<768x2304xf32> to memref<*xf32>
    %6 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<11 x i8>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%7, %cast_7) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_8 = memref.alloc() {alignment = 16 : i64} : memref<2304xf32>
    %cast_9 = memref.cast %alloc_8 : memref<2304xf32> to memref<*xf32>
    %8 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<11 x i8>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%9, %cast_9) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_10 = memref.alloc() {alignment = 16 : i64} : memref<768x768xf32>
    %cast_11 = memref.cast %alloc_10 : memref<768x768xf32> to memref<*xf32>
    %10 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<11 x i8>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%11, %cast_11) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_12 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_13 = memref.cast %alloc_12 : memref<768xf32> to memref<*xf32>
    %12 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<11 x i8>>
    %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%13, %cast_13) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_14 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_15 = memref.cast %alloc_14 : memref<768xf32> to memref<*xf32>
    %14 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<11 x i8>>
    %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%15, %cast_15) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_16 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_17 = memref.cast %alloc_16 : memref<768xf32> to memref<*xf32>
    %16 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<11 x i8>>
    %17 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%17, %cast_17) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_18 = memref.alloc() {alignment = 16 : i64} : memref<768x3072xf32>
    %cast_19 = memref.cast %alloc_18 : memref<768x3072xf32> to memref<*xf32>
    %18 = llvm.mlir.addressof @constant_9 : !llvm.ptr<array<11 x i8>>
    %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%19, %cast_19) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_20 = memref.alloc() {alignment = 16 : i64} : memref<3072xf32>
    %cast_21 = memref.cast %alloc_20 : memref<3072xf32> to memref<*xf32>
    %20 = llvm.mlir.addressof @constant_10 : !llvm.ptr<array<12 x i8>>
    %21 = llvm.getelementptr %20[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%21, %cast_21) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_22 = memref.alloc() {alignment = 16 : i64} : memref<3072x768xf32>
    %cast_23 = memref.cast %alloc_22 : memref<3072x768xf32> to memref<*xf32>
    %22 = llvm.mlir.addressof @constant_11 : !llvm.ptr<array<12 x i8>>
    %23 = llvm.getelementptr %22[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%23, %cast_23) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_24 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_25 = memref.cast %alloc_24 : memref<768xf32> to memref<*xf32>
    %24 = llvm.mlir.addressof @constant_12 : !llvm.ptr<array<12 x i8>>
    %25 = llvm.getelementptr %24[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%25, %cast_25) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_26 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_27 = memref.cast %alloc_26 : memref<768xf32> to memref<*xf32>
    %26 = llvm.mlir.addressof @constant_13 : !llvm.ptr<array<12 x i8>>
    %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%27, %cast_27) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_28 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_29 = memref.cast %alloc_28 : memref<768xf32> to memref<*xf32>
    %28 = llvm.mlir.addressof @constant_14 : !llvm.ptr<array<12 x i8>>
    %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%29, %cast_29) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_30 = memref.alloc() {alignment = 16 : i64} : memref<1x1x1x256xi1>
    %cast_31 = memref.cast %alloc_30 : memref<1x1x1x256xi1> to memref<*xi1>
    %30 = llvm.mlir.addressof @constant_15 : !llvm.ptr<array<12 x i8>>
    %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_i1(%31, %cast_31) : (!llvm.ptr<i8>, memref<*xi1>) -> ()
    %32 = rmem.alloc_memref(2, ) {alignment = 16 : i64, 
      access_mem_catcher = [["ref6", 0]]
    } : <1, memref<768x50264xf32>>
    %33 = rmem.memref.cast %32 : <1, memref<768x50264xf32>> to <1, memref<*xf32>>
    %34 = llvm.mlir.addressof @constant_16 : !llvm.ptr<array<12 x i8>>
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @disagg_read_tensor_f32(%35, %33) : (!llvm.ptr<i8>, !rmem.rmref<1, memref<*xf32>>) -> ()
    %reinterpret_cast = memref.reinterpret_cast %arg0 to offset: [0], sizes: [64, 1], strides: [1, 1] : memref<64x1xi64> to memref<64x1xi64>
    %alloc_32 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %80 = affine.load %reinterpret_cast[%arg3, %arg4] : memref<64x1xi64>
          %81 = arith.index_cast %80 : i64 to index
          %82 = arith.addi %81, %c50264 : index
          %83 = arith.cmpi slt, %81, %c0 : index
          %84 = arith.select %83, %82, %81 : index
          %85 = memref.load %alloc[%84, %arg5] : memref<50264x768xf32>
          affine.store %85, %alloc_32[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_33 = memref.alloc() {alignment = 16 : i64} : memref<1x1x768xf32>
    %cast_34 = memref.cast %alloc_33 : memref<1x1x768xf32> to memref<*xf32>
    %36 = llvm.mlir.addressof @constant_18 : !llvm.ptr<array<12 x i8>>
    %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%37, %cast_34) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_35 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_32[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_33[0, %arg4, %arg5] : memref<1x1x768xf32>
          %78 = arith.addf %76, %77 : f32
          affine.store %78, %alloc_35[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_36 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_36[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_35[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_36[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %78 = arith.addf %77, %76 : f32
          affine.store %78, %alloc_36[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %76 = affine.load %alloc_36[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %77 = arith.divf %76, %cst : f32
          affine.store %77, %alloc_36[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_37 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_35[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_36[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %78 = arith.subf %76, %77 : f32
          affine.store %78, %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_38 = memref.alloc() : memref<f32>
    %cast_39 = memref.cast %alloc_38 : memref<f32> to memref<*xf32>
    %38 = llvm.mlir.addressof @constant_19 : !llvm.ptr<array<12 x i8>>
    %39 = llvm.getelementptr %38[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%39, %cast_39) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_40 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_38[] : memref<f32>
          %78 = math.powf %76, %77 : f32
          affine.store %78, %alloc_40[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_41 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_41[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_40[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_41[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %78 = arith.addf %77, %76 : f32
          affine.store %78, %alloc_41[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %76 = affine.load %alloc_41[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %77 = arith.divf %76, %cst : f32
          affine.store %77, %alloc_41[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_42 = memref.alloc() : memref<f32>
    %cast_43 = memref.cast %alloc_42 : memref<f32> to memref<*xf32>
    %40 = llvm.mlir.addressof @constant_20 : !llvm.ptr<array<12 x i8>>
    %41 = llvm.getelementptr %40[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%41, %cast_43) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_44 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %76 = affine.load %alloc_41[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %77 = affine.load %alloc_42[] : memref<f32>
          %78 = arith.addf %76, %77 : f32
          affine.store %78, %alloc_44[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_45 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %76 = affine.load %alloc_44[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %77 = math.sqrt %76 : f32
          affine.store %77, %alloc_45[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_46 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_45[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %78 = arith.divf %76, %77 : f32
          affine.store %78, %alloc_46[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_47 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_46[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_2[%arg5] : memref<768xf32>
          %78 = arith.mulf %76, %77 : f32
          affine.store %78, %alloc_47[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_48 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_47[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_4[%arg5] : memref<768xf32>
          %78 = arith.addf %76, %77 : f32
          affine.store %78, %alloc_48[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_49 = memref.reinterpret_cast %alloc_48 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_50 = memref.alloc() {alignment = 128 : i64} : memref<64x2304xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 2304 {
        affine.store %cst_1, %alloc_50[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %alloc_51 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_52 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 2304 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %76 = affine.load %alloc_6[%arg4 + %arg5, %arg3 + %arg6] : memref<768x2304xf32>
            affine.store %76, %alloc_52[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %76 = affine.load %reinterpret_cast_49[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %76, %alloc_51[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %76 = affine.apply #map3(%arg5, %arg7)
              %77 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %78 = vector.load %alloc_50[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %78, %alloca[0] : memref<4xvector<16xf32>>
              %79 = arith.addi %arg7, %c1 : index
              %80 = vector.load %alloc_50[%79, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %80, %alloca[1] : memref<4xvector<16xf32>>
              %81 = arith.addi %arg7, %c2 : index
              %82 = vector.load %alloc_50[%81, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %82, %alloca[2] : memref<4xvector<16xf32>>
              %83 = arith.addi %arg7, %c3 : index
              %84 = vector.load %alloc_50[%83, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %84, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %89 = memref.load %alloc_51[%76, %arg8] : memref<32x256xf32>
                %90 = vector.broadcast %89 : f32 to vector<16xf32>
                %91 = vector.load %alloc_52[%arg8, %77] : memref<256x64xf32>, vector<16xf32>
                %92 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %93 = vector.fma %90, %91, %92 : vector<16xf32>
                affine.store %93, %alloca[0] : memref<4xvector<16xf32>>
                %94 = affine.apply #map4(%arg8)
                %95 = memref.load %alloc_51[%76, %94] : memref<32x256xf32>
                %96 = vector.broadcast %95 : f32 to vector<16xf32>
                %97 = vector.load %alloc_52[%94, %77] : memref<256x64xf32>, vector<16xf32>
                %98 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %99 = vector.fma %96, %97, %98 : vector<16xf32>
                affine.store %99, %alloca[0] : memref<4xvector<16xf32>>
                %100 = affine.apply #map5(%arg8)
                %101 = memref.load %alloc_51[%76, %100] : memref<32x256xf32>
                %102 = vector.broadcast %101 : f32 to vector<16xf32>
                %103 = vector.load %alloc_52[%100, %77] : memref<256x64xf32>, vector<16xf32>
                %104 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %105 = vector.fma %102, %103, %104 : vector<16xf32>
                affine.store %105, %alloca[0] : memref<4xvector<16xf32>>
                %106 = affine.apply #map6(%arg8)
                %107 = memref.load %alloc_51[%76, %106] : memref<32x256xf32>
                %108 = vector.broadcast %107 : f32 to vector<16xf32>
                %109 = vector.load %alloc_52[%106, %77] : memref<256x64xf32>, vector<16xf32>
                %110 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %111 = vector.fma %108, %109, %110 : vector<16xf32>
                affine.store %111, %alloca[0] : memref<4xvector<16xf32>>
                %112 = arith.addi %76, %c1 : index
                %113 = memref.load %alloc_51[%112, %arg8] : memref<32x256xf32>
                %114 = vector.broadcast %113 : f32 to vector<16xf32>
                %115 = vector.load %alloc_52[%arg8, %77] : memref<256x64xf32>, vector<16xf32>
                %116 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %117 = vector.fma %114, %115, %116 : vector<16xf32>
                affine.store %117, %alloca[1] : memref<4xvector<16xf32>>
                %118 = memref.load %alloc_51[%112, %94] : memref<32x256xf32>
                %119 = vector.broadcast %118 : f32 to vector<16xf32>
                %120 = vector.load %alloc_52[%94, %77] : memref<256x64xf32>, vector<16xf32>
                %121 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %122 = vector.fma %119, %120, %121 : vector<16xf32>
                affine.store %122, %alloca[1] : memref<4xvector<16xf32>>
                %123 = memref.load %alloc_51[%112, %100] : memref<32x256xf32>
                %124 = vector.broadcast %123 : f32 to vector<16xf32>
                %125 = vector.load %alloc_52[%100, %77] : memref<256x64xf32>, vector<16xf32>
                %126 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %127 = vector.fma %124, %125, %126 : vector<16xf32>
                affine.store %127, %alloca[1] : memref<4xvector<16xf32>>
                %128 = memref.load %alloc_51[%112, %106] : memref<32x256xf32>
                %129 = vector.broadcast %128 : f32 to vector<16xf32>
                %130 = vector.load %alloc_52[%106, %77] : memref<256x64xf32>, vector<16xf32>
                %131 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %132 = vector.fma %129, %130, %131 : vector<16xf32>
                affine.store %132, %alloca[1] : memref<4xvector<16xf32>>
                %133 = arith.addi %76, %c2 : index
                %134 = memref.load %alloc_51[%133, %arg8] : memref<32x256xf32>
                %135 = vector.broadcast %134 : f32 to vector<16xf32>
                %136 = vector.load %alloc_52[%arg8, %77] : memref<256x64xf32>, vector<16xf32>
                %137 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %138 = vector.fma %135, %136, %137 : vector<16xf32>
                affine.store %138, %alloca[2] : memref<4xvector<16xf32>>
                %139 = memref.load %alloc_51[%133, %94] : memref<32x256xf32>
                %140 = vector.broadcast %139 : f32 to vector<16xf32>
                %141 = vector.load %alloc_52[%94, %77] : memref<256x64xf32>, vector<16xf32>
                %142 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %143 = vector.fma %140, %141, %142 : vector<16xf32>
                affine.store %143, %alloca[2] : memref<4xvector<16xf32>>
                %144 = memref.load %alloc_51[%133, %100] : memref<32x256xf32>
                %145 = vector.broadcast %144 : f32 to vector<16xf32>
                %146 = vector.load %alloc_52[%100, %77] : memref<256x64xf32>, vector<16xf32>
                %147 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %148 = vector.fma %145, %146, %147 : vector<16xf32>
                affine.store %148, %alloca[2] : memref<4xvector<16xf32>>
                %149 = memref.load %alloc_51[%133, %106] : memref<32x256xf32>
                %150 = vector.broadcast %149 : f32 to vector<16xf32>
                %151 = vector.load %alloc_52[%106, %77] : memref<256x64xf32>, vector<16xf32>
                %152 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %153 = vector.fma %150, %151, %152 : vector<16xf32>
                affine.store %153, %alloca[2] : memref<4xvector<16xf32>>
                %154 = arith.addi %76, %c3 : index
                %155 = memref.load %alloc_51[%154, %arg8] : memref<32x256xf32>
                %156 = vector.broadcast %155 : f32 to vector<16xf32>
                %157 = vector.load %alloc_52[%arg8, %77] : memref<256x64xf32>, vector<16xf32>
                %158 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %159 = vector.fma %156, %157, %158 : vector<16xf32>
                affine.store %159, %alloca[3] : memref<4xvector<16xf32>>
                %160 = memref.load %alloc_51[%154, %94] : memref<32x256xf32>
                %161 = vector.broadcast %160 : f32 to vector<16xf32>
                %162 = vector.load %alloc_52[%94, %77] : memref<256x64xf32>, vector<16xf32>
                %163 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %164 = vector.fma %161, %162, %163 : vector<16xf32>
                affine.store %164, %alloca[3] : memref<4xvector<16xf32>>
                %165 = memref.load %alloc_51[%154, %100] : memref<32x256xf32>
                %166 = vector.broadcast %165 : f32 to vector<16xf32>
                %167 = vector.load %alloc_52[%100, %77] : memref<256x64xf32>, vector<16xf32>
                %168 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %169 = vector.fma %166, %167, %168 : vector<16xf32>
                affine.store %169, %alloca[3] : memref<4xvector<16xf32>>
                %170 = memref.load %alloc_51[%154, %106] : memref<32x256xf32>
                %171 = vector.broadcast %170 : f32 to vector<16xf32>
                %172 = vector.load %alloc_52[%106, %77] : memref<256x64xf32>, vector<16xf32>
                %173 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %174 = vector.fma %171, %172, %173 : vector<16xf32>
                affine.store %174, %alloca[3] : memref<4xvector<16xf32>>
              }
              %85 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %85, %alloc_50[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %86 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %86, %alloc_50[%79, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %87 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %87, %alloc_50[%81, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %88 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %88, %alloc_50[%83, %arg6] : memref<64x2304xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 2304 {
        %76 = affine.load %alloc_50[%arg3, %arg4] : memref<64x2304xf32>
        %77 = affine.load %alloc_8[%arg4] : memref<2304xf32>
        %78 = arith.addf %76, %77 : f32
        affine.store %78, %alloc_50[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %reinterpret_cast_53 = memref.reinterpret_cast %alloc_50 to offset: [0], sizes: [64, 1, 2304], strides: [2304, 2304, 1] : memref<64x2304xf32> to memref<64x1x2304xf32>
    %alloc_54 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_55 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_56 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %reinterpret_cast_53[%arg3, %arg4, %arg5] : memref<64x1x2304xf32>
          affine.store %76, %alloc_54[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %reinterpret_cast_53[%arg3, %arg4, %arg5 + 768] : memref<64x1x2304xf32>
          affine.store %76, %alloc_55[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %reinterpret_cast_53[%arg3, %arg4, %arg5 + 1536] : memref<64x1x2304xf32>
          affine.store %76, %alloc_56[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_57 = memref.reinterpret_cast %alloc_54 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_58 = memref.reinterpret_cast %alloc_55 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_59 = memref.reinterpret_cast %alloc_56 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %42 = rmem.alloc_memref(2, ) {alignment = 16 : i64, 
      access_mem_catcher = [["ref2", 0]]
    } : <1, memref<64x12x256x64xf32>>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 255 {
          affine.for %arg6 = 0 to 64 {
            %76 = rmem.affine.load %arg1[%arg3, %arg4, %arg5, %arg6] {map = #map7} : (!rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index, index) -> f32
            rmem.affine.store %76 -> %42[%arg3, %arg4, %arg5, %arg6] {map = #map7} : f32, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index, index
          }
        }
      }
    } {"pf_target" = 1, "nahead" = 4, "batch" = 1,
    "access_mem" = [
      ["ref0", #amap0, 195840, "t0"],
      ["ref2", #amap1, 196608, "t2"]
    ]}
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 64 {
            %76 = affine.load %reinterpret_cast_58[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
            rmem.affine.store %76 -> %42[%arg3, %arg4, %arg5, %arg6] {map = #map8} : f32, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index, index
          }
        }
      }
    } {"pf_target" = 1, "nahead" = 4, "batch" = 1,
    "access_mem" = [
      ["ref2", #amap1, 196608, "t2"]
    ]}
    %43 = rmem.alloc_memref(2, ) {alignment = 16 : i64,
      access_mem_catcher = [["ref3", 0]]
    } : <1, memref<64x12x256x64xf32>>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 255 {
          affine.for %arg6 = 0 to 64 {
            %76 = rmem.affine.load %arg2[%arg3, %arg4, %arg5, %arg6] {map = #map7} : (!rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index, index) -> f32
            rmem.affine.store %76 -> %43[%arg3, %arg4, %arg5, %arg6] {map = #map7} : f32, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index, index
          }
        }
      }
    } {"pf_target" = 1, "nahead" = 4, "batch" = 1,
    "access_mem" = [
      ["ref1", #amap0, 195840, "t1"],
      ["ref3", #amap1, 196608, "t3"]
    ]}
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 64 {
            %76 = affine.load %reinterpret_cast_59[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
            rmem.affine.store %76 -> %43[%arg3, %arg4, %arg5, %arg6] {map = #map8} : f32, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index, index
          }
        }
      }
    } {"pf_target" = 1, "nahead" = 4, "batch" = 1,
    "access_mem" = [
      ["ref3", #amap1, 196608, "t3"]
    ]}
    %44 = rmem.alloc_memref(2, ) {alignment = 16 : i64,
      access_mem_catcher = [["ref4", 0]]
    } : <1, memref<64x12x64x256xf32>>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %76 = rmem.affine.load %42[%arg3, %arg4, %arg5, %arg6] {map = #map7} : (!rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index, index) -> f32
            rmem.affine.store %76 -> %44[%arg3, %arg4, %arg6, %arg5] {map = #map7} : f32, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index, index
          }
        }
      }
    } {"pf_target" = 1, "nahead" = 4, "batch" = 1,
    "access_mem" = [
      ["ref2", #amap1, 196608, "t2"],
      ["ref4", #amap1, 196608, "t4"]
    ]}
    %alloc_60 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            affine.store %cst_1, %alloc_60[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 step 8 {
            affine.for %arg7 = 0 to 64 step 8 {
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
              affine.for %arg8 = 0 to 1 {
                %76 = arith.addi %arg8, %arg5 : index
                %77 = vector.load %alloc_60[%arg3, %arg4, %76, %arg6] : memref<64x12x1x256xf32>, vector<8xf32>
                affine.store %77, %alloca[0] : memref<1xvector<8xf32>>
                %78 = memref.load %reinterpret_cast_57[%arg3, %arg4, %76, %arg7] : memref<64x12x1x64xf32>
                %79 = vector.broadcast %78 : f32 to vector<8xf32>
                %80 = rmem.vec.load %44[%arg3, %arg4, %arg7, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                %81 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %82 = vector.fma %79, %80, %81 : vector<8xf32>
                affine.store %82, %alloca[0] : memref<1xvector<8xf32>>
                %83 = arith.addi %arg7, %c1 : index
                %84 = memref.load %reinterpret_cast_57[%arg3, %arg4, %76, %83] : memref<64x12x1x64xf32>
                %85 = vector.broadcast %84 : f32 to vector<8xf32>
                %86 = rmem.vec.load %44[%arg3, %arg4, %83, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                %87 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %88 = vector.fma %85, %86, %87 : vector<8xf32>
                affine.store %88, %alloca[0] : memref<1xvector<8xf32>>
                %89 = arith.addi %arg7, %c2 : index
                %90 = memref.load %reinterpret_cast_57[%arg3, %arg4, %76, %89] : memref<64x12x1x64xf32>
                %91 = vector.broadcast %90 : f32 to vector<8xf32>
                %92 = rmem.vec.load %44[%arg3, %arg4, %89, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                %93 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %94 = vector.fma %91, %92, %93 : vector<8xf32>
                affine.store %94, %alloca[0] : memref<1xvector<8xf32>>
                %95 = arith.addi %arg7, %c3 : index
                %96 = memref.load %reinterpret_cast_57[%arg3, %arg4, %76, %95] : memref<64x12x1x64xf32>
                %97 = vector.broadcast %96 : f32 to vector<8xf32>
                %98 = rmem.vec.load %44[%arg3, %arg4, %95, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                %99 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %100 = vector.fma %97, %98, %99 : vector<8xf32>
                affine.store %100, %alloca[0] : memref<1xvector<8xf32>>
                %101 = arith.addi %arg7, %c4 : index
                %102 = memref.load %reinterpret_cast_57[%arg3, %arg4, %76, %101] : memref<64x12x1x64xf32>
                %103 = vector.broadcast %102 : f32 to vector<8xf32>
                %104 = rmem.vec.load %44[%arg3, %arg4, %101, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                %105 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %106 = vector.fma %103, %104, %105 : vector<8xf32>
                affine.store %106, %alloca[0] : memref<1xvector<8xf32>>
                %107 = arith.addi %arg7, %c5 : index
                %108 = memref.load %reinterpret_cast_57[%arg3, %arg4, %76, %107] : memref<64x12x1x64xf32>
                %109 = vector.broadcast %108 : f32 to vector<8xf32>
                %110 = rmem.vec.load %44[%arg3, %arg4, %107, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                %111 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %112 = vector.fma %109, %110, %111 : vector<8xf32>
                affine.store %112, %alloca[0] : memref<1xvector<8xf32>>
                %113 = arith.addi %arg7, %c6 : index
                %114 = memref.load %reinterpret_cast_57[%arg3, %arg4, %76, %113] : memref<64x12x1x64xf32>
                %115 = vector.broadcast %114 : f32 to vector<8xf32>
                %116 = rmem.vec.load %44[%arg3, %arg4, %113, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                %117 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %118 = vector.fma %115, %116, %117 : vector<8xf32>
                affine.store %118, %alloca[0] : memref<1xvector<8xf32>>
                %119 = arith.addi %arg7, %c7 : index
                %120 = memref.load %reinterpret_cast_57[%arg3, %arg4, %76, %119] : memref<64x12x1x64xf32>
                %121 = vector.broadcast %120 : f32 to vector<8xf32>
                %122 = rmem.vec.load %44[%arg3, %arg4, %119, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                %123 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %124 = vector.fma %121, %122, %123 : vector<8xf32>
                affine.store %124, %alloca[0] : memref<1xvector<8xf32>>
                %125 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                vector.store %125, %alloc_60[%arg3, %arg4, %76, %arg6] : memref<64x12x1x256xf32>, vector<8xf32>
              }
            }
          }
        }
      }
    } {"pf_target" = 1, "nahead" = 4, "batch" = 1,
    "access_mem" = [
      ["ref4", #amap1, 196608, "t4"]
    ]}
    %alloc_61 = memref.alloc() : memref<f32>
    %cast_62 = memref.cast %alloc_61 : memref<f32> to memref<*xf32>
    %45 = llvm.mlir.addressof @constant_27 : !llvm.ptr<array<12 x i8>>
    %46 = llvm.getelementptr %45[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%46, %cast_62) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_63 = memref.alloc() : memref<f32>
    %cast_64 = memref.cast %alloc_63 : memref<f32> to memref<*xf32>
    %47 = llvm.mlir.addressof @constant_28 : !llvm.ptr<array<12 x i8>>
    %48 = llvm.getelementptr %47[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%48, %cast_64) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_65 = memref.alloc() : memref<f32>
    %49 = affine.load %alloc_61[] : memref<f32>
    %50 = affine.load %alloc_63[] : memref<f32>
    %51 = math.powf %49, %50 : f32
    affine.store %51, %alloc_65[] : memref<f32>
    %alloc_66 = memref.alloc() : memref<f32>
    affine.store %cst_1, %alloc_66[] : memref<f32>
    %alloc_67 = memref.alloc() : memref<f32>
    %52 = affine.load %alloc_66[] : memref<f32>
    %53 = affine.load %alloc_65[] : memref<f32>
    %54 = arith.addf %52, %53 : f32
    affine.store %54, %alloc_67[] : memref<f32>
    %alloc_68 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %76 = affine.load %alloc_60[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %77 = affine.load %alloc_67[] : memref<f32>
            %78 = arith.divf %76, %77 : f32
            affine.store %78, %alloc_68[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_69 = memref.alloc() : memref<f32>
    %cast_70 = memref.cast %alloc_69 : memref<f32> to memref<*xf32>
    %55 = llvm.mlir.addressof @constant_30 : !llvm.ptr<array<12 x i8>>
    %56 = llvm.getelementptr %55[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%56, %cast_70) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_71 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %76 = affine.load %alloc_30[0, 0, %arg5, %arg6] : memref<1x1x1x256xi1>
            %77 = affine.load %alloc_68[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %78 = affine.load %alloc_69[] : memref<f32>
            %79 = arith.select %76, %77, %78 : f32
            affine.store %79, %alloc_71[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_72 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    %alloc_73 = memref.alloc() : memref<f32>
    %alloc_74 = memref.alloc() : memref<f32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_73[] : memref<f32>
          affine.store %cst_0, %alloc_74[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %78 = affine.load %alloc_74[] : memref<f32>
            %79 = affine.load %alloc_71[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %80 = arith.cmpf ogt, %78, %79 : f32
            %81 = arith.select %80, %78, %79 : f32
            affine.store %81, %alloc_74[] : memref<f32>
          }
          %76 = affine.load %alloc_74[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %78 = affine.load %alloc_73[] : memref<f32>
            %79 = affine.load %alloc_71[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %80 = arith.subf %79, %76 : f32
            %81 = math.exp %80 : f32
            %82 = arith.addf %78, %81 : f32
            affine.store %82, %alloc_73[] : memref<f32>
            affine.store %81, %alloc_72[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
          %77 = affine.load %alloc_73[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %78 = affine.load %alloc_72[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %79 = arith.divf %78, %77 : f32
            affine.store %79, %alloc_72[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_75 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x64xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 64 {
            affine.store %cst_1, %alloc_75[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 64 step 8 {
            affine.for %arg7 = 0 to 256 step 8 {
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
              affine.for %arg8 = 0 to 1 {
                %76 = arith.addi %arg8, %arg5 : index
                %77 = vector.load %alloc_75[%arg3, %arg4, %76, %arg6] : memref<64x12x1x64xf32>, vector<8xf32>
                affine.store %77, %alloca[0] : memref<1xvector<8xf32>>
                %78 = memref.load %alloc_72[%arg3, %arg4, %76, %arg7] : memref<64x12x1x256xf32>
                %79 = vector.broadcast %78 : f32 to vector<8xf32>
                %80 = rmem.vec.load %43[%arg3, %arg4, %arg7, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %81 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %82 = vector.fma %79, %80, %81 : vector<8xf32>
                affine.store %82, %alloca[0] : memref<1xvector<8xf32>>
                %83 = arith.addi %arg7, %c1 : index
                %84 = memref.load %alloc_72[%arg3, %arg4, %76, %83] : memref<64x12x1x256xf32>
                %85 = vector.broadcast %84 : f32 to vector<8xf32>
                %86 = rmem.vec.load %43[%arg3, %arg4, %83, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %87 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %88 = vector.fma %85, %86, %87 : vector<8xf32>
                affine.store %88, %alloca[0] : memref<1xvector<8xf32>>
                %89 = arith.addi %arg7, %c2 : index
                %90 = memref.load %alloc_72[%arg3, %arg4, %76, %89] : memref<64x12x1x256xf32>
                %91 = vector.broadcast %90 : f32 to vector<8xf32>
                %92 = rmem.vec.load %43[%arg3, %arg4, %89, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %93 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %94 = vector.fma %91, %92, %93 : vector<8xf32>
                affine.store %94, %alloca[0] : memref<1xvector<8xf32>>
                %95 = arith.addi %arg7, %c3 : index
                %96 = memref.load %alloc_72[%arg3, %arg4, %76, %95] : memref<64x12x1x256xf32>
                %97 = vector.broadcast %96 : f32 to vector<8xf32>
                %98 = rmem.vec.load %43[%arg3, %arg4, %95, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %99 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %100 = vector.fma %97, %98, %99 : vector<8xf32>
                affine.store %100, %alloca[0] : memref<1xvector<8xf32>>
                %101 = arith.addi %arg7, %c4 : index
                %102 = memref.load %alloc_72[%arg3, %arg4, %76, %101] : memref<64x12x1x256xf32>
                %103 = vector.broadcast %102 : f32 to vector<8xf32>
                %104 = rmem.vec.load %43[%arg3, %arg4, %101, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %105 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %106 = vector.fma %103, %104, %105 : vector<8xf32>
                affine.store %106, %alloca[0] : memref<1xvector<8xf32>>
                %107 = arith.addi %arg7, %c5 : index
                %108 = memref.load %alloc_72[%arg3, %arg4, %76, %107] : memref<64x12x1x256xf32>
                %109 = vector.broadcast %108 : f32 to vector<8xf32>
                %110 = rmem.vec.load %43[%arg3, %arg4, %107, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %111 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %112 = vector.fma %109, %110, %111 : vector<8xf32>
                affine.store %112, %alloca[0] : memref<1xvector<8xf32>>
                %113 = arith.addi %arg7, %c6 : index
                %114 = memref.load %alloc_72[%arg3, %arg4, %76, %113] : memref<64x12x1x256xf32>
                %115 = vector.broadcast %114 : f32 to vector<8xf32>
                %116 = rmem.vec.load %43[%arg3, %arg4, %113, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %117 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %118 = vector.fma %115, %116, %117 : vector<8xf32>
                affine.store %118, %alloca[0] : memref<1xvector<8xf32>>
                %119 = arith.addi %arg7, %c7 : index
                %120 = memref.load %alloc_72[%arg3, %arg4, %76, %119] : memref<64x12x1x256xf32>
                %121 = vector.broadcast %120 : f32 to vector<8xf32>
                %122 = rmem.vec.load %43[%arg3, %arg4, %119, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %123 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %124 = vector.fma %121, %122, %123 : vector<8xf32>
                affine.store %124, %alloca[0] : memref<1xvector<8xf32>>
                %125 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                vector.store %125, %alloc_75[%arg3, %arg4, %76, %arg6] : memref<64x12x1x64xf32>, vector<8xf32>
              }
            }
          }
        }
      }
    } {"pf_target" = 1, "nahead" = 4, "batch" = 1,
    "access_mem" = [
      ["ref3", #amap1, 196608, "t3"]
    ]}
    %reinterpret_cast_76 = memref.reinterpret_cast %alloc_75 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x12x1x64xf32> to memref<64x768xf32>
    %alloc_77 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        affine.store %cst_1, %alloc_77[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_78 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_79 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 768 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %76 = affine.load %alloc_10[%arg4 + %arg5, %arg3 + %arg6] : memref<768x768xf32>
            affine.store %76, %alloc_79[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %76 = affine.load %reinterpret_cast_76[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %76, %alloc_78[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %76 = affine.apply #map3(%arg5, %arg7)
              %77 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %78 = vector.load %alloc_77[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %78, %alloca[0] : memref<4xvector<16xf32>>
              %79 = arith.addi %arg7, %c1 : index
              %80 = vector.load %alloc_77[%79, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %80, %alloca[1] : memref<4xvector<16xf32>>
              %81 = arith.addi %arg7, %c2 : index
              %82 = vector.load %alloc_77[%81, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %82, %alloca[2] : memref<4xvector<16xf32>>
              %83 = arith.addi %arg7, %c3 : index
              %84 = vector.load %alloc_77[%83, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %84, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %89 = memref.load %alloc_78[%76, %arg8] : memref<32x256xf32>
                %90 = vector.broadcast %89 : f32 to vector<16xf32>
                %91 = vector.load %alloc_79[%arg8, %77] : memref<256x64xf32>, vector<16xf32>
                %92 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %93 = vector.fma %90, %91, %92 : vector<16xf32>
                affine.store %93, %alloca[0] : memref<4xvector<16xf32>>
                %94 = affine.apply #map4(%arg8)
                %95 = memref.load %alloc_78[%76, %94] : memref<32x256xf32>
                %96 = vector.broadcast %95 : f32 to vector<16xf32>
                %97 = vector.load %alloc_79[%94, %77] : memref<256x64xf32>, vector<16xf32>
                %98 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %99 = vector.fma %96, %97, %98 : vector<16xf32>
                affine.store %99, %alloca[0] : memref<4xvector<16xf32>>
                %100 = affine.apply #map5(%arg8)
                %101 = memref.load %alloc_78[%76, %100] : memref<32x256xf32>
                %102 = vector.broadcast %101 : f32 to vector<16xf32>
                %103 = vector.load %alloc_79[%100, %77] : memref<256x64xf32>, vector<16xf32>
                %104 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %105 = vector.fma %102, %103, %104 : vector<16xf32>
                affine.store %105, %alloca[0] : memref<4xvector<16xf32>>
                %106 = affine.apply #map6(%arg8)
                %107 = memref.load %alloc_78[%76, %106] : memref<32x256xf32>
                %108 = vector.broadcast %107 : f32 to vector<16xf32>
                %109 = vector.load %alloc_79[%106, %77] : memref<256x64xf32>, vector<16xf32>
                %110 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %111 = vector.fma %108, %109, %110 : vector<16xf32>
                affine.store %111, %alloca[0] : memref<4xvector<16xf32>>
                %112 = arith.addi %76, %c1 : index
                %113 = memref.load %alloc_78[%112, %arg8] : memref<32x256xf32>
                %114 = vector.broadcast %113 : f32 to vector<16xf32>
                %115 = vector.load %alloc_79[%arg8, %77] : memref<256x64xf32>, vector<16xf32>
                %116 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %117 = vector.fma %114, %115, %116 : vector<16xf32>
                affine.store %117, %alloca[1] : memref<4xvector<16xf32>>
                %118 = memref.load %alloc_78[%112, %94] : memref<32x256xf32>
                %119 = vector.broadcast %118 : f32 to vector<16xf32>
                %120 = vector.load %alloc_79[%94, %77] : memref<256x64xf32>, vector<16xf32>
                %121 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %122 = vector.fma %119, %120, %121 : vector<16xf32>
                affine.store %122, %alloca[1] : memref<4xvector<16xf32>>
                %123 = memref.load %alloc_78[%112, %100] : memref<32x256xf32>
                %124 = vector.broadcast %123 : f32 to vector<16xf32>
                %125 = vector.load %alloc_79[%100, %77] : memref<256x64xf32>, vector<16xf32>
                %126 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %127 = vector.fma %124, %125, %126 : vector<16xf32>
                affine.store %127, %alloca[1] : memref<4xvector<16xf32>>
                %128 = memref.load %alloc_78[%112, %106] : memref<32x256xf32>
                %129 = vector.broadcast %128 : f32 to vector<16xf32>
                %130 = vector.load %alloc_79[%106, %77] : memref<256x64xf32>, vector<16xf32>
                %131 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %132 = vector.fma %129, %130, %131 : vector<16xf32>
                affine.store %132, %alloca[1] : memref<4xvector<16xf32>>
                %133 = arith.addi %76, %c2 : index
                %134 = memref.load %alloc_78[%133, %arg8] : memref<32x256xf32>
                %135 = vector.broadcast %134 : f32 to vector<16xf32>
                %136 = vector.load %alloc_79[%arg8, %77] : memref<256x64xf32>, vector<16xf32>
                %137 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %138 = vector.fma %135, %136, %137 : vector<16xf32>
                affine.store %138, %alloca[2] : memref<4xvector<16xf32>>
                %139 = memref.load %alloc_78[%133, %94] : memref<32x256xf32>
                %140 = vector.broadcast %139 : f32 to vector<16xf32>
                %141 = vector.load %alloc_79[%94, %77] : memref<256x64xf32>, vector<16xf32>
                %142 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %143 = vector.fma %140, %141, %142 : vector<16xf32>
                affine.store %143, %alloca[2] : memref<4xvector<16xf32>>
                %144 = memref.load %alloc_78[%133, %100] : memref<32x256xf32>
                %145 = vector.broadcast %144 : f32 to vector<16xf32>
                %146 = vector.load %alloc_79[%100, %77] : memref<256x64xf32>, vector<16xf32>
                %147 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %148 = vector.fma %145, %146, %147 : vector<16xf32>
                affine.store %148, %alloca[2] : memref<4xvector<16xf32>>
                %149 = memref.load %alloc_78[%133, %106] : memref<32x256xf32>
                %150 = vector.broadcast %149 : f32 to vector<16xf32>
                %151 = vector.load %alloc_79[%106, %77] : memref<256x64xf32>, vector<16xf32>
                %152 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %153 = vector.fma %150, %151, %152 : vector<16xf32>
                affine.store %153, %alloca[2] : memref<4xvector<16xf32>>
                %154 = arith.addi %76, %c3 : index
                %155 = memref.load %alloc_78[%154, %arg8] : memref<32x256xf32>
                %156 = vector.broadcast %155 : f32 to vector<16xf32>
                %157 = vector.load %alloc_79[%arg8, %77] : memref<256x64xf32>, vector<16xf32>
                %158 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %159 = vector.fma %156, %157, %158 : vector<16xf32>
                affine.store %159, %alloca[3] : memref<4xvector<16xf32>>
                %160 = memref.load %alloc_78[%154, %94] : memref<32x256xf32>
                %161 = vector.broadcast %160 : f32 to vector<16xf32>
                %162 = vector.load %alloc_79[%94, %77] : memref<256x64xf32>, vector<16xf32>
                %163 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %164 = vector.fma %161, %162, %163 : vector<16xf32>
                affine.store %164, %alloca[3] : memref<4xvector<16xf32>>
                %165 = memref.load %alloc_78[%154, %100] : memref<32x256xf32>
                %166 = vector.broadcast %165 : f32 to vector<16xf32>
                %167 = vector.load %alloc_79[%100, %77] : memref<256x64xf32>, vector<16xf32>
                %168 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %169 = vector.fma %166, %167, %168 : vector<16xf32>
                affine.store %169, %alloca[3] : memref<4xvector<16xf32>>
                %170 = memref.load %alloc_78[%154, %106] : memref<32x256xf32>
                %171 = vector.broadcast %170 : f32 to vector<16xf32>
                %172 = vector.load %alloc_79[%106, %77] : memref<256x64xf32>, vector<16xf32>
                %173 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %174 = vector.fma %171, %172, %173 : vector<16xf32>
                affine.store %174, %alloca[3] : memref<4xvector<16xf32>>
              }
              %85 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %85, %alloc_77[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %86 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %86, %alloc_77[%79, %arg6] : memref<64x768xf32>, vector<16xf32>
              %87 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %87, %alloc_77[%81, %arg6] : memref<64x768xf32>, vector<16xf32>
              %88 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %88, %alloc_77[%83, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %76 = affine.load %alloc_77[%arg3, %arg4] : memref<64x768xf32>
        %77 = affine.load %alloc_12[%arg4] : memref<768xf32>
        %78 = arith.addf %76, %77 : f32
        affine.store %78, %alloc_77[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_80 = memref.reinterpret_cast %alloc_77 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_81 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %reinterpret_cast_80[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_32[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %78 = arith.addf %76, %77 : f32
          affine.store %78, %alloc_81[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_82 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_81[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_33[0, %arg4, %arg5] : memref<1x1x768xf32>
          %78 = arith.addf %76, %77 : f32
          affine.store %78, %alloc_82[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_83 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_83[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_82[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_83[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %78 = arith.addf %77, %76 : f32
          affine.store %78, %alloc_83[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %76 = affine.load %alloc_83[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %77 = arith.divf %76, %cst : f32
          affine.store %77, %alloc_83[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_84 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_82[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_83[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %78 = arith.subf %76, %77 : f32
          affine.store %78, %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_85 = memref.alloc() : memref<f32>
    %cast_86 = memref.cast %alloc_85 : memref<f32> to memref<*xf32>
    %57 = llvm.mlir.addressof @constant_33 : !llvm.ptr<array<12 x i8>>
    %58 = llvm.getelementptr %57[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%58, %cast_86) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_87 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_85[] : memref<f32>
          %78 = math.powf %76, %77 : f32
          affine.store %78, %alloc_87[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_88 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_88[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_87[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_88[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %78 = arith.addf %77, %76 : f32
          affine.store %78, %alloc_88[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %76 = affine.load %alloc_88[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %77 = arith.divf %76, %cst : f32
          affine.store %77, %alloc_88[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_89 = memref.alloc() : memref<f32>
    %cast_90 = memref.cast %alloc_89 : memref<f32> to memref<*xf32>
    %59 = llvm.mlir.addressof @constant_34 : !llvm.ptr<array<12 x i8>>
    %60 = llvm.getelementptr %59[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%60, %cast_90) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_91 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %76 = affine.load %alloc_88[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %77 = affine.load %alloc_89[] : memref<f32>
          %78 = arith.addf %76, %77 : f32
          affine.store %78, %alloc_91[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_92 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %76 = affine.load %alloc_91[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %77 = math.sqrt %76 : f32
          affine.store %77, %alloc_92[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_93 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_92[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %78 = arith.divf %76, %77 : f32
          affine.store %78, %alloc_93[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_94 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_93[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_14[%arg5] : memref<768xf32>
          %78 = arith.mulf %76, %77 : f32
          affine.store %78, %alloc_94[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_95 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_94[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_16[%arg5] : memref<768xf32>
          %78 = arith.addf %76, %77 : f32
          affine.store %78, %alloc_95[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_96 = memref.reinterpret_cast %alloc_95 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_97 = memref.alloc() {alignment = 128 : i64} : memref<64x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 3072 {
        affine.store %cst_1, %alloc_97[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %alloc_98 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_99 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 3072 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %76 = affine.load %alloc_18[%arg4 + %arg5, %arg3 + %arg6] : memref<768x3072xf32>
            affine.store %76, %alloc_99[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %76 = affine.load %reinterpret_cast_96[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %76, %alloc_98[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %76 = affine.apply #map3(%arg5, %arg7)
              %77 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %78 = vector.load %alloc_97[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %78, %alloca[0] : memref<4xvector<16xf32>>
              %79 = arith.addi %arg7, %c1 : index
              %80 = vector.load %alloc_97[%79, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %80, %alloca[1] : memref<4xvector<16xf32>>
              %81 = arith.addi %arg7, %c2 : index
              %82 = vector.load %alloc_97[%81, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %82, %alloca[2] : memref<4xvector<16xf32>>
              %83 = arith.addi %arg7, %c3 : index
              %84 = vector.load %alloc_97[%83, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %84, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %89 = memref.load %alloc_98[%76, %arg8] : memref<32x256xf32>
                %90 = vector.broadcast %89 : f32 to vector<16xf32>
                %91 = vector.load %alloc_99[%arg8, %77] : memref<256x64xf32>, vector<16xf32>
                %92 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %93 = vector.fma %90, %91, %92 : vector<16xf32>
                affine.store %93, %alloca[0] : memref<4xvector<16xf32>>
                %94 = affine.apply #map4(%arg8)
                %95 = memref.load %alloc_98[%76, %94] : memref<32x256xf32>
                %96 = vector.broadcast %95 : f32 to vector<16xf32>
                %97 = vector.load %alloc_99[%94, %77] : memref<256x64xf32>, vector<16xf32>
                %98 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %99 = vector.fma %96, %97, %98 : vector<16xf32>
                affine.store %99, %alloca[0] : memref<4xvector<16xf32>>
                %100 = affine.apply #map5(%arg8)
                %101 = memref.load %alloc_98[%76, %100] : memref<32x256xf32>
                %102 = vector.broadcast %101 : f32 to vector<16xf32>
                %103 = vector.load %alloc_99[%100, %77] : memref<256x64xf32>, vector<16xf32>
                %104 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %105 = vector.fma %102, %103, %104 : vector<16xf32>
                affine.store %105, %alloca[0] : memref<4xvector<16xf32>>
                %106 = affine.apply #map6(%arg8)
                %107 = memref.load %alloc_98[%76, %106] : memref<32x256xf32>
                %108 = vector.broadcast %107 : f32 to vector<16xf32>
                %109 = vector.load %alloc_99[%106, %77] : memref<256x64xf32>, vector<16xf32>
                %110 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %111 = vector.fma %108, %109, %110 : vector<16xf32>
                affine.store %111, %alloca[0] : memref<4xvector<16xf32>>
                %112 = arith.addi %76, %c1 : index
                %113 = memref.load %alloc_98[%112, %arg8] : memref<32x256xf32>
                %114 = vector.broadcast %113 : f32 to vector<16xf32>
                %115 = vector.load %alloc_99[%arg8, %77] : memref<256x64xf32>, vector<16xf32>
                %116 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %117 = vector.fma %114, %115, %116 : vector<16xf32>
                affine.store %117, %alloca[1] : memref<4xvector<16xf32>>
                %118 = memref.load %alloc_98[%112, %94] : memref<32x256xf32>
                %119 = vector.broadcast %118 : f32 to vector<16xf32>
                %120 = vector.load %alloc_99[%94, %77] : memref<256x64xf32>, vector<16xf32>
                %121 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %122 = vector.fma %119, %120, %121 : vector<16xf32>
                affine.store %122, %alloca[1] : memref<4xvector<16xf32>>
                %123 = memref.load %alloc_98[%112, %100] : memref<32x256xf32>
                %124 = vector.broadcast %123 : f32 to vector<16xf32>
                %125 = vector.load %alloc_99[%100, %77] : memref<256x64xf32>, vector<16xf32>
                %126 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %127 = vector.fma %124, %125, %126 : vector<16xf32>
                affine.store %127, %alloca[1] : memref<4xvector<16xf32>>
                %128 = memref.load %alloc_98[%112, %106] : memref<32x256xf32>
                %129 = vector.broadcast %128 : f32 to vector<16xf32>
                %130 = vector.load %alloc_99[%106, %77] : memref<256x64xf32>, vector<16xf32>
                %131 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %132 = vector.fma %129, %130, %131 : vector<16xf32>
                affine.store %132, %alloca[1] : memref<4xvector<16xf32>>
                %133 = arith.addi %76, %c2 : index
                %134 = memref.load %alloc_98[%133, %arg8] : memref<32x256xf32>
                %135 = vector.broadcast %134 : f32 to vector<16xf32>
                %136 = vector.load %alloc_99[%arg8, %77] : memref<256x64xf32>, vector<16xf32>
                %137 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %138 = vector.fma %135, %136, %137 : vector<16xf32>
                affine.store %138, %alloca[2] : memref<4xvector<16xf32>>
                %139 = memref.load %alloc_98[%133, %94] : memref<32x256xf32>
                %140 = vector.broadcast %139 : f32 to vector<16xf32>
                %141 = vector.load %alloc_99[%94, %77] : memref<256x64xf32>, vector<16xf32>
                %142 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %143 = vector.fma %140, %141, %142 : vector<16xf32>
                affine.store %143, %alloca[2] : memref<4xvector<16xf32>>
                %144 = memref.load %alloc_98[%133, %100] : memref<32x256xf32>
                %145 = vector.broadcast %144 : f32 to vector<16xf32>
                %146 = vector.load %alloc_99[%100, %77] : memref<256x64xf32>, vector<16xf32>
                %147 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %148 = vector.fma %145, %146, %147 : vector<16xf32>
                affine.store %148, %alloca[2] : memref<4xvector<16xf32>>
                %149 = memref.load %alloc_98[%133, %106] : memref<32x256xf32>
                %150 = vector.broadcast %149 : f32 to vector<16xf32>
                %151 = vector.load %alloc_99[%106, %77] : memref<256x64xf32>, vector<16xf32>
                %152 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %153 = vector.fma %150, %151, %152 : vector<16xf32>
                affine.store %153, %alloca[2] : memref<4xvector<16xf32>>
                %154 = arith.addi %76, %c3 : index
                %155 = memref.load %alloc_98[%154, %arg8] : memref<32x256xf32>
                %156 = vector.broadcast %155 : f32 to vector<16xf32>
                %157 = vector.load %alloc_99[%arg8, %77] : memref<256x64xf32>, vector<16xf32>
                %158 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %159 = vector.fma %156, %157, %158 : vector<16xf32>
                affine.store %159, %alloca[3] : memref<4xvector<16xf32>>
                %160 = memref.load %alloc_98[%154, %94] : memref<32x256xf32>
                %161 = vector.broadcast %160 : f32 to vector<16xf32>
                %162 = vector.load %alloc_99[%94, %77] : memref<256x64xf32>, vector<16xf32>
                %163 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %164 = vector.fma %161, %162, %163 : vector<16xf32>
                affine.store %164, %alloca[3] : memref<4xvector<16xf32>>
                %165 = memref.load %alloc_98[%154, %100] : memref<32x256xf32>
                %166 = vector.broadcast %165 : f32 to vector<16xf32>
                %167 = vector.load %alloc_99[%100, %77] : memref<256x64xf32>, vector<16xf32>
                %168 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %169 = vector.fma %166, %167, %168 : vector<16xf32>
                affine.store %169, %alloca[3] : memref<4xvector<16xf32>>
                %170 = memref.load %alloc_98[%154, %106] : memref<32x256xf32>
                %171 = vector.broadcast %170 : f32 to vector<16xf32>
                %172 = vector.load %alloc_99[%106, %77] : memref<256x64xf32>, vector<16xf32>
                %173 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %174 = vector.fma %171, %172, %173 : vector<16xf32>
                affine.store %174, %alloca[3] : memref<4xvector<16xf32>>
              }
              %85 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %85, %alloc_97[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %86 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %86, %alloc_97[%79, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %87 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %87, %alloc_97[%81, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %88 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %88, %alloc_97[%83, %arg6] : memref<64x3072xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 3072 {
        %76 = affine.load %alloc_97[%arg3, %arg4] : memref<64x3072xf32>
        %77 = affine.load %alloc_20[%arg4] : memref<3072xf32>
        %78 = arith.addf %76, %77 : f32
        affine.store %78, %alloc_97[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %reinterpret_cast_100 = memref.reinterpret_cast %alloc_97 to offset: [0], sizes: [64, 1, 3072], strides: [3072, 3072, 1] : memref<64x3072xf32> to memref<64x1x3072xf32>
    %alloc_101 = memref.alloc() : memref<f32>
    %cast_102 = memref.cast %alloc_101 : memref<f32> to memref<*xf32>
    %61 = llvm.mlir.addressof @constant_37 : !llvm.ptr<array<12 x i8>>
    %62 = llvm.getelementptr %61[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%62, %cast_102) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_103 = memref.alloc() : memref<f32>
    %cast_104 = memref.cast %alloc_103 : memref<f32> to memref<*xf32>
    %63 = llvm.mlir.addressof @constant_38 : !llvm.ptr<array<12 x i8>>
    %64 = llvm.getelementptr %63[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%64, %cast_104) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_105 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %76 = affine.load %reinterpret_cast_100[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %77 = affine.load %alloc_103[] : memref<f32>
          %78 = math.powf %76, %77 : f32
          affine.store %78, %alloc_105[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_106 = memref.alloc() : memref<f32>
    %cast_107 = memref.cast %alloc_106 : memref<f32> to memref<*xf32>
    %65 = llvm.mlir.addressof @constant_39 : !llvm.ptr<array<12 x i8>>
    %66 = llvm.getelementptr %65[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%66, %cast_107) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_108 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %76 = affine.load %alloc_105[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %77 = affine.load %alloc_106[] : memref<f32>
          %78 = arith.mulf %76, %77 : f32
          affine.store %78, %alloc_108[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_109 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %76 = affine.load %reinterpret_cast_100[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %77 = affine.load %alloc_108[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %78 = arith.addf %76, %77 : f32
          affine.store %78, %alloc_109[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_110 = memref.alloc() : memref<f32>
    %cast_111 = memref.cast %alloc_110 : memref<f32> to memref<*xf32>
    %67 = llvm.mlir.addressof @constant_40 : !llvm.ptr<array<12 x i8>>
    %68 = llvm.getelementptr %67[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%68, %cast_111) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_112 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %76 = affine.load %alloc_109[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %77 = affine.load %alloc_110[] : memref<f32>
          %78 = arith.mulf %76, %77 : f32
          affine.store %78, %alloc_112[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_113 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %76 = affine.load %alloc_112[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %77 = math.tanh %76 : f32
          affine.store %77, %alloc_113[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_114 = memref.alloc() : memref<f32>
    %cast_115 = memref.cast %alloc_114 : memref<f32> to memref<*xf32>
    %69 = llvm.mlir.addressof @constant_41 : !llvm.ptr<array<12 x i8>>
    %70 = llvm.getelementptr %69[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%70, %cast_115) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_116 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %76 = affine.load %alloc_113[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %77 = affine.load %alloc_114[] : memref<f32>
          %78 = arith.addf %76, %77 : f32
          affine.store %78, %alloc_116[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_117 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %76 = affine.load %reinterpret_cast_100[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %77 = affine.load %alloc_116[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %78 = arith.mulf %76, %77 : f32
          affine.store %78, %alloc_117[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_118 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %76 = affine.load %alloc_117[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %77 = affine.load %alloc_101[] : memref<f32>
          %78 = arith.mulf %76, %77 : f32
          affine.store %78, %alloc_118[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %reinterpret_cast_119 = memref.reinterpret_cast %alloc_118 to offset: [0], sizes: [64, 3072], strides: [3072, 1] : memref<64x1x3072xf32> to memref<64x3072xf32>
    %alloc_120 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        affine.store %cst_1, %alloc_120[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_121 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_122 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 768 step 64 {
      affine.for %arg4 = 0 to 3072 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %76 = affine.load %alloc_22[%arg4 + %arg5, %arg3 + %arg6] : memref<3072x768xf32>
            affine.store %76, %alloc_122[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %76 = affine.load %reinterpret_cast_119[%arg5 + %arg6, %arg4 + %arg7] : memref<64x3072xf32>
              affine.store %76, %alloc_121[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %76 = affine.apply #map3(%arg5, %arg7)
              %77 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %78 = vector.load %alloc_120[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %78, %alloca[0] : memref<4xvector<16xf32>>
              %79 = arith.addi %arg7, %c1 : index
              %80 = vector.load %alloc_120[%79, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %80, %alloca[1] : memref<4xvector<16xf32>>
              %81 = arith.addi %arg7, %c2 : index
              %82 = vector.load %alloc_120[%81, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %82, %alloca[2] : memref<4xvector<16xf32>>
              %83 = arith.addi %arg7, %c3 : index
              %84 = vector.load %alloc_120[%83, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %84, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %89 = memref.load %alloc_121[%76, %arg8] : memref<32x256xf32>
                %90 = vector.broadcast %89 : f32 to vector<16xf32>
                %91 = vector.load %alloc_122[%arg8, %77] : memref<256x64xf32>, vector<16xf32>
                %92 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %93 = vector.fma %90, %91, %92 : vector<16xf32>
                affine.store %93, %alloca[0] : memref<4xvector<16xf32>>
                %94 = affine.apply #map4(%arg8)
                %95 = memref.load %alloc_121[%76, %94] : memref<32x256xf32>
                %96 = vector.broadcast %95 : f32 to vector<16xf32>
                %97 = vector.load %alloc_122[%94, %77] : memref<256x64xf32>, vector<16xf32>
                %98 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %99 = vector.fma %96, %97, %98 : vector<16xf32>
                affine.store %99, %alloca[0] : memref<4xvector<16xf32>>
                %100 = affine.apply #map5(%arg8)
                %101 = memref.load %alloc_121[%76, %100] : memref<32x256xf32>
                %102 = vector.broadcast %101 : f32 to vector<16xf32>
                %103 = vector.load %alloc_122[%100, %77] : memref<256x64xf32>, vector<16xf32>
                %104 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %105 = vector.fma %102, %103, %104 : vector<16xf32>
                affine.store %105, %alloca[0] : memref<4xvector<16xf32>>
                %106 = affine.apply #map6(%arg8)
                %107 = memref.load %alloc_121[%76, %106] : memref<32x256xf32>
                %108 = vector.broadcast %107 : f32 to vector<16xf32>
                %109 = vector.load %alloc_122[%106, %77] : memref<256x64xf32>, vector<16xf32>
                %110 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %111 = vector.fma %108, %109, %110 : vector<16xf32>
                affine.store %111, %alloca[0] : memref<4xvector<16xf32>>
                %112 = arith.addi %76, %c1 : index
                %113 = memref.load %alloc_121[%112, %arg8] : memref<32x256xf32>
                %114 = vector.broadcast %113 : f32 to vector<16xf32>
                %115 = vector.load %alloc_122[%arg8, %77] : memref<256x64xf32>, vector<16xf32>
                %116 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %117 = vector.fma %114, %115, %116 : vector<16xf32>
                affine.store %117, %alloca[1] : memref<4xvector<16xf32>>
                %118 = memref.load %alloc_121[%112, %94] : memref<32x256xf32>
                %119 = vector.broadcast %118 : f32 to vector<16xf32>
                %120 = vector.load %alloc_122[%94, %77] : memref<256x64xf32>, vector<16xf32>
                %121 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %122 = vector.fma %119, %120, %121 : vector<16xf32>
                affine.store %122, %alloca[1] : memref<4xvector<16xf32>>
                %123 = memref.load %alloc_121[%112, %100] : memref<32x256xf32>
                %124 = vector.broadcast %123 : f32 to vector<16xf32>
                %125 = vector.load %alloc_122[%100, %77] : memref<256x64xf32>, vector<16xf32>
                %126 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %127 = vector.fma %124, %125, %126 : vector<16xf32>
                affine.store %127, %alloca[1] : memref<4xvector<16xf32>>
                %128 = memref.load %alloc_121[%112, %106] : memref<32x256xf32>
                %129 = vector.broadcast %128 : f32 to vector<16xf32>
                %130 = vector.load %alloc_122[%106, %77] : memref<256x64xf32>, vector<16xf32>
                %131 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %132 = vector.fma %129, %130, %131 : vector<16xf32>
                affine.store %132, %alloca[1] : memref<4xvector<16xf32>>
                %133 = arith.addi %76, %c2 : index
                %134 = memref.load %alloc_121[%133, %arg8] : memref<32x256xf32>
                %135 = vector.broadcast %134 : f32 to vector<16xf32>
                %136 = vector.load %alloc_122[%arg8, %77] : memref<256x64xf32>, vector<16xf32>
                %137 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %138 = vector.fma %135, %136, %137 : vector<16xf32>
                affine.store %138, %alloca[2] : memref<4xvector<16xf32>>
                %139 = memref.load %alloc_121[%133, %94] : memref<32x256xf32>
                %140 = vector.broadcast %139 : f32 to vector<16xf32>
                %141 = vector.load %alloc_122[%94, %77] : memref<256x64xf32>, vector<16xf32>
                %142 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %143 = vector.fma %140, %141, %142 : vector<16xf32>
                affine.store %143, %alloca[2] : memref<4xvector<16xf32>>
                %144 = memref.load %alloc_121[%133, %100] : memref<32x256xf32>
                %145 = vector.broadcast %144 : f32 to vector<16xf32>
                %146 = vector.load %alloc_122[%100, %77] : memref<256x64xf32>, vector<16xf32>
                %147 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %148 = vector.fma %145, %146, %147 : vector<16xf32>
                affine.store %148, %alloca[2] : memref<4xvector<16xf32>>
                %149 = memref.load %alloc_121[%133, %106] : memref<32x256xf32>
                %150 = vector.broadcast %149 : f32 to vector<16xf32>
                %151 = vector.load %alloc_122[%106, %77] : memref<256x64xf32>, vector<16xf32>
                %152 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %153 = vector.fma %150, %151, %152 : vector<16xf32>
                affine.store %153, %alloca[2] : memref<4xvector<16xf32>>
                %154 = arith.addi %76, %c3 : index
                %155 = memref.load %alloc_121[%154, %arg8] : memref<32x256xf32>
                %156 = vector.broadcast %155 : f32 to vector<16xf32>
                %157 = vector.load %alloc_122[%arg8, %77] : memref<256x64xf32>, vector<16xf32>
                %158 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %159 = vector.fma %156, %157, %158 : vector<16xf32>
                affine.store %159, %alloca[3] : memref<4xvector<16xf32>>
                %160 = memref.load %alloc_121[%154, %94] : memref<32x256xf32>
                %161 = vector.broadcast %160 : f32 to vector<16xf32>
                %162 = vector.load %alloc_122[%94, %77] : memref<256x64xf32>, vector<16xf32>
                %163 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %164 = vector.fma %161, %162, %163 : vector<16xf32>
                affine.store %164, %alloca[3] : memref<4xvector<16xf32>>
                %165 = memref.load %alloc_121[%154, %100] : memref<32x256xf32>
                %166 = vector.broadcast %165 : f32 to vector<16xf32>
                %167 = vector.load %alloc_122[%100, %77] : memref<256x64xf32>, vector<16xf32>
                %168 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %169 = vector.fma %166, %167, %168 : vector<16xf32>
                affine.store %169, %alloca[3] : memref<4xvector<16xf32>>
                %170 = memref.load %alloc_121[%154, %106] : memref<32x256xf32>
                %171 = vector.broadcast %170 : f32 to vector<16xf32>
                %172 = vector.load %alloc_122[%106, %77] : memref<256x64xf32>, vector<16xf32>
                %173 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %174 = vector.fma %171, %172, %173 : vector<16xf32>
                affine.store %174, %alloca[3] : memref<4xvector<16xf32>>
              }
              %85 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %85, %alloc_120[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %86 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %86, %alloc_120[%79, %arg6] : memref<64x768xf32>, vector<16xf32>
              %87 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %87, %alloc_120[%81, %arg6] : memref<64x768xf32>, vector<16xf32>
              %88 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %88, %alloc_120[%83, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %76 = affine.load %alloc_120[%arg3, %arg4] : memref<64x768xf32>
        %77 = affine.load %alloc_24[%arg4] : memref<768xf32>
        %78 = arith.addf %76, %77 : f32
        affine.store %78, %alloc_120[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_123 = memref.reinterpret_cast %alloc_120 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_124 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_81[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %reinterpret_cast_123[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %78 = arith.addf %76, %77 : f32
          affine.store %78, %alloc_124[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_125 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_124[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_33[0, %arg4, %arg5] : memref<1x1x768xf32>
          %78 = arith.addf %76, %77 : f32
          affine.store %78, %alloc_125[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_126 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_126[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_125[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_126[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %78 = arith.addf %77, %76 : f32
          affine.store %78, %alloc_126[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %76 = affine.load %alloc_126[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %77 = arith.divf %76, %cst : f32
          affine.store %77, %alloc_126[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_127 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_125[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_126[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %78 = arith.subf %76, %77 : f32
          affine.store %78, %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_128 = memref.alloc() : memref<f32>
    %cast_129 = memref.cast %alloc_128 : memref<f32> to memref<*xf32>
    %71 = llvm.mlir.addressof @constant_44 : !llvm.ptr<array<12 x i8>>
    %72 = llvm.getelementptr %71[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%72, %cast_129) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_130 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_128[] : memref<f32>
          %78 = math.powf %76, %77 : f32
          affine.store %78, %alloc_130[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_131 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_131[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_130[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_131[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %78 = arith.addf %77, %76 : f32
          affine.store %78, %alloc_131[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %76 = affine.load %alloc_131[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %77 = arith.divf %76, %cst : f32
          affine.store %77, %alloc_131[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_132 = memref.alloc() : memref<f32>
    %cast_133 = memref.cast %alloc_132 : memref<f32> to memref<*xf32>
    %73 = llvm.mlir.addressof @constant_45 : !llvm.ptr<array<12 x i8>>
    %74 = llvm.getelementptr %73[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%74, %cast_133) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_134 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %76 = affine.load %alloc_131[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %77 = affine.load %alloc_132[] : memref<f32>
          %78 = arith.addf %76, %77 : f32
          affine.store %78, %alloc_134[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_135 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %76 = affine.load %alloc_134[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %77 = math.sqrt %76 : f32
          affine.store %77, %alloc_135[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_136 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_135[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %78 = arith.divf %76, %77 : f32
          affine.store %78, %alloc_136[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_137 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_136[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_26[%arg5] : memref<768xf32>
          %78 = arith.mulf %76, %77 : f32
          affine.store %78, %alloc_137[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_138 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %76 = affine.load %alloc_137[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %77 = affine.load %alloc_28[%arg5] : memref<768xf32>
          %78 = arith.addf %76, %77 : f32
          affine.store %78, %alloc_138[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %75 = rmem.alloc_memref(2, ) {alignment = 16 : i64,
      access_mem_catcher = [["ref5", 0]]
    } : <1, memref<64x1x50264xf32>>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 50264 {
          rmem.affine.store %cst_1 -> %75[%arg3, %arg4, %arg5] {map = #map9} : f32, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index
        }
      }
    } {"pf_target" = 1, "nahead" = 4, "batch" = 1,
    "access_mem" = [
      ["ref5", #amap2, 50264, "t5"]
    ]}
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 50264 step 8 {
          affine.for %arg6 = 0 to 768 step 8 {
            // %32 [%arg6, %arg5->%arg8]
            // ...
            // %32 [%arg6+7, %arg5->%arg8]
            %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
            affine.for %arg7 = 0 to 1 {
              %76 = arith.addi %arg7, %arg4 : index
              %77 = rmem.vec.load %75[%arg3, %76, %arg5] : !rmem.rmref<1, memref<64x1x50264xf32>>, vector<8xf32>
              affine.store %77, %alloca[0] : memref<1xvector<8xf32>>
              %78 = memref.load %alloc_138[%arg3, %76, %arg6] : memref<64x1x768xf32>
              %79 = vector.broadcast %78 : f32 to vector<8xf32>
              %80 = rmem.vec.load %32[%arg6, %arg5] : !rmem.rmref<1, memref<768x50264xf32>>, vector<8xf32>
              %81 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %82 = vector.fma %79, %80, %81 : vector<8xf32>
              affine.store %82, %alloca[0] : memref<1xvector<8xf32>>
              %83 = arith.addi %arg6, %c1 : index
              %84 = memref.load %alloc_138[%arg3, %76, %83] : memref<64x1x768xf32>
              %85 = vector.broadcast %84 : f32 to vector<8xf32>
              %86 = rmem.vec.load %32[%83, %arg5] : !rmem.rmref<1, memref<768x50264xf32>>, vector<8xf32>
              %87 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %88 = vector.fma %85, %86, %87 : vector<8xf32>
              affine.store %88, %alloca[0] : memref<1xvector<8xf32>>
              %89 = arith.addi %arg6, %c2 : index
              %90 = memref.load %alloc_138[%arg3, %76, %89] : memref<64x1x768xf32>
              %91 = vector.broadcast %90 : f32 to vector<8xf32>
              %92 = rmem.vec.load %32[%89, %arg5] : !rmem.rmref<1, memref<768x50264xf32>>, vector<8xf32>
              %93 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %94 = vector.fma %91, %92, %93 : vector<8xf32>
              affine.store %94, %alloca[0] : memref<1xvector<8xf32>>
              %95 = arith.addi %arg6, %c3 : index
              %96 = memref.load %alloc_138[%arg3, %76, %95] : memref<64x1x768xf32>
              %97 = vector.broadcast %96 : f32 to vector<8xf32>
              %98 = rmem.vec.load %32[%95, %arg5] : !rmem.rmref<1, memref<768x50264xf32>>, vector<8xf32>
              %99 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %100 = vector.fma %97, %98, %99 : vector<8xf32>
              affine.store %100, %alloca[0] : memref<1xvector<8xf32>>
              %101 = arith.addi %arg6, %c4 : index
              %102 = memref.load %alloc_138[%arg3, %76, %101] : memref<64x1x768xf32>
              %103 = vector.broadcast %102 : f32 to vector<8xf32>
              %104 = rmem.vec.load %32[%101, %arg5] : !rmem.rmref<1, memref<768x50264xf32>>, vector<8xf32>
              %105 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %106 = vector.fma %103, %104, %105 : vector<8xf32>
              affine.store %106, %alloca[0] : memref<1xvector<8xf32>>
              %107 = arith.addi %arg6, %c5 : index
              %108 = memref.load %alloc_138[%arg3, %76, %107] : memref<64x1x768xf32>
              %109 = vector.broadcast %108 : f32 to vector<8xf32>
              %110 = rmem.vec.load %32[%107, %arg5] : !rmem.rmref<1, memref<768x50264xf32>>, vector<8xf32>
              %111 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %112 = vector.fma %109, %110, %111 : vector<8xf32>
              affine.store %112, %alloca[0] : memref<1xvector<8xf32>>
              %113 = arith.addi %arg6, %c6 : index
              %114 = memref.load %alloc_138[%arg3, %76, %113] : memref<64x1x768xf32>
              %115 = vector.broadcast %114 : f32 to vector<8xf32>
              %116 = rmem.vec.load %32[%113, %arg5] : !rmem.rmref<1, memref<768x50264xf32>>, vector<8xf32>
              %117 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %118 = vector.fma %115, %116, %117 : vector<8xf32>
              affine.store %118, %alloca[0] : memref<1xvector<8xf32>>
              %119 = arith.addi %arg6, %c7 : index
              %120 = memref.load %alloc_138[%arg3, %76, %119] : memref<64x1x768xf32>
              %121 = vector.broadcast %120 : f32 to vector<8xf32>
              %122 = rmem.vec.load %32[%119, %arg5] : !rmem.rmref<1, memref<768x50264xf32>>, vector<8xf32>
              %123 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %124 = vector.fma %121, %122, %123 : vector<8xf32>
              affine.store %124, %alloca[0] : memref<1xvector<8xf32>>
              %125 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              rmem.vec.store %125, %75[%arg3, %76, %arg5] : !rmem.rmref<1, memref<64x1x50264xf32>>, vector<8xf32>
            }
          } {"pf_target" = 1, "nahead" = 1, "batch" = 1,
          "access_mem" = [
            ["ref6", #amap3, 8, "t6"],
            ["ref6", #amap4, 8, "t7"],
            ["ref6", #amap5, 8, "t8"],
            ["ref6", #amap6, 8, "t9"],
            ["ref6", #amap7, 8, "t10"],
            ["ref6", #amap8, 8, "t11"],
            ["ref6", #amap9, 8, "t12"],
           ["ref6", #amap10, 8, "t13"]
          ]}
        } 
      }
    } {"pf_target" = 1, "nahead" = 4, "batch" = 1,
    "access_mem" = [
      ["ref5", #amap2, 50264, "t5"]
    ]}
    return %75 : !rmem.rmref<1, memref<64x1x50264xf32>>
  }
}


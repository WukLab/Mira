#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 64)>
#map2 = affine_map<(d0) -> (d0 + 32)>
#map3 = affine_map<(d0, d1) -> (-d0 + d1)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> (d0 * 195840)>
#map8 = affine_map<(d0) -> (d0 * 196608)>
#map9 = affine_map<(d0, d1) -> (d0 + d1)>
#map10 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256)>
#map11 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 256)>
#map12 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 512)>
#map13 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 768)>
#map14 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1024)>
#map15 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1280)>
#map16 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1536)>
#map17 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1792)>
#map18 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64)>
#map19 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 64)>
#map20 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 128)>
#map21 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 192)>
#map22 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 256)>
#map23 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 320)>
#map24 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 384)>
#map25 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 448)>
#map26 = affine_map<(d0) -> (d0 * 50264)>
#map27 = affine_map<(d0, d1, d2, d3) -> (d2 + d3 * 50264)>
#map28 = affine_map<(d0, d1, d2, d3) -> (d2 + d3 * 50264 + 50264)>
#map29 = affine_map<(d0, d1, d2, d3) -> (d2 + d3 * 50264 + 100528)>
#map30 = affine_map<(d0, d1, d2, d3) -> (d2 + d3 * 50264 + 150792)>
#map31 = affine_map<(d0, d1, d2, d3) -> (d2 + d3 * 50264 + 201056)>
#map32 = affine_map<(d0, d1, d2, d3) -> (d2 + d3 * 50264 + 251320)>
#map33 = affine_map<(d0, d1, d2, d3) -> (d2 + d3 * 50264 + 301584)>
#map34 = affine_map<(d0, d1, d2, d3) -> (d2 + d3 * 50264 + 351848)>
#map35 = affine_map<(d0, d1) -> (d0 + d1 * 8)>
#map36 = affine_map<(d0, d1, d2) -> (d0 * 50264 + d1 + d2 * 50264)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 0, 0, 12533760, f32, 195840, 64, 1], t1 = ["ref1", 67108864, 0, 12533760, f32, 195840, 64, 1], t10 = ["ref6", 352337920, 0, 38602752, f32, 8, 64, 1], t11 = ["ref6", 352342016, 0, 38602752, f32, 8, 64, 1], t12 = ["ref6", 352346112, 0, 38602752, f32, 8, 64, 1], t13 = ["ref6", 352350208, 0, 38602752, f32, 8, 64, 1], t2 = ["ref2", 134217728, 0, 12582912, f32, 196608, 64, 1], t3 = ["ref3", 201326592, 0, 12582912, f32, 196608, 64, 1], t4 = ["ref4", 268435456, 0, 12582912, f32, 196608, 64, 1], t5 = ["ref5", 335544320, 0, 3216896, f32, 50264, 64, 1], t6 = ["ref6", 352321536, 0, 38602752, f32, 8, 64, 1], t7 = ["ref6", 352325632, 0, 38602752, f32, 8, 64, 1], t8 = ["ref6", 352329728, 0, 38602752, f32, 8, 64, 1], t9 = ["ref6", 352333824, 0, 38602752, f32, 8, 64, 1]}} {
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
  func.func @main_graph(%arg0: memref<64x1xi64>, %arg1: !rmem.rmref<1, memref<64x12x255x64xf32>>, %arg2: !rmem.rmref<1, memref<64x12x255x64xf32>>) -> !rmem.rmref<1, memref<64x1x50264xf32>> attributes {access_mem_catcher = [["ref0", 1], ["ref1", 2]], input_names = ["input_ids", "past.0.key", "past.0.value"], llvm.emit_c_interface, output_names = ["logits"]} {
    %c8 = arith.constant 8 : index
    %c196608 = arith.constant 196608 : index
    %c195840 = arith.constant 195840 : index
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c6 = arith.constant 6 : index
    %c7 = arith.constant 7 : index
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
    %32 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref6", 0]], alignment = 16 : i64} : <1, memref<768x50264xf32>>
    %33 = rmem.memref.cast %32 : <1, memref<768x50264xf32>> to <1, memref<*xf32>>
    %34 = llvm.mlir.addressof @constant_16 : !llvm.ptr<array<12 x i8>>
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @disagg_read_tensor_f32(%35, %33) : (!llvm.ptr<i8>, !rmem.rmref<1, memref<*xf32>>) -> ()
    %reinterpret_cast = memref.reinterpret_cast %arg0 to offset: [0], sizes: [64, 1], strides: [1, 1] : memref<64x1xi64> to memref<64x1xi64>
    %alloc_32 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %reinterpret_cast[%arg3, %arg4] : memref<64x1xi64>
          %164 = arith.index_cast %163 : i64 to index
          %165 = arith.addi %164, %c50264 : index
          %166 = arith.cmpi slt, %164, %c0 : index
          %167 = arith.select %166, %165, %164 : index
          %168 = memref.load %alloc[%167, %arg5] : memref<50264x768xf32>
          affine.store %168, %alloc_32[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %163 = affine.load %alloc_32[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_33[0, %arg4, %arg5] : memref<1x1x768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_35[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %163 = affine.load %alloc_35[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_36[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.addf %164, %163 : f32
          affine.store %165, %alloc_36[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_36[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = arith.divf %163, %cst : f32
          affine.store %164, %alloc_36[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_37 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_35[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_36[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.subf %163, %164 : f32
          affine.store %165, %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %163 = affine.load %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_38[] : memref<f32>
          %165 = math.powf %163, %164 : f32
          affine.store %165, %alloc_40[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %163 = affine.load %alloc_40[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_41[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.addf %164, %163 : f32
          affine.store %165, %alloc_41[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_41[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = arith.divf %163, %cst : f32
          affine.store %164, %alloc_41[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
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
          %163 = affine.load %alloc_41[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = affine.load %alloc_42[] : memref<f32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_44[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_45 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_44[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = math.sqrt %163 : f32
          affine.store %164, %alloc_45[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_46 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_45[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.divf %163, %164 : f32
          affine.store %165, %alloc_46[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_47 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_46[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_2[%arg5] : memref<768xf32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_47[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_48 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_47[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_4[%arg5] : memref<768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_48[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
            %163 = affine.load %alloc_6[%arg4 + %arg5, %arg3 + %arg6] : memref<768x2304xf32>
            affine.store %163, %alloc_52[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %163 = affine.load %reinterpret_cast_49[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %163, %alloc_51[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %163 = affine.apply #map3(%arg5, %arg7)
              %164 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %165 = vector.load %alloc_50[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %165, %alloca[0] : memref<4xvector<16xf32>>
              %166 = arith.addi %arg7, %c1 : index
              %167 = vector.load %alloc_50[%166, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %167, %alloca[1] : memref<4xvector<16xf32>>
              %168 = arith.addi %arg7, %c2 : index
              %169 = vector.load %alloc_50[%168, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %169, %alloca[2] : memref<4xvector<16xf32>>
              %170 = arith.addi %arg7, %c3 : index
              %171 = vector.load %alloc_50[%170, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %171, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %176 = memref.load %alloc_51[%163, %arg8] : memref<32x256xf32>
                %177 = vector.broadcast %176 : f32 to vector<16xf32>
                %178 = vector.load %alloc_52[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %179 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %180 = vector.fma %177, %178, %179 : vector<16xf32>
                affine.store %180, %alloca[0] : memref<4xvector<16xf32>>
                %181 = affine.apply #map4(%arg8)
                %182 = memref.load %alloc_51[%163, %181] : memref<32x256xf32>
                %183 = vector.broadcast %182 : f32 to vector<16xf32>
                %184 = vector.load %alloc_52[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %185 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %186 = vector.fma %183, %184, %185 : vector<16xf32>
                affine.store %186, %alloca[0] : memref<4xvector<16xf32>>
                %187 = affine.apply #map5(%arg8)
                %188 = memref.load %alloc_51[%163, %187] : memref<32x256xf32>
                %189 = vector.broadcast %188 : f32 to vector<16xf32>
                %190 = vector.load %alloc_52[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %191 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %192 = vector.fma %189, %190, %191 : vector<16xf32>
                affine.store %192, %alloca[0] : memref<4xvector<16xf32>>
                %193 = affine.apply #map6(%arg8)
                %194 = memref.load %alloc_51[%163, %193] : memref<32x256xf32>
                %195 = vector.broadcast %194 : f32 to vector<16xf32>
                %196 = vector.load %alloc_52[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %197 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %198 = vector.fma %195, %196, %197 : vector<16xf32>
                affine.store %198, %alloca[0] : memref<4xvector<16xf32>>
                %199 = arith.addi %163, %c1 : index
                %200 = memref.load %alloc_51[%199, %arg8] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_52[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %203 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                affine.store %204, %alloca[1] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_51[%199, %181] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_52[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %208 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                affine.store %209, %alloca[1] : memref<4xvector<16xf32>>
                %210 = memref.load %alloc_51[%199, %187] : memref<32x256xf32>
                %211 = vector.broadcast %210 : f32 to vector<16xf32>
                %212 = vector.load %alloc_52[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %213 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %214 = vector.fma %211, %212, %213 : vector<16xf32>
                affine.store %214, %alloca[1] : memref<4xvector<16xf32>>
                %215 = memref.load %alloc_51[%199, %193] : memref<32x256xf32>
                %216 = vector.broadcast %215 : f32 to vector<16xf32>
                %217 = vector.load %alloc_52[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %218 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %219 = vector.fma %216, %217, %218 : vector<16xf32>
                affine.store %219, %alloca[1] : memref<4xvector<16xf32>>
                %220 = arith.addi %163, %c2 : index
                %221 = memref.load %alloc_51[%220, %arg8] : memref<32x256xf32>
                %222 = vector.broadcast %221 : f32 to vector<16xf32>
                %223 = vector.load %alloc_52[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %224 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %225 = vector.fma %222, %223, %224 : vector<16xf32>
                affine.store %225, %alloca[2] : memref<4xvector<16xf32>>
                %226 = memref.load %alloc_51[%220, %181] : memref<32x256xf32>
                %227 = vector.broadcast %226 : f32 to vector<16xf32>
                %228 = vector.load %alloc_52[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %229 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %230 = vector.fma %227, %228, %229 : vector<16xf32>
                affine.store %230, %alloca[2] : memref<4xvector<16xf32>>
                %231 = memref.load %alloc_51[%220, %187] : memref<32x256xf32>
                %232 = vector.broadcast %231 : f32 to vector<16xf32>
                %233 = vector.load %alloc_52[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %234 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %235 = vector.fma %232, %233, %234 : vector<16xf32>
                affine.store %235, %alloca[2] : memref<4xvector<16xf32>>
                %236 = memref.load %alloc_51[%220, %193] : memref<32x256xf32>
                %237 = vector.broadcast %236 : f32 to vector<16xf32>
                %238 = vector.load %alloc_52[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %239 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %240 = vector.fma %237, %238, %239 : vector<16xf32>
                affine.store %240, %alloca[2] : memref<4xvector<16xf32>>
                %241 = arith.addi %163, %c3 : index
                %242 = memref.load %alloc_51[%241, %arg8] : memref<32x256xf32>
                %243 = vector.broadcast %242 : f32 to vector<16xf32>
                %244 = vector.load %alloc_52[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %245 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %246 = vector.fma %243, %244, %245 : vector<16xf32>
                affine.store %246, %alloca[3] : memref<4xvector<16xf32>>
                %247 = memref.load %alloc_51[%241, %181] : memref<32x256xf32>
                %248 = vector.broadcast %247 : f32 to vector<16xf32>
                %249 = vector.load %alloc_52[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %250 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %251 = vector.fma %248, %249, %250 : vector<16xf32>
                affine.store %251, %alloca[3] : memref<4xvector<16xf32>>
                %252 = memref.load %alloc_51[%241, %187] : memref<32x256xf32>
                %253 = vector.broadcast %252 : f32 to vector<16xf32>
                %254 = vector.load %alloc_52[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %255 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %256 = vector.fma %253, %254, %255 : vector<16xf32>
                affine.store %256, %alloca[3] : memref<4xvector<16xf32>>
                %257 = memref.load %alloc_51[%241, %193] : memref<32x256xf32>
                %258 = vector.broadcast %257 : f32 to vector<16xf32>
                %259 = vector.load %alloc_52[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %260 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %261 = vector.fma %258, %259, %260 : vector<16xf32>
                affine.store %261, %alloca[3] : memref<4xvector<16xf32>>
              }
              %172 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %172, %alloc_50[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %173 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %173, %alloc_50[%166, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %174 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %174, %alloc_50[%168, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %175 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %175, %alloc_50[%170, %arg6] : memref<64x2304xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 2304 {
        %163 = affine.load %alloc_50[%arg3, %arg4] : memref<64x2304xf32>
        %164 = affine.load %alloc_8[%arg4] : memref<2304xf32>
        %165 = arith.addf %163, %164 : f32
        affine.store %165, %alloc_50[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %reinterpret_cast_53 = memref.reinterpret_cast %alloc_50 to offset: [0], sizes: [64, 1, 2304], strides: [2304, 2304, 1] : memref<64x2304xf32> to memref<64x1x2304xf32>
    %alloc_54 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_55 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_56 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %reinterpret_cast_53[%arg3, %arg4, %arg5] : memref<64x1x2304xf32>
          affine.store %163, %alloc_54[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %reinterpret_cast_53[%arg3, %arg4, %arg5 + 768] : memref<64x1x2304xf32>
          affine.store %163, %alloc_55[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %reinterpret_cast_53[%arg3, %arg4, %arg5 + 1536] : memref<64x1x2304xf32>
          affine.store %163, %alloc_56[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_57 = memref.reinterpret_cast %alloc_54 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_58 = memref.reinterpret_cast %alloc_55 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_59 = memref.reinterpret_cast %alloc_56 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %42 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref2", 0]], alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
    %43 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %43 : !llvm.ptr<i64>
    %44 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %44 : !llvm.ptr<i64>
    %45 = rmem.rdma %c0, %arg1[%c0] %c195840 4 %c0 {map = #map7, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %46 = rmem.slot %c0 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %47 = rmem.rdma %c1, %arg1[%c1] %c195840 4 %c0 {map = #map7, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %48 = rmem.slot %c1 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %49 = rmem.rdma %c2, %arg1[%c2] %c195840 4 %c0 {map = #map7, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %50 = rmem.slot %c2 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %51 = rmem.rdma %c3, %arg1[%c3] %c195840 4 %c0 {map = #map7, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %52 = rmem.slot %c3 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %53:14 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %45, %arg7 = %46, %arg8 = %c0, %arg9 = %47, %arg10 = %48, %arg11 = %c0, %arg12 = %49, %arg13 = %50, %arg14 = %c0, %arg15 = %51, %arg16 = %52, %arg17 = %c0) -> (index, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index) {
      %163 = arith.addi %arg4, %c1 : index
      %164 = arith.addi %arg5, %c1 : index
      %165 = arith.addi %arg3, %c4 : index
      %166 = rmem.rdma %arg4, %arg1[%165] %c195840 4 %c0 {map = #map7, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
      %167 = rmem.slot %arg4 {mem = "t2"} : (index) -> memref<1x196608xf32>
      rmem.sync %43 -> %arg8 : <i64>, index
      affine.for %arg18 = 0 to 1 {
        affine.for %arg19 = 0 to 12 {
          affine.for %arg20 = 0 to 255 {
            affine.for %arg21 = 0 to 64 {
              %170 = affine.load %arg6[%arg18, %arg19 * 16320 + %arg20 * 64 + %arg21] : memref<1x195840xf32>
              affine.store %170, %arg7[%arg18, %arg19 * 16384 + %arg20 * 64 + %arg21] : memref<1x196608xf32>
            }
          }
        }
      }
      %168 = rmem.wrid : index
      %169 = rmem.rdma %arg5, %42[%arg3] %c196608 0 %168 {map = #map8, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %44 -> %168 : <i64>, index
      affine.yield %163, %164, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %166, %167, %c0 : index, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index
    }
    %54 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %54 : !llvm.ptr<i64>
    %55 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %55 : !llvm.ptr<i64>
    %56 = rmem.slot %c0 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %57 = rmem.slot %c1 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %58 = rmem.slot %c2 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %59 = rmem.slot %c3 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %60:6 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %56, %arg7 = %57, %arg8 = %58, %arg9 = %59) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>) {
      %163 = arith.addi %arg4, %c1 : index
      %164 = arith.addi %arg5, %c1 : index
      %165 = rmem.slot %arg4 {mem = "t2"} : (index) -> memref<1x196608xf32>
      affine.for %arg10 = 0 to 1 {
        affine.for %arg11 = 0 to 12 {
          affine.for %arg12 = 0 to 1 {
            affine.for %arg13 = 0 to 64 {
              %168 = affine.load %reinterpret_cast_58[%arg3 + %arg10, %arg11, %arg12, %arg13] : memref<64x12x1x64xf32>
              affine.store %168, %arg6[%arg10, %arg11 * 16384 + %arg12 * 64 + %arg13 + 16320] : memref<1x196608xf32>
            }
          }
        }
      }
      %166 = rmem.wrid : index
      %167 = rmem.rdma %arg5, %42[%arg3] %c196608 0 %166 {map = #map8, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %55 -> %166 : <i64>, index
      affine.yield %163, %164, %arg7, %arg8, %arg9, %165 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>
    }
    %61 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref3", 0]], alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
    %62 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %62 : !llvm.ptr<i64>
    %63 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %63 : !llvm.ptr<i64>
    %64 = rmem.rdma %c0, %arg2[%c0] %c195840 4 %c0 {map = #map7, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %65 = rmem.slot %c0 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %66 = rmem.rdma %c1, %arg2[%c1] %c195840 4 %c0 {map = #map7, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %67 = rmem.slot %c1 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %68 = rmem.rdma %c2, %arg2[%c2] %c195840 4 %c0 {map = #map7, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %69 = rmem.slot %c2 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %70 = rmem.rdma %c3, %arg2[%c3] %c195840 4 %c0 {map = #map7, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %71 = rmem.slot %c3 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %72:14 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %64, %arg7 = %65, %arg8 = %c0, %arg9 = %66, %arg10 = %67, %arg11 = %c0, %arg12 = %68, %arg13 = %69, %arg14 = %c0, %arg15 = %70, %arg16 = %71, %arg17 = %c0) -> (index, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index) {
      %163 = arith.addi %arg4, %c1 : index
      %164 = arith.addi %arg5, %c1 : index
      %165 = arith.addi %arg3, %c4 : index
      %166 = rmem.rdma %arg4, %arg2[%165] %c195840 4 %c0 {map = #map7, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
      %167 = rmem.slot %arg4 {mem = "t3"} : (index) -> memref<1x196608xf32>
      rmem.sync %62 -> %arg8 : <i64>, index
      affine.for %arg18 = 0 to 1 {
        affine.for %arg19 = 0 to 12 {
          affine.for %arg20 = 0 to 255 {
            affine.for %arg21 = 0 to 64 {
              %170 = affine.load %arg6[%arg18, %arg19 * 16320 + %arg20 * 64 + %arg21] : memref<1x195840xf32>
              affine.store %170, %arg7[%arg18, %arg19 * 16384 + %arg20 * 64 + %arg21] : memref<1x196608xf32>
            }
          }
        }
      }
      %168 = rmem.wrid : index
      %169 = rmem.rdma %arg5, %61[%arg3] %c196608 0 %168 {map = #map8, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %63 -> %168 : <i64>, index
      affine.yield %163, %164, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %166, %167, %c0 : index, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index
    }
    %73 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %73 : !llvm.ptr<i64>
    %74 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %74 : !llvm.ptr<i64>
    %75 = rmem.slot %c0 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %76 = rmem.slot %c1 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %77 = rmem.slot %c2 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %78 = rmem.slot %c3 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %79:6 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %75, %arg7 = %76, %arg8 = %77, %arg9 = %78) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>) {
      %163 = arith.addi %arg4, %c1 : index
      %164 = arith.addi %arg5, %c1 : index
      %165 = rmem.slot %arg4 {mem = "t3"} : (index) -> memref<1x196608xf32>
      affine.for %arg10 = 0 to 1 {
        affine.for %arg11 = 0 to 12 {
          affine.for %arg12 = 0 to 1 {
            affine.for %arg13 = 0 to 64 {
              %168 = affine.load %reinterpret_cast_59[%arg3 + %arg10, %arg11, %arg12, %arg13] : memref<64x12x1x64xf32>
              affine.store %168, %arg6[%arg10, %arg11 * 16384 + %arg12 * 64 + %arg13 + 16320] : memref<1x196608xf32>
            }
          }
        }
      }
      %166 = rmem.wrid : index
      %167 = rmem.rdma %arg5, %61[%arg3] %c196608 0 %166 {map = #map8, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %74 -> %166 : <i64>, index
      affine.yield %163, %164, %arg7, %arg8, %arg9, %165 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>
    }
    %80 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref4", 0]], alignment = 16 : i64} : <1, memref<64x12x64x256xf32>>
    %81 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %81 : !llvm.ptr<i64>
    %82 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %82 : !llvm.ptr<i64>
    %83 = rmem.rdma %c0, %42[%c0] %c196608 4 %c0 {map = #map8, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %84 = rmem.slot %c0 {mem = "t4"} : (index) -> memref<1x196608xf32>
    %85 = rmem.rdma %c1, %42[%c1] %c196608 4 %c0 {map = #map8, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %86 = rmem.slot %c1 {mem = "t4"} : (index) -> memref<1x196608xf32>
    %87 = rmem.rdma %c2, %42[%c2] %c196608 4 %c0 {map = #map8, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %88 = rmem.slot %c2 {mem = "t4"} : (index) -> memref<1x196608xf32>
    %89 = rmem.rdma %c3, %42[%c3] %c196608 4 %c0 {map = #map8, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %90 = rmem.slot %c3 {mem = "t4"} : (index) -> memref<1x196608xf32>
    %91:14 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %83, %arg7 = %84, %arg8 = %c0, %arg9 = %85, %arg10 = %86, %arg11 = %c0, %arg12 = %87, %arg13 = %88, %arg14 = %c0, %arg15 = %89, %arg16 = %90, %arg17 = %c0) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index) {
      %163 = arith.addi %arg4, %c1 : index
      %164 = arith.addi %arg5, %c1 : index
      %165 = arith.addi %arg3, %c4 : index
      %166 = rmem.rdma %arg4, %42[%165] %c196608 4 %c0 {map = #map8, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      %167 = rmem.slot %arg4 {mem = "t4"} : (index) -> memref<1x196608xf32>
      rmem.sync %81 -> %arg8 : <i64>, index
      affine.for %arg18 = 0 to 1 {
        affine.for %arg19 = 0 to 12 {
          affine.for %arg20 = 0 to 256 {
            affine.for %arg21 = 0 to 64 {
              %170 = affine.load %arg6[%arg18, %arg19 * 16384 + %arg20 * 64 + %arg21] : memref<1x196608xf32>
              affine.store %170, %arg7[%arg18, %arg19 * 16384 + %arg20 + %arg21 * 256] : memref<1x196608xf32>
            }
          }
        }
      }
      %168 = rmem.wrid : index
      %169 = rmem.rdma %arg5, %80[%arg3] %c196608 0 %168 {map = #map8, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %82 -> %168 : <i64>, index
      affine.yield %163, %164, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %166, %167, %c0 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index
    }
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
    %92 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %92 : !llvm.ptr<i64>
    %93 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %93 : !llvm.ptr<i64>
    %94 = rmem.wrid : index
    %95 = rmem.rdma %c0, %80[%c0] %c196608 4 %94 {map = #map8, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
    %96 = rmem.wrid : index
    %97 = rmem.rdma %c1, %80[%c1] %c196608 4 %96 {map = #map8, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
    %98 = rmem.wrid : index
    %99 = rmem.rdma %c2, %80[%c2] %c196608 4 %98 {map = #map8, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
    %100 = rmem.wrid : index
    %101 = rmem.rdma %c3, %80[%c3] %c196608 4 %100 {map = #map8, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
    %102:10 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %95, %arg7 = %94, %arg8 = %97, %arg9 = %96, %arg10 = %99, %arg11 = %98, %arg12 = %101, %arg13 = %100) -> (index, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index) {
      %163 = arith.addi %arg4, %c1 : index
      %164 = arith.addi %arg5, %c1 : index
      %165 = arith.addi %arg3, %c4 : index
      %166 = rmem.wrid : index
      %167 = rmem.rdma %arg4, %80[%165] %c196608 4 %166 {map = #map8, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %92 -> %arg7 : <i64>, index
      affine.for %arg14 = 0 to 1 {
        %168 = affine.apply #map9(%arg3, %arg14)
        affine.for %arg15 = 0 to 12 {
          affine.for %arg16 = 0 to 1 {
            affine.for %arg17 = 0 to 256 step 8 {
              affine.for %arg18 = 0 to 64 step 8 {
                %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
                affine.for %arg19 = 0 to 1 {
                  %169 = arith.addi %arg19, %arg16 : index
                  %170 = vector.load %alloc_60[%168, %arg15, %169, %arg17] : memref<64x12x1x256xf32>, vector<8xf32>
                  affine.store %170, %alloca[0] : memref<1xvector<8xf32>>
                  %171 = memref.load %reinterpret_cast_57[%168, %arg15, %169, %arg18] : memref<64x12x1x64xf32>
                  %172 = vector.broadcast %171 : f32 to vector<8xf32>
                  %173 = affine.apply #map10(%arg15, %arg17, %arg18)
                  %174 = vector.load %arg6[%arg14, %173] : memref<1x196608xf32>, vector<8xf32>
                  %175 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %176 = vector.fma %172, %174, %175 : vector<8xf32>
                  affine.store %176, %alloca[0] : memref<1xvector<8xf32>>
                  %177 = arith.addi %arg18, %c1 : index
                  %178 = memref.load %reinterpret_cast_57[%168, %arg15, %169, %177] : memref<64x12x1x64xf32>
                  %179 = vector.broadcast %178 : f32 to vector<8xf32>
                  %180 = affine.apply #map11(%arg15, %arg17, %arg18)
                  %181 = vector.load %arg6[%arg14, %180] : memref<1x196608xf32>, vector<8xf32>
                  %182 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %183 = vector.fma %179, %181, %182 : vector<8xf32>
                  affine.store %183, %alloca[0] : memref<1xvector<8xf32>>
                  %184 = arith.addi %arg18, %c2 : index
                  %185 = memref.load %reinterpret_cast_57[%168, %arg15, %169, %184] : memref<64x12x1x64xf32>
                  %186 = vector.broadcast %185 : f32 to vector<8xf32>
                  %187 = affine.apply #map12(%arg15, %arg17, %arg18)
                  %188 = vector.load %arg6[%arg14, %187] : memref<1x196608xf32>, vector<8xf32>
                  %189 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %190 = vector.fma %186, %188, %189 : vector<8xf32>
                  affine.store %190, %alloca[0] : memref<1xvector<8xf32>>
                  %191 = arith.addi %arg18, %c3 : index
                  %192 = memref.load %reinterpret_cast_57[%168, %arg15, %169, %191] : memref<64x12x1x64xf32>
                  %193 = vector.broadcast %192 : f32 to vector<8xf32>
                  %194 = affine.apply #map13(%arg15, %arg17, %arg18)
                  %195 = vector.load %arg6[%arg14, %194] : memref<1x196608xf32>, vector<8xf32>
                  %196 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %197 = vector.fma %193, %195, %196 : vector<8xf32>
                  affine.store %197, %alloca[0] : memref<1xvector<8xf32>>
                  %198 = arith.addi %arg18, %c4 : index
                  %199 = memref.load %reinterpret_cast_57[%168, %arg15, %169, %198] : memref<64x12x1x64xf32>
                  %200 = vector.broadcast %199 : f32 to vector<8xf32>
                  %201 = affine.apply #map14(%arg15, %arg17, %arg18)
                  %202 = vector.load %arg6[%arg14, %201] : memref<1x196608xf32>, vector<8xf32>
                  %203 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %204 = vector.fma %200, %202, %203 : vector<8xf32>
                  affine.store %204, %alloca[0] : memref<1xvector<8xf32>>
                  %205 = arith.addi %arg18, %c5 : index
                  %206 = memref.load %reinterpret_cast_57[%168, %arg15, %169, %205] : memref<64x12x1x64xf32>
                  %207 = vector.broadcast %206 : f32 to vector<8xf32>
                  %208 = affine.apply #map15(%arg15, %arg17, %arg18)
                  %209 = vector.load %arg6[%arg14, %208] : memref<1x196608xf32>, vector<8xf32>
                  %210 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %211 = vector.fma %207, %209, %210 : vector<8xf32>
                  affine.store %211, %alloca[0] : memref<1xvector<8xf32>>
                  %212 = arith.addi %arg18, %c6 : index
                  %213 = memref.load %reinterpret_cast_57[%168, %arg15, %169, %212] : memref<64x12x1x64xf32>
                  %214 = vector.broadcast %213 : f32 to vector<8xf32>
                  %215 = affine.apply #map16(%arg15, %arg17, %arg18)
                  %216 = vector.load %arg6[%arg14, %215] : memref<1x196608xf32>, vector<8xf32>
                  %217 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %218 = vector.fma %214, %216, %217 : vector<8xf32>
                  affine.store %218, %alloca[0] : memref<1xvector<8xf32>>
                  %219 = arith.addi %arg18, %c7 : index
                  %220 = memref.load %reinterpret_cast_57[%168, %arg15, %169, %219] : memref<64x12x1x64xf32>
                  %221 = vector.broadcast %220 : f32 to vector<8xf32>
                  %222 = affine.apply #map17(%arg15, %arg17, %arg18)
                  %223 = vector.load %arg6[%arg14, %222] : memref<1x196608xf32>, vector<8xf32>
                  %224 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %225 = vector.fma %221, %223, %224 : vector<8xf32>
                  affine.store %225, %alloca[0] : memref<1xvector<8xf32>>
                  %226 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  vector.store %226, %alloc_60[%168, %arg15, %169, %arg17] : memref<64x12x1x256xf32>, vector<8xf32>
                }
              }
            }
          }
        }
      }
      affine.yield %163, %164, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %167, %166 : index, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index
    }
    %alloc_61 = memref.alloc() : memref<f32>
    %cast_62 = memref.cast %alloc_61 : memref<f32> to memref<*xf32>
    %103 = llvm.mlir.addressof @constant_27 : !llvm.ptr<array<12 x i8>>
    %104 = llvm.getelementptr %103[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%104, %cast_62) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_63 = memref.alloc() : memref<f32>
    %cast_64 = memref.cast %alloc_63 : memref<f32> to memref<*xf32>
    %105 = llvm.mlir.addressof @constant_28 : !llvm.ptr<array<12 x i8>>
    %106 = llvm.getelementptr %105[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%106, %cast_64) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_65 = memref.alloc() : memref<f32>
    %107 = affine.load %alloc_61[] : memref<f32>
    %108 = affine.load %alloc_63[] : memref<f32>
    %109 = math.powf %107, %108 : f32
    affine.store %109, %alloc_65[] : memref<f32>
    %alloc_66 = memref.alloc() : memref<f32>
    affine.store %cst_1, %alloc_66[] : memref<f32>
    %alloc_67 = memref.alloc() : memref<f32>
    %110 = affine.load %alloc_66[] : memref<f32>
    %111 = affine.load %alloc_65[] : memref<f32>
    %112 = arith.addf %110, %111 : f32
    affine.store %112, %alloc_67[] : memref<f32>
    %alloc_68 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %163 = affine.load %alloc_60[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %164 = affine.load %alloc_67[] : memref<f32>
            %165 = arith.divf %163, %164 : f32
            affine.store %165, %alloc_68[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_69 = memref.alloc() : memref<f32>
    %cast_70 = memref.cast %alloc_69 : memref<f32> to memref<*xf32>
    %113 = llvm.mlir.addressof @constant_30 : !llvm.ptr<array<12 x i8>>
    %114 = llvm.getelementptr %113[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%114, %cast_70) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_71 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %163 = affine.load %alloc_30[0, 0, %arg5, %arg6] : memref<1x1x1x256xi1>
            %164 = affine.load %alloc_68[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %165 = affine.load %alloc_69[] : memref<f32>
            %166 = arith.select %163, %164, %165 : f32
            affine.store %166, %alloc_71[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
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
            %165 = affine.load %alloc_74[] : memref<f32>
            %166 = affine.load %alloc_71[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %167 = arith.cmpf ogt, %165, %166 : f32
            %168 = arith.select %167, %165, %166 : f32
            affine.store %168, %alloc_74[] : memref<f32>
          }
          %163 = affine.load %alloc_74[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %165 = affine.load %alloc_73[] : memref<f32>
            %166 = affine.load %alloc_71[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %167 = arith.subf %166, %163 : f32
            %168 = math.exp %167 : f32
            %169 = arith.addf %165, %168 : f32
            affine.store %169, %alloc_73[] : memref<f32>
            affine.store %168, %alloc_72[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
          %164 = affine.load %alloc_73[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %165 = affine.load %alloc_72[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %166 = arith.divf %165, %164 : f32
            affine.store %166, %alloc_72[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
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
    %115 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %115 : !llvm.ptr<i64>
    %116 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %116 : !llvm.ptr<i64>
    %117 = rmem.wrid : index
    %118 = rmem.rdma %c0, %61[%c0] %c196608 4 %117 {map = #map8, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %119 = rmem.wrid : index
    %120 = rmem.rdma %c1, %61[%c1] %c196608 4 %119 {map = #map8, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %121 = rmem.wrid : index
    %122 = rmem.rdma %c2, %61[%c2] %c196608 4 %121 {map = #map8, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %123 = rmem.wrid : index
    %124 = rmem.rdma %c3, %61[%c3] %c196608 4 %123 {map = #map8, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %125:10 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %118, %arg7 = %117, %arg8 = %120, %arg9 = %119, %arg10 = %122, %arg11 = %121, %arg12 = %124, %arg13 = %123) -> (index, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index) {
      %163 = arith.addi %arg4, %c1 : index
      %164 = arith.addi %arg5, %c1 : index
      %165 = arith.addi %arg3, %c4 : index
      %166 = rmem.wrid : index
      %167 = rmem.rdma %arg4, %61[%165] %c196608 4 %166 {map = #map8, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %115 -> %arg7 : <i64>, index
      affine.for %arg14 = 0 to 1 {
        %168 = affine.apply #map9(%arg3, %arg14)
        affine.for %arg15 = 0 to 12 {
          affine.for %arg16 = 0 to 1 {
            affine.for %arg17 = 0 to 64 step 8 {
              affine.for %arg18 = 0 to 256 step 8 {
                %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
                affine.for %arg19 = 0 to 1 {
                  %169 = arith.addi %arg19, %arg16 : index
                  %170 = vector.load %alloc_75[%168, %arg15, %169, %arg17] : memref<64x12x1x64xf32>, vector<8xf32>
                  affine.store %170, %alloca[0] : memref<1xvector<8xf32>>
                  %171 = memref.load %alloc_72[%168, %arg15, %169, %arg18] : memref<64x12x1x256xf32>
                  %172 = vector.broadcast %171 : f32 to vector<8xf32>
                  %173 = affine.apply #map18(%arg15, %arg17, %arg18)
                  %174 = vector.load %arg6[%arg14, %173] : memref<1x196608xf32>, vector<8xf32>
                  %175 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %176 = vector.fma %172, %174, %175 : vector<8xf32>
                  affine.store %176, %alloca[0] : memref<1xvector<8xf32>>
                  %177 = arith.addi %arg18, %c1 : index
                  %178 = memref.load %alloc_72[%168, %arg15, %169, %177] : memref<64x12x1x256xf32>
                  %179 = vector.broadcast %178 : f32 to vector<8xf32>
                  %180 = affine.apply #map19(%arg15, %arg17, %arg18)
                  %181 = vector.load %arg6[%arg14, %180] : memref<1x196608xf32>, vector<8xf32>
                  %182 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %183 = vector.fma %179, %181, %182 : vector<8xf32>
                  affine.store %183, %alloca[0] : memref<1xvector<8xf32>>
                  %184 = arith.addi %arg18, %c2 : index
                  %185 = memref.load %alloc_72[%168, %arg15, %169, %184] : memref<64x12x1x256xf32>
                  %186 = vector.broadcast %185 : f32 to vector<8xf32>
                  %187 = affine.apply #map20(%arg15, %arg17, %arg18)
                  %188 = vector.load %arg6[%arg14, %187] : memref<1x196608xf32>, vector<8xf32>
                  %189 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %190 = vector.fma %186, %188, %189 : vector<8xf32>
                  affine.store %190, %alloca[0] : memref<1xvector<8xf32>>
                  %191 = arith.addi %arg18, %c3 : index
                  %192 = memref.load %alloc_72[%168, %arg15, %169, %191] : memref<64x12x1x256xf32>
                  %193 = vector.broadcast %192 : f32 to vector<8xf32>
                  %194 = affine.apply #map21(%arg15, %arg17, %arg18)
                  %195 = vector.load %arg6[%arg14, %194] : memref<1x196608xf32>, vector<8xf32>
                  %196 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %197 = vector.fma %193, %195, %196 : vector<8xf32>
                  affine.store %197, %alloca[0] : memref<1xvector<8xf32>>
                  %198 = arith.addi %arg18, %c4 : index
                  %199 = memref.load %alloc_72[%168, %arg15, %169, %198] : memref<64x12x1x256xf32>
                  %200 = vector.broadcast %199 : f32 to vector<8xf32>
                  %201 = affine.apply #map22(%arg15, %arg17, %arg18)
                  %202 = vector.load %arg6[%arg14, %201] : memref<1x196608xf32>, vector<8xf32>
                  %203 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %204 = vector.fma %200, %202, %203 : vector<8xf32>
                  affine.store %204, %alloca[0] : memref<1xvector<8xf32>>
                  %205 = arith.addi %arg18, %c5 : index
                  %206 = memref.load %alloc_72[%168, %arg15, %169, %205] : memref<64x12x1x256xf32>
                  %207 = vector.broadcast %206 : f32 to vector<8xf32>
                  %208 = affine.apply #map23(%arg15, %arg17, %arg18)
                  %209 = vector.load %arg6[%arg14, %208] : memref<1x196608xf32>, vector<8xf32>
                  %210 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %211 = vector.fma %207, %209, %210 : vector<8xf32>
                  affine.store %211, %alloca[0] : memref<1xvector<8xf32>>
                  %212 = arith.addi %arg18, %c6 : index
                  %213 = memref.load %alloc_72[%168, %arg15, %169, %212] : memref<64x12x1x256xf32>
                  %214 = vector.broadcast %213 : f32 to vector<8xf32>
                  %215 = affine.apply #map24(%arg15, %arg17, %arg18)
                  %216 = vector.load %arg6[%arg14, %215] : memref<1x196608xf32>, vector<8xf32>
                  %217 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %218 = vector.fma %214, %216, %217 : vector<8xf32>
                  affine.store %218, %alloca[0] : memref<1xvector<8xf32>>
                  %219 = arith.addi %arg18, %c7 : index
                  %220 = memref.load %alloc_72[%168, %arg15, %169, %219] : memref<64x12x1x256xf32>
                  %221 = vector.broadcast %220 : f32 to vector<8xf32>
                  %222 = affine.apply #map25(%arg15, %arg17, %arg18)
                  %223 = vector.load %arg6[%arg14, %222] : memref<1x196608xf32>, vector<8xf32>
                  %224 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %225 = vector.fma %221, %223, %224 : vector<8xf32>
                  affine.store %225, %alloca[0] : memref<1xvector<8xf32>>
                  %226 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  vector.store %226, %alloc_75[%168, %arg15, %169, %arg17] : memref<64x12x1x64xf32>, vector<8xf32>
                }
              }
            }
          }
        }
      }
      affine.yield %163, %164, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %167, %166 : index, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index
    }
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
            %163 = affine.load %alloc_10[%arg4 + %arg5, %arg3 + %arg6] : memref<768x768xf32>
            affine.store %163, %alloc_79[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %163 = affine.load %reinterpret_cast_76[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %163, %alloc_78[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %163 = affine.apply #map3(%arg5, %arg7)
              %164 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %165 = vector.load %alloc_77[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %165, %alloca[0] : memref<4xvector<16xf32>>
              %166 = arith.addi %arg7, %c1 : index
              %167 = vector.load %alloc_77[%166, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %167, %alloca[1] : memref<4xvector<16xf32>>
              %168 = arith.addi %arg7, %c2 : index
              %169 = vector.load %alloc_77[%168, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %169, %alloca[2] : memref<4xvector<16xf32>>
              %170 = arith.addi %arg7, %c3 : index
              %171 = vector.load %alloc_77[%170, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %171, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %176 = memref.load %alloc_78[%163, %arg8] : memref<32x256xf32>
                %177 = vector.broadcast %176 : f32 to vector<16xf32>
                %178 = vector.load %alloc_79[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %179 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %180 = vector.fma %177, %178, %179 : vector<16xf32>
                affine.store %180, %alloca[0] : memref<4xvector<16xf32>>
                %181 = affine.apply #map4(%arg8)
                %182 = memref.load %alloc_78[%163, %181] : memref<32x256xf32>
                %183 = vector.broadcast %182 : f32 to vector<16xf32>
                %184 = vector.load %alloc_79[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %185 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %186 = vector.fma %183, %184, %185 : vector<16xf32>
                affine.store %186, %alloca[0] : memref<4xvector<16xf32>>
                %187 = affine.apply #map5(%arg8)
                %188 = memref.load %alloc_78[%163, %187] : memref<32x256xf32>
                %189 = vector.broadcast %188 : f32 to vector<16xf32>
                %190 = vector.load %alloc_79[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %191 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %192 = vector.fma %189, %190, %191 : vector<16xf32>
                affine.store %192, %alloca[0] : memref<4xvector<16xf32>>
                %193 = affine.apply #map6(%arg8)
                %194 = memref.load %alloc_78[%163, %193] : memref<32x256xf32>
                %195 = vector.broadcast %194 : f32 to vector<16xf32>
                %196 = vector.load %alloc_79[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %197 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %198 = vector.fma %195, %196, %197 : vector<16xf32>
                affine.store %198, %alloca[0] : memref<4xvector<16xf32>>
                %199 = arith.addi %163, %c1 : index
                %200 = memref.load %alloc_78[%199, %arg8] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_79[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %203 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                affine.store %204, %alloca[1] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_78[%199, %181] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_79[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %208 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                affine.store %209, %alloca[1] : memref<4xvector<16xf32>>
                %210 = memref.load %alloc_78[%199, %187] : memref<32x256xf32>
                %211 = vector.broadcast %210 : f32 to vector<16xf32>
                %212 = vector.load %alloc_79[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %213 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %214 = vector.fma %211, %212, %213 : vector<16xf32>
                affine.store %214, %alloca[1] : memref<4xvector<16xf32>>
                %215 = memref.load %alloc_78[%199, %193] : memref<32x256xf32>
                %216 = vector.broadcast %215 : f32 to vector<16xf32>
                %217 = vector.load %alloc_79[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %218 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %219 = vector.fma %216, %217, %218 : vector<16xf32>
                affine.store %219, %alloca[1] : memref<4xvector<16xf32>>
                %220 = arith.addi %163, %c2 : index
                %221 = memref.load %alloc_78[%220, %arg8] : memref<32x256xf32>
                %222 = vector.broadcast %221 : f32 to vector<16xf32>
                %223 = vector.load %alloc_79[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %224 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %225 = vector.fma %222, %223, %224 : vector<16xf32>
                affine.store %225, %alloca[2] : memref<4xvector<16xf32>>
                %226 = memref.load %alloc_78[%220, %181] : memref<32x256xf32>
                %227 = vector.broadcast %226 : f32 to vector<16xf32>
                %228 = vector.load %alloc_79[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %229 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %230 = vector.fma %227, %228, %229 : vector<16xf32>
                affine.store %230, %alloca[2] : memref<4xvector<16xf32>>
                %231 = memref.load %alloc_78[%220, %187] : memref<32x256xf32>
                %232 = vector.broadcast %231 : f32 to vector<16xf32>
                %233 = vector.load %alloc_79[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %234 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %235 = vector.fma %232, %233, %234 : vector<16xf32>
                affine.store %235, %alloca[2] : memref<4xvector<16xf32>>
                %236 = memref.load %alloc_78[%220, %193] : memref<32x256xf32>
                %237 = vector.broadcast %236 : f32 to vector<16xf32>
                %238 = vector.load %alloc_79[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %239 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %240 = vector.fma %237, %238, %239 : vector<16xf32>
                affine.store %240, %alloca[2] : memref<4xvector<16xf32>>
                %241 = arith.addi %163, %c3 : index
                %242 = memref.load %alloc_78[%241, %arg8] : memref<32x256xf32>
                %243 = vector.broadcast %242 : f32 to vector<16xf32>
                %244 = vector.load %alloc_79[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %245 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %246 = vector.fma %243, %244, %245 : vector<16xf32>
                affine.store %246, %alloca[3] : memref<4xvector<16xf32>>
                %247 = memref.load %alloc_78[%241, %181] : memref<32x256xf32>
                %248 = vector.broadcast %247 : f32 to vector<16xf32>
                %249 = vector.load %alloc_79[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %250 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %251 = vector.fma %248, %249, %250 : vector<16xf32>
                affine.store %251, %alloca[3] : memref<4xvector<16xf32>>
                %252 = memref.load %alloc_78[%241, %187] : memref<32x256xf32>
                %253 = vector.broadcast %252 : f32 to vector<16xf32>
                %254 = vector.load %alloc_79[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %255 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %256 = vector.fma %253, %254, %255 : vector<16xf32>
                affine.store %256, %alloca[3] : memref<4xvector<16xf32>>
                %257 = memref.load %alloc_78[%241, %193] : memref<32x256xf32>
                %258 = vector.broadcast %257 : f32 to vector<16xf32>
                %259 = vector.load %alloc_79[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %260 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %261 = vector.fma %258, %259, %260 : vector<16xf32>
                affine.store %261, %alloca[3] : memref<4xvector<16xf32>>
              }
              %172 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %172, %alloc_77[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %173 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %173, %alloc_77[%166, %arg6] : memref<64x768xf32>, vector<16xf32>
              %174 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %174, %alloc_77[%168, %arg6] : memref<64x768xf32>, vector<16xf32>
              %175 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %175, %alloc_77[%170, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %163 = affine.load %alloc_77[%arg3, %arg4] : memref<64x768xf32>
        %164 = affine.load %alloc_12[%arg4] : memref<768xf32>
        %165 = arith.addf %163, %164 : f32
        affine.store %165, %alloc_77[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_80 = memref.reinterpret_cast %alloc_77 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_81 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %reinterpret_cast_80[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_32[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_81[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_82 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_81[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_33[0, %arg4, %arg5] : memref<1x1x768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_82[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %163 = affine.load %alloc_82[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_83[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.addf %164, %163 : f32
          affine.store %165, %alloc_83[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_83[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = arith.divf %163, %cst : f32
          affine.store %164, %alloc_83[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_84 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_82[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_83[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.subf %163, %164 : f32
          affine.store %165, %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_85 = memref.alloc() : memref<f32>
    %cast_86 = memref.cast %alloc_85 : memref<f32> to memref<*xf32>
    %126 = llvm.mlir.addressof @constant_33 : !llvm.ptr<array<12 x i8>>
    %127 = llvm.getelementptr %126[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%127, %cast_86) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_87 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_85[] : memref<f32>
          %165 = math.powf %163, %164 : f32
          affine.store %165, %alloc_87[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %163 = affine.load %alloc_87[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_88[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.addf %164, %163 : f32
          affine.store %165, %alloc_88[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_88[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = arith.divf %163, %cst : f32
          affine.store %164, %alloc_88[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_89 = memref.alloc() : memref<f32>
    %cast_90 = memref.cast %alloc_89 : memref<f32> to memref<*xf32>
    %128 = llvm.mlir.addressof @constant_34 : !llvm.ptr<array<12 x i8>>
    %129 = llvm.getelementptr %128[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%129, %cast_90) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_91 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_88[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = affine.load %alloc_89[] : memref<f32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_91[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_92 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_91[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = math.sqrt %163 : f32
          affine.store %164, %alloc_92[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_93 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_92[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.divf %163, %164 : f32
          affine.store %165, %alloc_93[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_94 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_93[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_14[%arg5] : memref<768xf32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_94[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_95 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_94[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_16[%arg5] : memref<768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_95[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
            %163 = affine.load %alloc_18[%arg4 + %arg5, %arg3 + %arg6] : memref<768x3072xf32>
            affine.store %163, %alloc_99[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %163 = affine.load %reinterpret_cast_96[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %163, %alloc_98[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %163 = affine.apply #map3(%arg5, %arg7)
              %164 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %165 = vector.load %alloc_97[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %165, %alloca[0] : memref<4xvector<16xf32>>
              %166 = arith.addi %arg7, %c1 : index
              %167 = vector.load %alloc_97[%166, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %167, %alloca[1] : memref<4xvector<16xf32>>
              %168 = arith.addi %arg7, %c2 : index
              %169 = vector.load %alloc_97[%168, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %169, %alloca[2] : memref<4xvector<16xf32>>
              %170 = arith.addi %arg7, %c3 : index
              %171 = vector.load %alloc_97[%170, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %171, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %176 = memref.load %alloc_98[%163, %arg8] : memref<32x256xf32>
                %177 = vector.broadcast %176 : f32 to vector<16xf32>
                %178 = vector.load %alloc_99[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %179 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %180 = vector.fma %177, %178, %179 : vector<16xf32>
                affine.store %180, %alloca[0] : memref<4xvector<16xf32>>
                %181 = affine.apply #map4(%arg8)
                %182 = memref.load %alloc_98[%163, %181] : memref<32x256xf32>
                %183 = vector.broadcast %182 : f32 to vector<16xf32>
                %184 = vector.load %alloc_99[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %185 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %186 = vector.fma %183, %184, %185 : vector<16xf32>
                affine.store %186, %alloca[0] : memref<4xvector<16xf32>>
                %187 = affine.apply #map5(%arg8)
                %188 = memref.load %alloc_98[%163, %187] : memref<32x256xf32>
                %189 = vector.broadcast %188 : f32 to vector<16xf32>
                %190 = vector.load %alloc_99[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %191 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %192 = vector.fma %189, %190, %191 : vector<16xf32>
                affine.store %192, %alloca[0] : memref<4xvector<16xf32>>
                %193 = affine.apply #map6(%arg8)
                %194 = memref.load %alloc_98[%163, %193] : memref<32x256xf32>
                %195 = vector.broadcast %194 : f32 to vector<16xf32>
                %196 = vector.load %alloc_99[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %197 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %198 = vector.fma %195, %196, %197 : vector<16xf32>
                affine.store %198, %alloca[0] : memref<4xvector<16xf32>>
                %199 = arith.addi %163, %c1 : index
                %200 = memref.load %alloc_98[%199, %arg8] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_99[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %203 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                affine.store %204, %alloca[1] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_98[%199, %181] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_99[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %208 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                affine.store %209, %alloca[1] : memref<4xvector<16xf32>>
                %210 = memref.load %alloc_98[%199, %187] : memref<32x256xf32>
                %211 = vector.broadcast %210 : f32 to vector<16xf32>
                %212 = vector.load %alloc_99[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %213 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %214 = vector.fma %211, %212, %213 : vector<16xf32>
                affine.store %214, %alloca[1] : memref<4xvector<16xf32>>
                %215 = memref.load %alloc_98[%199, %193] : memref<32x256xf32>
                %216 = vector.broadcast %215 : f32 to vector<16xf32>
                %217 = vector.load %alloc_99[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %218 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %219 = vector.fma %216, %217, %218 : vector<16xf32>
                affine.store %219, %alloca[1] : memref<4xvector<16xf32>>
                %220 = arith.addi %163, %c2 : index
                %221 = memref.load %alloc_98[%220, %arg8] : memref<32x256xf32>
                %222 = vector.broadcast %221 : f32 to vector<16xf32>
                %223 = vector.load %alloc_99[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %224 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %225 = vector.fma %222, %223, %224 : vector<16xf32>
                affine.store %225, %alloca[2] : memref<4xvector<16xf32>>
                %226 = memref.load %alloc_98[%220, %181] : memref<32x256xf32>
                %227 = vector.broadcast %226 : f32 to vector<16xf32>
                %228 = vector.load %alloc_99[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %229 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %230 = vector.fma %227, %228, %229 : vector<16xf32>
                affine.store %230, %alloca[2] : memref<4xvector<16xf32>>
                %231 = memref.load %alloc_98[%220, %187] : memref<32x256xf32>
                %232 = vector.broadcast %231 : f32 to vector<16xf32>
                %233 = vector.load %alloc_99[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %234 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %235 = vector.fma %232, %233, %234 : vector<16xf32>
                affine.store %235, %alloca[2] : memref<4xvector<16xf32>>
                %236 = memref.load %alloc_98[%220, %193] : memref<32x256xf32>
                %237 = vector.broadcast %236 : f32 to vector<16xf32>
                %238 = vector.load %alloc_99[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %239 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %240 = vector.fma %237, %238, %239 : vector<16xf32>
                affine.store %240, %alloca[2] : memref<4xvector<16xf32>>
                %241 = arith.addi %163, %c3 : index
                %242 = memref.load %alloc_98[%241, %arg8] : memref<32x256xf32>
                %243 = vector.broadcast %242 : f32 to vector<16xf32>
                %244 = vector.load %alloc_99[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %245 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %246 = vector.fma %243, %244, %245 : vector<16xf32>
                affine.store %246, %alloca[3] : memref<4xvector<16xf32>>
                %247 = memref.load %alloc_98[%241, %181] : memref<32x256xf32>
                %248 = vector.broadcast %247 : f32 to vector<16xf32>
                %249 = vector.load %alloc_99[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %250 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %251 = vector.fma %248, %249, %250 : vector<16xf32>
                affine.store %251, %alloca[3] : memref<4xvector<16xf32>>
                %252 = memref.load %alloc_98[%241, %187] : memref<32x256xf32>
                %253 = vector.broadcast %252 : f32 to vector<16xf32>
                %254 = vector.load %alloc_99[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %255 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %256 = vector.fma %253, %254, %255 : vector<16xf32>
                affine.store %256, %alloca[3] : memref<4xvector<16xf32>>
                %257 = memref.load %alloc_98[%241, %193] : memref<32x256xf32>
                %258 = vector.broadcast %257 : f32 to vector<16xf32>
                %259 = vector.load %alloc_99[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %260 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %261 = vector.fma %258, %259, %260 : vector<16xf32>
                affine.store %261, %alloca[3] : memref<4xvector<16xf32>>
              }
              %172 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %172, %alloc_97[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %173 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %173, %alloc_97[%166, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %174 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %174, %alloc_97[%168, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %175 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %175, %alloc_97[%170, %arg6] : memref<64x3072xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 3072 {
        %163 = affine.load %alloc_97[%arg3, %arg4] : memref<64x3072xf32>
        %164 = affine.load %alloc_20[%arg4] : memref<3072xf32>
        %165 = arith.addf %163, %164 : f32
        affine.store %165, %alloc_97[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %reinterpret_cast_100 = memref.reinterpret_cast %alloc_97 to offset: [0], sizes: [64, 1, 3072], strides: [3072, 3072, 1] : memref<64x3072xf32> to memref<64x1x3072xf32>
    %alloc_101 = memref.alloc() : memref<f32>
    %cast_102 = memref.cast %alloc_101 : memref<f32> to memref<*xf32>
    %130 = llvm.mlir.addressof @constant_37 : !llvm.ptr<array<12 x i8>>
    %131 = llvm.getelementptr %130[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%131, %cast_102) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_103 = memref.alloc() : memref<f32>
    %cast_104 = memref.cast %alloc_103 : memref<f32> to memref<*xf32>
    %132 = llvm.mlir.addressof @constant_38 : !llvm.ptr<array<12 x i8>>
    %133 = llvm.getelementptr %132[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%133, %cast_104) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_105 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %reinterpret_cast_100[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_103[] : memref<f32>
          %165 = math.powf %163, %164 : f32
          affine.store %165, %alloc_105[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_106 = memref.alloc() : memref<f32>
    %cast_107 = memref.cast %alloc_106 : memref<f32> to memref<*xf32>
    %134 = llvm.mlir.addressof @constant_39 : !llvm.ptr<array<12 x i8>>
    %135 = llvm.getelementptr %134[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%135, %cast_107) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_108 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %alloc_105[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_106[] : memref<f32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_108[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_109 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %reinterpret_cast_100[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_108[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_109[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_110 = memref.alloc() : memref<f32>
    %cast_111 = memref.cast %alloc_110 : memref<f32> to memref<*xf32>
    %136 = llvm.mlir.addressof @constant_40 : !llvm.ptr<array<12 x i8>>
    %137 = llvm.getelementptr %136[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%137, %cast_111) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_112 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %alloc_109[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_110[] : memref<f32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_112[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_113 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %alloc_112[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = math.tanh %163 : f32
          affine.store %164, %alloc_113[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_114 = memref.alloc() : memref<f32>
    %cast_115 = memref.cast %alloc_114 : memref<f32> to memref<*xf32>
    %138 = llvm.mlir.addressof @constant_41 : !llvm.ptr<array<12 x i8>>
    %139 = llvm.getelementptr %138[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%139, %cast_115) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_116 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %alloc_113[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_114[] : memref<f32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_116[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_117 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %reinterpret_cast_100[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_116[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_117[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_118 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %alloc_117[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_101[] : memref<f32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_118[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
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
            %163 = affine.load %alloc_22[%arg4 + %arg5, %arg3 + %arg6] : memref<3072x768xf32>
            affine.store %163, %alloc_122[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %163 = affine.load %reinterpret_cast_119[%arg5 + %arg6, %arg4 + %arg7] : memref<64x3072xf32>
              affine.store %163, %alloc_121[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %163 = affine.apply #map3(%arg5, %arg7)
              %164 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %165 = vector.load %alloc_120[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %165, %alloca[0] : memref<4xvector<16xf32>>
              %166 = arith.addi %arg7, %c1 : index
              %167 = vector.load %alloc_120[%166, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %167, %alloca[1] : memref<4xvector<16xf32>>
              %168 = arith.addi %arg7, %c2 : index
              %169 = vector.load %alloc_120[%168, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %169, %alloca[2] : memref<4xvector<16xf32>>
              %170 = arith.addi %arg7, %c3 : index
              %171 = vector.load %alloc_120[%170, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %171, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %176 = memref.load %alloc_121[%163, %arg8] : memref<32x256xf32>
                %177 = vector.broadcast %176 : f32 to vector<16xf32>
                %178 = vector.load %alloc_122[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %179 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %180 = vector.fma %177, %178, %179 : vector<16xf32>
                affine.store %180, %alloca[0] : memref<4xvector<16xf32>>
                %181 = affine.apply #map4(%arg8)
                %182 = memref.load %alloc_121[%163, %181] : memref<32x256xf32>
                %183 = vector.broadcast %182 : f32 to vector<16xf32>
                %184 = vector.load %alloc_122[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %185 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %186 = vector.fma %183, %184, %185 : vector<16xf32>
                affine.store %186, %alloca[0] : memref<4xvector<16xf32>>
                %187 = affine.apply #map5(%arg8)
                %188 = memref.load %alloc_121[%163, %187] : memref<32x256xf32>
                %189 = vector.broadcast %188 : f32 to vector<16xf32>
                %190 = vector.load %alloc_122[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %191 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %192 = vector.fma %189, %190, %191 : vector<16xf32>
                affine.store %192, %alloca[0] : memref<4xvector<16xf32>>
                %193 = affine.apply #map6(%arg8)
                %194 = memref.load %alloc_121[%163, %193] : memref<32x256xf32>
                %195 = vector.broadcast %194 : f32 to vector<16xf32>
                %196 = vector.load %alloc_122[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %197 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %198 = vector.fma %195, %196, %197 : vector<16xf32>
                affine.store %198, %alloca[0] : memref<4xvector<16xf32>>
                %199 = arith.addi %163, %c1 : index
                %200 = memref.load %alloc_121[%199, %arg8] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_122[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %203 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                affine.store %204, %alloca[1] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_121[%199, %181] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_122[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %208 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                affine.store %209, %alloca[1] : memref<4xvector<16xf32>>
                %210 = memref.load %alloc_121[%199, %187] : memref<32x256xf32>
                %211 = vector.broadcast %210 : f32 to vector<16xf32>
                %212 = vector.load %alloc_122[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %213 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %214 = vector.fma %211, %212, %213 : vector<16xf32>
                affine.store %214, %alloca[1] : memref<4xvector<16xf32>>
                %215 = memref.load %alloc_121[%199, %193] : memref<32x256xf32>
                %216 = vector.broadcast %215 : f32 to vector<16xf32>
                %217 = vector.load %alloc_122[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %218 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %219 = vector.fma %216, %217, %218 : vector<16xf32>
                affine.store %219, %alloca[1] : memref<4xvector<16xf32>>
                %220 = arith.addi %163, %c2 : index
                %221 = memref.load %alloc_121[%220, %arg8] : memref<32x256xf32>
                %222 = vector.broadcast %221 : f32 to vector<16xf32>
                %223 = vector.load %alloc_122[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %224 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %225 = vector.fma %222, %223, %224 : vector<16xf32>
                affine.store %225, %alloca[2] : memref<4xvector<16xf32>>
                %226 = memref.load %alloc_121[%220, %181] : memref<32x256xf32>
                %227 = vector.broadcast %226 : f32 to vector<16xf32>
                %228 = vector.load %alloc_122[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %229 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %230 = vector.fma %227, %228, %229 : vector<16xf32>
                affine.store %230, %alloca[2] : memref<4xvector<16xf32>>
                %231 = memref.load %alloc_121[%220, %187] : memref<32x256xf32>
                %232 = vector.broadcast %231 : f32 to vector<16xf32>
                %233 = vector.load %alloc_122[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %234 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %235 = vector.fma %232, %233, %234 : vector<16xf32>
                affine.store %235, %alloca[2] : memref<4xvector<16xf32>>
                %236 = memref.load %alloc_121[%220, %193] : memref<32x256xf32>
                %237 = vector.broadcast %236 : f32 to vector<16xf32>
                %238 = vector.load %alloc_122[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %239 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %240 = vector.fma %237, %238, %239 : vector<16xf32>
                affine.store %240, %alloca[2] : memref<4xvector<16xf32>>
                %241 = arith.addi %163, %c3 : index
                %242 = memref.load %alloc_121[%241, %arg8] : memref<32x256xf32>
                %243 = vector.broadcast %242 : f32 to vector<16xf32>
                %244 = vector.load %alloc_122[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %245 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %246 = vector.fma %243, %244, %245 : vector<16xf32>
                affine.store %246, %alloca[3] : memref<4xvector<16xf32>>
                %247 = memref.load %alloc_121[%241, %181] : memref<32x256xf32>
                %248 = vector.broadcast %247 : f32 to vector<16xf32>
                %249 = vector.load %alloc_122[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %250 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %251 = vector.fma %248, %249, %250 : vector<16xf32>
                affine.store %251, %alloca[3] : memref<4xvector<16xf32>>
                %252 = memref.load %alloc_121[%241, %187] : memref<32x256xf32>
                %253 = vector.broadcast %252 : f32 to vector<16xf32>
                %254 = vector.load %alloc_122[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %255 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %256 = vector.fma %253, %254, %255 : vector<16xf32>
                affine.store %256, %alloca[3] : memref<4xvector<16xf32>>
                %257 = memref.load %alloc_121[%241, %193] : memref<32x256xf32>
                %258 = vector.broadcast %257 : f32 to vector<16xf32>
                %259 = vector.load %alloc_122[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %260 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %261 = vector.fma %258, %259, %260 : vector<16xf32>
                affine.store %261, %alloca[3] : memref<4xvector<16xf32>>
              }
              %172 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %172, %alloc_120[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %173 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %173, %alloc_120[%166, %arg6] : memref<64x768xf32>, vector<16xf32>
              %174 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %174, %alloc_120[%168, %arg6] : memref<64x768xf32>, vector<16xf32>
              %175 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %175, %alloc_120[%170, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %163 = affine.load %alloc_120[%arg3, %arg4] : memref<64x768xf32>
        %164 = affine.load %alloc_24[%arg4] : memref<768xf32>
        %165 = arith.addf %163, %164 : f32
        affine.store %165, %alloc_120[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_123 = memref.reinterpret_cast %alloc_120 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_124 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_81[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %reinterpret_cast_123[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_124[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_125 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_124[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_33[0, %arg4, %arg5] : memref<1x1x768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_125[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %163 = affine.load %alloc_125[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_126[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.addf %164, %163 : f32
          affine.store %165, %alloc_126[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_126[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = arith.divf %163, %cst : f32
          affine.store %164, %alloc_126[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_127 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_125[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_126[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.subf %163, %164 : f32
          affine.store %165, %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_128 = memref.alloc() : memref<f32>
    %cast_129 = memref.cast %alloc_128 : memref<f32> to memref<*xf32>
    %140 = llvm.mlir.addressof @constant_44 : !llvm.ptr<array<12 x i8>>
    %141 = llvm.getelementptr %140[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%141, %cast_129) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_130 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_128[] : memref<f32>
          %165 = math.powf %163, %164 : f32
          affine.store %165, %alloc_130[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %163 = affine.load %alloc_130[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_131[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.addf %164, %163 : f32
          affine.store %165, %alloc_131[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_131[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = arith.divf %163, %cst : f32
          affine.store %164, %alloc_131[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_132 = memref.alloc() : memref<f32>
    %cast_133 = memref.cast %alloc_132 : memref<f32> to memref<*xf32>
    %142 = llvm.mlir.addressof @constant_45 : !llvm.ptr<array<12 x i8>>
    %143 = llvm.getelementptr %142[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%143, %cast_133) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_134 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_131[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = affine.load %alloc_132[] : memref<f32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_134[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_135 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_134[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = math.sqrt %163 : f32
          affine.store %164, %alloc_135[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_136 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_135[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.divf %163, %164 : f32
          affine.store %165, %alloc_136[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_137 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_136[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_26[%arg5] : memref<768xf32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_137[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_138 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_137[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_28[%arg5] : memref<768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_138[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %144 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref5", 0]], alignment = 16 : i64} : <1, memref<64x1x50264xf32>>
    %145 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %145 : !llvm.ptr<i64>
    %146 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %146 : !llvm.ptr<i64>
    %147 = rmem.slot %c0 {mem = "t5"} : (index) -> memref<1x50264xf32>
    %148 = rmem.slot %c1 {mem = "t5"} : (index) -> memref<1x50264xf32>
    %149 = rmem.slot %c2 {mem = "t5"} : (index) -> memref<1x50264xf32>
    %150 = rmem.slot %c3 {mem = "t5"} : (index) -> memref<1x50264xf32>
    %151:6 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %147, %arg7 = %148, %arg8 = %149, %arg9 = %150) -> (index, index, memref<1x50264xf32>, memref<1x50264xf32>, memref<1x50264xf32>, memref<1x50264xf32>) {
      %163 = arith.addi %arg4, %c1 : index
      %164 = arith.addi %arg5, %c1 : index
      %165 = rmem.slot %arg4 {mem = "t5"} : (index) -> memref<1x50264xf32>
      affine.for %arg10 = 0 to 1 {
        affine.for %arg11 = 0 to 1 {
          affine.for %arg12 = 0 to 50264 {
            affine.store %cst_1, %arg6[%arg10, %arg11 * 50264 + %arg12] : memref<1x50264xf32>
          }
        }
      }
      %166 = rmem.wrid : index
      %167 = rmem.rdma %arg5, %144[%arg3] %c50264 0 %166 {map = #map26, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %146 -> %166 : <i64>, index
      affine.yield %163, %164, %arg7, %arg8, %arg9, %165 : index, index, memref<1x50264xf32>, memref<1x50264xf32>, memref<1x50264xf32>, memref<1x50264xf32>
    }
    %152 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %152 : !llvm.ptr<i64>
    %153 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %153 : !llvm.ptr<i64>
    %154 = rmem.wrid : index
    %155 = rmem.rdma %c0, %144[%c0] %c50264 4 %154 {map = #map26, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %156 = rmem.wrid : index
    %157 = rmem.rdma %c1, %144[%c1] %c50264 4 %156 {map = #map26, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %158 = rmem.wrid : index
    %159 = rmem.rdma %c2, %144[%c2] %c50264 4 %158 {map = #map26, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %160 = rmem.wrid : index
    %161 = rmem.rdma %c3, %144[%c3] %c50264 4 %160 {map = #map26, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %162:10 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %155, %arg7 = %154, %arg8 = %157, %arg9 = %156, %arg10 = %159, %arg11 = %158, %arg12 = %161, %arg13 = %160) -> (index, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index) {
      %163 = arith.addi %arg4, %c1 : index
      %164 = arith.addi %arg5, %c1 : index
      %165 = arith.addi %arg3, %c4 : index
      %166 = rmem.wrid : index
      %167 = rmem.rdma %arg4, %144[%165] %c50264 4 %166 {map = #map26, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %152 -> %arg7 : <i64>, index
      affine.for %arg14 = 0 to 1 {
        %170 = affine.apply #map9(%arg3, %arg14)
        affine.for %arg15 = 0 to 1 {
          affine.for %arg16 = 0 to 50264 step 8 {
            %171 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
            llvm.store %c0_i64, %171 : !llvm.ptr<i64>
            %172 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
            llvm.store %c0_i64, %172 : !llvm.ptr<i64>
            %173 = rmem.rdma %c0, %32[%170, %arg15, %arg16, %c0] %c8 4 %c0 {map = #map27, mem = "t6"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
            %174 = rmem.rdma %c0, %32[%170, %arg15, %arg16, %c0] %c8 4 %c0 {map = #map28, mem = "t7"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
            %175 = rmem.rdma %c0, %32[%170, %arg15, %arg16, %c0] %c8 4 %c0 {map = #map29, mem = "t8"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
            %176 = rmem.rdma %c0, %32[%170, %arg15, %arg16, %c0] %c8 4 %c0 {map = #map30, mem = "t9"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
            %177 = rmem.rdma %c0, %32[%170, %arg15, %arg16, %c0] %c8 4 %c0 {map = #map31, mem = "t10"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
            %178 = rmem.rdma %c0, %32[%170, %arg15, %arg16, %c0] %c8 4 %c0 {map = #map32, mem = "t11"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
            %179 = rmem.rdma %c0, %32[%170, %arg15, %arg16, %c0] %c8 4 %c0 {map = #map33, mem = "t12"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
            %180 = rmem.wrid : index
            %181 = rmem.rdma %c0, %32[%170, %arg15, %arg16, %c0] %c8 4 %180 {map = #map34, mem = "t13"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
            %182:11 = affine.for %arg17 = 0 to 768 step 8 iter_args(%arg18 = %c1, %arg19 = %c0, %arg20 = %173, %arg21 = %174, %arg22 = %175, %arg23 = %176, %arg24 = %177, %arg25 = %178, %arg26 = %179, %arg27 = %181, %arg28 = %180) -> (index, index, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, index) {
              %183 = arith.addi %arg18, %c1 : index
              %184 = arith.addi %arg19, %c1 : index
              %185 = arith.addi %arg17, %c8 : index
              %186 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %185] %c8 4 %c0 {map = #map27, mem = "t6"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
              %187 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %185] %c8 4 %c0 {map = #map28, mem = "t7"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
              %188 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %185] %c8 4 %c0 {map = #map29, mem = "t8"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
              %189 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %185] %c8 4 %c0 {map = #map30, mem = "t9"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
              %190 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %185] %c8 4 %c0 {map = #map31, mem = "t10"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
              %191 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %185] %c8 4 %c0 {map = #map32, mem = "t11"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
              %192 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %185] %c8 4 %c0 {map = #map33, mem = "t12"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
              %193 = rmem.wrid : index
              %194 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %185] %c8 4 %193 {map = #map34, mem = "t13"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
              rmem.sync %171 -> %arg28 : <i64>, index
              affine.for %arg29 = 0 to 1 {
                %195 = affine.apply #map35(%arg17, %arg29)
                %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
                affine.for %arg30 = 0 to 1 {
                  %196 = arith.addi %arg30, %arg15 : index
                  %197 = affine.apply #map36(%arg15, %arg16, %arg30)
                  %198 = vector.load %arg6[%arg14, %197] : memref<1x50264xf32>, vector<8xf32>
                  affine.store %198, %alloca[0] : memref<1xvector<8xf32>>
                  %199 = memref.load %alloc_138[%170, %196, %195] : memref<64x1x768xf32>
                  %200 = vector.broadcast %199 : f32 to vector<8xf32>
                  %201 = vector.load %arg20[%arg29, %c0] : memref<1x8xf32>, vector<8xf32>
                  %202 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %203 = vector.fma %200, %201, %202 : vector<8xf32>
                  affine.store %203, %alloca[0] : memref<1xvector<8xf32>>
                  %204 = arith.addi %195, %c1 : index
                  %205 = memref.load %alloc_138[%170, %196, %204] : memref<64x1x768xf32>
                  %206 = vector.broadcast %205 : f32 to vector<8xf32>
                  %207 = vector.load %arg21[%arg29, %c0] : memref<1x8xf32>, vector<8xf32>
                  %208 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %209 = vector.fma %206, %207, %208 : vector<8xf32>
                  affine.store %209, %alloca[0] : memref<1xvector<8xf32>>
                  %210 = arith.addi %195, %c2 : index
                  %211 = memref.load %alloc_138[%170, %196, %210] : memref<64x1x768xf32>
                  %212 = vector.broadcast %211 : f32 to vector<8xf32>
                  %213 = vector.load %arg22[%arg29, %c0] : memref<1x8xf32>, vector<8xf32>
                  %214 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %215 = vector.fma %212, %213, %214 : vector<8xf32>
                  affine.store %215, %alloca[0] : memref<1xvector<8xf32>>
                  %216 = arith.addi %195, %c3 : index
                  %217 = memref.load %alloc_138[%170, %196, %216] : memref<64x1x768xf32>
                  %218 = vector.broadcast %217 : f32 to vector<8xf32>
                  %219 = vector.load %arg23[%arg29, %c0] : memref<1x8xf32>, vector<8xf32>
                  %220 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %221 = vector.fma %218, %219, %220 : vector<8xf32>
                  affine.store %221, %alloca[0] : memref<1xvector<8xf32>>
                  %222 = arith.addi %195, %c4 : index
                  %223 = memref.load %alloc_138[%170, %196, %222] : memref<64x1x768xf32>
                  %224 = vector.broadcast %223 : f32 to vector<8xf32>
                  %225 = vector.load %arg24[%arg29, %c0] : memref<1x8xf32>, vector<8xf32>
                  %226 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %227 = vector.fma %224, %225, %226 : vector<8xf32>
                  affine.store %227, %alloca[0] : memref<1xvector<8xf32>>
                  %228 = arith.addi %195, %c5 : index
                  %229 = memref.load %alloc_138[%170, %196, %228] : memref<64x1x768xf32>
                  %230 = vector.broadcast %229 : f32 to vector<8xf32>
                  %231 = vector.load %arg25[%arg29, %c0] : memref<1x8xf32>, vector<8xf32>
                  %232 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %233 = vector.fma %230, %231, %232 : vector<8xf32>
                  affine.store %233, %alloca[0] : memref<1xvector<8xf32>>
                  %234 = arith.addi %195, %c6 : index
                  %235 = memref.load %alloc_138[%170, %196, %234] : memref<64x1x768xf32>
                  %236 = vector.broadcast %235 : f32 to vector<8xf32>
                  %237 = vector.load %arg26[%arg29, %c0] : memref<1x8xf32>, vector<8xf32>
                  %238 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %239 = vector.fma %236, %237, %238 : vector<8xf32>
                  affine.store %239, %alloca[0] : memref<1xvector<8xf32>>
                  %240 = arith.addi %195, %c7 : index
                  %241 = memref.load %alloc_138[%170, %196, %240] : memref<64x1x768xf32>
                  %242 = vector.broadcast %241 : f32 to vector<8xf32>
                  %243 = vector.load %arg27[%arg29, %c0] : memref<1x8xf32>, vector<8xf32>
                  %244 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %245 = vector.fma %242, %243, %244 : vector<8xf32>
                  affine.store %245, %alloca[0] : memref<1xvector<8xf32>>
                  %246 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  vector.store %246, %arg6[%arg14, %197] : memref<1x50264xf32>, vector<8xf32>
                }
              }
              affine.yield %183, %184, %186, %187, %188, %189, %190, %191, %192, %194, %193 : index, index, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, index
            }
          }
        }
      }
      %168 = rmem.wrid : index
      %169 = rmem.rdma %arg5, %144[%arg3] %c50264 0 %168 {map = #map26, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %153 -> %168 : <i64>, index
      affine.yield %163, %164, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %167, %166 : index, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index
    }
    return %144 : !rmem.rmref<1, memref<64x1x50264xf32>>
  }
}


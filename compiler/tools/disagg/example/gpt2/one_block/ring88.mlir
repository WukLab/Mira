#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 64)>
#map2 = affine_map<(d0) -> (d0 + 32)>
#map3 = affine_map<(d0, d1) -> (-d0 + d1)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> (d0 * 195840)>
#map8 = affine_map<(d0, d1, d2) -> (d0 * 16320 + d1 * 64 + d2)>
#map9 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 * 64 + d2)>
#map10 = affine_map<(d0) -> (d0 * 196608)>
#map11 = affine_map<(d0, d1) -> (d0 + d1)>
#map12 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 * 64 + d2 + 16320)>
#map13 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256)>
#map14 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 256)>
#map15 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 512)>
#map16 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 768)>
#map17 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1024)>
#map18 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1280)>
#map19 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1536)>
#map20 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1792)>
#map21 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64)>
#map22 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 64)>
#map23 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 128)>
#map24 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 192)>
#map25 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 256)>
#map26 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 320)>
#map27 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 384)>
#map28 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 448)>
#map29 = affine_map<(d0, d1) -> (d0 * 50264 + d1)>
#map30 = affine_map<(d0) -> (d0 * 50264)>
#map31 = affine_map<(d0, d1, d2, d3) -> (d2 + d3 * 50264)>
#map32 = affine_map<(d0, d1, d2, d3) -> (d2 + d3 * 50264 + 50264)>
#map33 = affine_map<(d0, d1, d2, d3) -> (d2 + d3 * 50264 + 100528)>
#map34 = affine_map<(d0, d1, d2, d3) -> (d2 + d3 * 50264 + 150792)>
#map35 = affine_map<(d0, d1, d2, d3) -> (d2 + d3 * 50264 + 201056)>
#map36 = affine_map<(d0, d1, d2, d3) -> (d2 + d3 * 50264 + 251320)>
#map37 = affine_map<(d0, d1, d2, d3) -> (d2 + d3 * 50264 + 301584)>
#map38 = affine_map<(d0, d1, d2, d3) -> (d2 + d3 * 50264 + 351848)>
#map39 = affine_map<(d0, d1) -> (d0 + d1 * 8)>
#map40 = affine_map<(d0, d1, d2) -> (d0 * 50264 + d1 + d2 * 50264)>
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
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c6 = arith.constant 6 : index
    %c7 = arith.constant 7 : index
    %c0_0 = arith.constant 0 : index
    %cst = arith.constant 7.680000e+02 : f32
    %cst_1 = arith.constant 0xFF800000 : f32
    %cst_2 = arith.constant 0.000000e+00 : f32
    %c50264 = arith.constant 50264 : index
    %alloc = memref.alloc() {alignment = 16 : i64} : memref<50264x768xf32>
    %cast = memref.cast %alloc : memref<50264x768xf32> to memref<*xf32>
    %0 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<11 x i8>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%1, %cast) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_3 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_4 = memref.cast %alloc_3 : memref<768xf32> to memref<*xf32>
    %2 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<11 x i8>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%3, %cast_4) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_5 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_6 = memref.cast %alloc_5 : memref<768xf32> to memref<*xf32>
    %4 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<11 x i8>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%5, %cast_6) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_7 = memref.alloc() {alignment = 16 : i64} : memref<768x2304xf32>
    %cast_8 = memref.cast %alloc_7 : memref<768x2304xf32> to memref<*xf32>
    %6 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<11 x i8>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%7, %cast_8) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_9 = memref.alloc() {alignment = 16 : i64} : memref<2304xf32>
    %cast_10 = memref.cast %alloc_9 : memref<2304xf32> to memref<*xf32>
    %8 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<11 x i8>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%9, %cast_10) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_11 = memref.alloc() {alignment = 16 : i64} : memref<768x768xf32>
    %cast_12 = memref.cast %alloc_11 : memref<768x768xf32> to memref<*xf32>
    %10 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<11 x i8>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%11, %cast_12) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_13 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_14 = memref.cast %alloc_13 : memref<768xf32> to memref<*xf32>
    %12 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<11 x i8>>
    %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%13, %cast_14) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_15 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_16 = memref.cast %alloc_15 : memref<768xf32> to memref<*xf32>
    %14 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<11 x i8>>
    %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%15, %cast_16) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_17 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_18 = memref.cast %alloc_17 : memref<768xf32> to memref<*xf32>
    %16 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<11 x i8>>
    %17 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%17, %cast_18) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_19 = memref.alloc() {alignment = 16 : i64} : memref<768x3072xf32>
    %cast_20 = memref.cast %alloc_19 : memref<768x3072xf32> to memref<*xf32>
    %18 = llvm.mlir.addressof @constant_9 : !llvm.ptr<array<11 x i8>>
    %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%19, %cast_20) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_21 = memref.alloc() {alignment = 16 : i64} : memref<3072xf32>
    %cast_22 = memref.cast %alloc_21 : memref<3072xf32> to memref<*xf32>
    %20 = llvm.mlir.addressof @constant_10 : !llvm.ptr<array<12 x i8>>
    %21 = llvm.getelementptr %20[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%21, %cast_22) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_23 = memref.alloc() {alignment = 16 : i64} : memref<3072x768xf32>
    %cast_24 = memref.cast %alloc_23 : memref<3072x768xf32> to memref<*xf32>
    %22 = llvm.mlir.addressof @constant_11 : !llvm.ptr<array<12 x i8>>
    %23 = llvm.getelementptr %22[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%23, %cast_24) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_25 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_26 = memref.cast %alloc_25 : memref<768xf32> to memref<*xf32>
    %24 = llvm.mlir.addressof @constant_12 : !llvm.ptr<array<12 x i8>>
    %25 = llvm.getelementptr %24[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%25, %cast_26) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_27 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_28 = memref.cast %alloc_27 : memref<768xf32> to memref<*xf32>
    %26 = llvm.mlir.addressof @constant_13 : !llvm.ptr<array<12 x i8>>
    %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%27, %cast_28) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_29 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_30 = memref.cast %alloc_29 : memref<768xf32> to memref<*xf32>
    %28 = llvm.mlir.addressof @constant_14 : !llvm.ptr<array<12 x i8>>
    %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%29, %cast_30) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_31 = memref.alloc() {alignment = 16 : i64} : memref<1x1x1x256xi1>
    %cast_32 = memref.cast %alloc_31 : memref<1x1x1x256xi1> to memref<*xi1>
    %30 = llvm.mlir.addressof @constant_15 : !llvm.ptr<array<12 x i8>>
    %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_i1(%31, %cast_32) : (!llvm.ptr<i8>, memref<*xi1>) -> ()
    %32 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref6", 0]], alignment = 16 : i64} : <1, memref<768x50264xf32>>
    %33 = rmem.memref.cast %32 : <1, memref<768x50264xf32>> to <1, memref<*xf32>>
    %34 = llvm.mlir.addressof @constant_16 : !llvm.ptr<array<12 x i8>>
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @disagg_read_tensor_f32(%35, %33) : (!llvm.ptr<i8>, !rmem.rmref<1, memref<*xf32>>) -> ()
    %reinterpret_cast = memref.reinterpret_cast %arg0 to offset: [0], sizes: [64, 1], strides: [1, 1] : memref<64x1xi64> to memref<64x1xi64>
    %alloc_33 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %reinterpret_cast[%arg3, %arg4] : memref<64x1xi64>
          %164 = arith.index_cast %163 : i64 to index
          %165 = arith.addi %164, %c50264 : index
          %166 = arith.cmpi slt, %164, %c0_0 : index
          %167 = arith.select %166, %165, %164 : index
          %168 = memref.load %alloc[%167, %arg5] : memref<50264x768xf32>
          affine.store %168, %alloc_33[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_34 = memref.alloc() {alignment = 16 : i64} : memref<1x1x768xf32>
    %cast_35 = memref.cast %alloc_34 : memref<1x1x768xf32> to memref<*xf32>
    %36 = llvm.mlir.addressof @constant_18 : !llvm.ptr<array<12 x i8>>
    %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%37, %cast_35) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_36 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_33[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_34[0, %arg4, %arg5] : memref<1x1x768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_36[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_37 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_2, %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_36[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_37[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.addf %164, %163 : f32
          affine.store %165, %alloc_37[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = arith.divf %163, %cst : f32
          affine.store %164, %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_38 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_36[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_37[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.subf %163, %164 : f32
          affine.store %165, %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_39 = memref.alloc() : memref<f32>
    %cast_40 = memref.cast %alloc_39 : memref<f32> to memref<*xf32>
    %38 = llvm.mlir.addressof @constant_19 : !llvm.ptr<array<12 x i8>>
    %39 = llvm.getelementptr %38[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%39, %cast_40) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_41 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_39[] : memref<f32>
          %165 = math.powf %163, %164 : f32
          affine.store %165, %alloc_41[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_42 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_2, %alloc_42[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_41[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_42[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.addf %164, %163 : f32
          affine.store %165, %alloc_42[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_42[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = arith.divf %163, %cst : f32
          affine.store %164, %alloc_42[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_43 = memref.alloc() : memref<f32>
    %cast_44 = memref.cast %alloc_43 : memref<f32> to memref<*xf32>
    %40 = llvm.mlir.addressof @constant_20 : !llvm.ptr<array<12 x i8>>
    %41 = llvm.getelementptr %40[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%41, %cast_44) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_45 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_42[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = affine.load %alloc_43[] : memref<f32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_45[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_46 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_45[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = math.sqrt %163 : f32
          affine.store %164, %alloc_46[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_47 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_46[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.divf %163, %164 : f32
          affine.store %165, %alloc_47[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_48 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_47[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_3[%arg5] : memref<768xf32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_48[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_49 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_48[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_5[%arg5] : memref<768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_49[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_50 = memref.reinterpret_cast %alloc_49 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_51 = memref.alloc() {alignment = 128 : i64} : memref<64x2304xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 2304 {
        affine.store %cst_2, %alloc_51[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %alloc_52 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_53 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 2304 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %163 = affine.load %alloc_7[%arg4 + %arg5, %arg3 + %arg6] : memref<768x2304xf32>
            affine.store %163, %alloc_53[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %163 = affine.load %reinterpret_cast_50[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %163, %alloc_52[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %163 = affine.apply #map3(%arg5, %arg7)
              %164 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %165 = vector.load %alloc_51[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %165, %alloca[0] : memref<4xvector<16xf32>>
              %166 = arith.addi %arg7, %c1 : index
              %167 = vector.load %alloc_51[%166, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %167, %alloca[1] : memref<4xvector<16xf32>>
              %168 = arith.addi %arg7, %c2 : index
              %169 = vector.load %alloc_51[%168, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %169, %alloca[2] : memref<4xvector<16xf32>>
              %170 = arith.addi %arg7, %c3 : index
              %171 = vector.load %alloc_51[%170, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %171, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %176 = memref.load %alloc_52[%163, %arg8] : memref<32x256xf32>
                %177 = vector.broadcast %176 : f32 to vector<16xf32>
                %178 = vector.load %alloc_53[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %179 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %180 = vector.fma %177, %178, %179 : vector<16xf32>
                affine.store %180, %alloca[0] : memref<4xvector<16xf32>>
                %181 = affine.apply #map4(%arg8)
                %182 = memref.load %alloc_52[%163, %181] : memref<32x256xf32>
                %183 = vector.broadcast %182 : f32 to vector<16xf32>
                %184 = vector.load %alloc_53[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %185 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %186 = vector.fma %183, %184, %185 : vector<16xf32>
                affine.store %186, %alloca[0] : memref<4xvector<16xf32>>
                %187 = affine.apply #map5(%arg8)
                %188 = memref.load %alloc_52[%163, %187] : memref<32x256xf32>
                %189 = vector.broadcast %188 : f32 to vector<16xf32>
                %190 = vector.load %alloc_53[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %191 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %192 = vector.fma %189, %190, %191 : vector<16xf32>
                affine.store %192, %alloca[0] : memref<4xvector<16xf32>>
                %193 = affine.apply #map6(%arg8)
                %194 = memref.load %alloc_52[%163, %193] : memref<32x256xf32>
                %195 = vector.broadcast %194 : f32 to vector<16xf32>
                %196 = vector.load %alloc_53[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %197 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %198 = vector.fma %195, %196, %197 : vector<16xf32>
                affine.store %198, %alloca[0] : memref<4xvector<16xf32>>
                %199 = arith.addi %163, %c1 : index
                %200 = memref.load %alloc_52[%199, %arg8] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_53[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %203 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                affine.store %204, %alloca[1] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_52[%199, %181] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_53[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %208 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                affine.store %209, %alloca[1] : memref<4xvector<16xf32>>
                %210 = memref.load %alloc_52[%199, %187] : memref<32x256xf32>
                %211 = vector.broadcast %210 : f32 to vector<16xf32>
                %212 = vector.load %alloc_53[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %213 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %214 = vector.fma %211, %212, %213 : vector<16xf32>
                affine.store %214, %alloca[1] : memref<4xvector<16xf32>>
                %215 = memref.load %alloc_52[%199, %193] : memref<32x256xf32>
                %216 = vector.broadcast %215 : f32 to vector<16xf32>
                %217 = vector.load %alloc_53[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %218 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %219 = vector.fma %216, %217, %218 : vector<16xf32>
                affine.store %219, %alloca[1] : memref<4xvector<16xf32>>
                %220 = arith.addi %163, %c2 : index
                %221 = memref.load %alloc_52[%220, %arg8] : memref<32x256xf32>
                %222 = vector.broadcast %221 : f32 to vector<16xf32>
                %223 = vector.load %alloc_53[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %224 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %225 = vector.fma %222, %223, %224 : vector<16xf32>
                affine.store %225, %alloca[2] : memref<4xvector<16xf32>>
                %226 = memref.load %alloc_52[%220, %181] : memref<32x256xf32>
                %227 = vector.broadcast %226 : f32 to vector<16xf32>
                %228 = vector.load %alloc_53[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %229 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %230 = vector.fma %227, %228, %229 : vector<16xf32>
                affine.store %230, %alloca[2] : memref<4xvector<16xf32>>
                %231 = memref.load %alloc_52[%220, %187] : memref<32x256xf32>
                %232 = vector.broadcast %231 : f32 to vector<16xf32>
                %233 = vector.load %alloc_53[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %234 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %235 = vector.fma %232, %233, %234 : vector<16xf32>
                affine.store %235, %alloca[2] : memref<4xvector<16xf32>>
                %236 = memref.load %alloc_52[%220, %193] : memref<32x256xf32>
                %237 = vector.broadcast %236 : f32 to vector<16xf32>
                %238 = vector.load %alloc_53[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %239 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %240 = vector.fma %237, %238, %239 : vector<16xf32>
                affine.store %240, %alloca[2] : memref<4xvector<16xf32>>
                %241 = arith.addi %163, %c3 : index
                %242 = memref.load %alloc_52[%241, %arg8] : memref<32x256xf32>
                %243 = vector.broadcast %242 : f32 to vector<16xf32>
                %244 = vector.load %alloc_53[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %245 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %246 = vector.fma %243, %244, %245 : vector<16xf32>
                affine.store %246, %alloca[3] : memref<4xvector<16xf32>>
                %247 = memref.load %alloc_52[%241, %181] : memref<32x256xf32>
                %248 = vector.broadcast %247 : f32 to vector<16xf32>
                %249 = vector.load %alloc_53[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %250 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %251 = vector.fma %248, %249, %250 : vector<16xf32>
                affine.store %251, %alloca[3] : memref<4xvector<16xf32>>
                %252 = memref.load %alloc_52[%241, %187] : memref<32x256xf32>
                %253 = vector.broadcast %252 : f32 to vector<16xf32>
                %254 = vector.load %alloc_53[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %255 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %256 = vector.fma %253, %254, %255 : vector<16xf32>
                affine.store %256, %alloca[3] : memref<4xvector<16xf32>>
                %257 = memref.load %alloc_52[%241, %193] : memref<32x256xf32>
                %258 = vector.broadcast %257 : f32 to vector<16xf32>
                %259 = vector.load %alloc_53[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %260 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %261 = vector.fma %258, %259, %260 : vector<16xf32>
                affine.store %261, %alloca[3] : memref<4xvector<16xf32>>
              }
              %172 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %172, %alloc_51[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %173 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %173, %alloc_51[%166, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %174 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %174, %alloc_51[%168, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %175 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %175, %alloc_51[%170, %arg6] : memref<64x2304xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 2304 {
        %163 = affine.load %alloc_51[%arg3, %arg4] : memref<64x2304xf32>
        %164 = affine.load %alloc_9[%arg4] : memref<2304xf32>
        %165 = arith.addf %163, %164 : f32
        affine.store %165, %alloc_51[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %reinterpret_cast_54 = memref.reinterpret_cast %alloc_51 to offset: [0], sizes: [64, 1, 2304], strides: [2304, 2304, 1] : memref<64x2304xf32> to memref<64x1x2304xf32>
    %alloc_55 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_56 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_57 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %reinterpret_cast_54[%arg3, %arg4, %arg5] : memref<64x1x2304xf32>
          affine.store %163, %alloc_55[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %reinterpret_cast_54[%arg3, %arg4, %arg5 + 768] : memref<64x1x2304xf32>
          affine.store %163, %alloc_56[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %reinterpret_cast_54[%arg3, %arg4, %arg5 + 1536] : memref<64x1x2304xf32>
          affine.store %163, %alloc_57[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_58 = memref.reinterpret_cast %alloc_55 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_59 = memref.reinterpret_cast %alloc_56 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_60 = memref.reinterpret_cast %alloc_57 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %42 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref2", 0]], alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
    %c0_i64 = arith.constant 0 : i64
    %c0_61 = arith.constant 0 : index
    %c1_62 = arith.constant 1 : index
    %c1_i64 = arith.constant 1 : i64
    %43 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %43 : !llvm.ptr<i64>
    %c1_i64_63 = arith.constant 1 : i64
    %44 = llvm.alloca %c1_i64_63 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %44 : !llvm.ptr<i64>
    %c4_64 = arith.constant 4 : index
    %c0_65 = arith.constant 0 : index
    %c0_66 = arith.constant 0 : index
    %c0_67 = arith.constant 0 : index
    %c195840 = arith.constant 195840 : index
    %45 = rmem.rdma %c0_67, %arg1[%c0_66] %c195840 4 %c0_61 {map = #map7, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %46 = rmem.slot %c0_67 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %c1_68 = arith.constant 1 : index
    %c1_69 = arith.constant 1 : index
    %c195840_70 = arith.constant 195840 : index
    %47 = rmem.rdma %c1_69, %arg1[%c1_68] %c195840_70 4 %c0_61 {map = #map7, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %48 = rmem.slot %c1_69 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %c2_71 = arith.constant 2 : index
    %c2_72 = arith.constant 2 : index
    %c195840_73 = arith.constant 195840 : index
    %49 = rmem.rdma %c2_72, %arg1[%c2_71] %c195840_73 4 %c0_61 {map = #map7, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %50 = rmem.slot %c2_72 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %c3_74 = arith.constant 3 : index
    %c3_75 = arith.constant 3 : index
    %c195840_76 = arith.constant 195840 : index
    %51 = rmem.rdma %c3_75, %arg1[%c3_74] %c195840_76 4 %c0_61 {map = #map7, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %52 = rmem.slot %c3_75 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %53:14 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_64, %arg5 = %c0_61, %arg6 = %45, %arg7 = %46, %arg8 = %c0_61, %arg9 = %47, %arg10 = %48, %arg11 = %c0_61, %arg12 = %49, %arg13 = %50, %arg14 = %c0_61, %arg15 = %51, %arg16 = %52, %arg17 = %c0_61) -> (index, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index) {
      %163 = arith.addi %c1_62, %arg4 : index
      %164 = arith.addi %c1_62, %arg5 : index
      %c4_295 = arith.constant 4 : index
      %165 = arith.addi %c4_295, %arg3 : index
      %c195840_296 = arith.constant 195840 : index
      %166 = rmem.rdma %arg4, %arg1[%165] %c195840_296 4 %c0_61 {map = #map7, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
      %167 = rmem.slot %arg4 {mem = "t2"} : (index) -> memref<1x196608xf32>
      rmem.sync %43 -> %arg8 : <i64>, index
      affine.for %arg18 = 0 to 1 {
        affine.for %arg19 = 0 to 12 {
          affine.for %arg20 = 0 to 255 {
            affine.for %arg21 = 0 to 64 {
              %170 = affine.apply #map8(%arg19, %arg20, %arg21)
              %171 = affine.load %arg6[%arg18, %170] : memref<1x195840xf32>
              %172 = affine.apply #map9(%arg19, %arg20, %arg21)
              affine.store %171, %arg7[%arg18, %172] : memref<1x196608xf32>
            }
          }
        }
      }
      %168 = rmem.wrid : index
      %c196608_297 = arith.constant 196608 : index
      %169 = rmem.rdma %arg5, %42[%arg3] %c196608_297 0 %168 {map = #map10, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %44 -> %168 : <i64>, index
      affine.yield %163, %164, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %166, %167, %c0_61 : index, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index
    }
    %c0_i64_77 = arith.constant 0 : i64
    %c0_78 = arith.constant 0 : index
    %c1_79 = arith.constant 1 : index
    %c1_i64_80 = arith.constant 1 : i64
    %54 = llvm.alloca %c1_i64_80 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_77, %54 : !llvm.ptr<i64>
    %c1_i64_81 = arith.constant 1 : i64
    %55 = llvm.alloca %c1_i64_81 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_77, %55 : !llvm.ptr<i64>
    %c4_82 = arith.constant 4 : index
    %c0_83 = arith.constant 0 : index
    %c0_84 = arith.constant 0 : index
    %c0_85 = arith.constant 0 : index
    %56 = rmem.slot %c0_85 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %c1_86 = arith.constant 1 : index
    %c1_87 = arith.constant 1 : index
    %57 = rmem.slot %c1_87 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %c2_88 = arith.constant 2 : index
    %c2_89 = arith.constant 2 : index
    %58 = rmem.slot %c2_89 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %c3_90 = arith.constant 3 : index
    %c3_91 = arith.constant 3 : index
    %59 = rmem.slot %c3_91 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %60:6 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_82, %arg5 = %c0_78, %arg6 = %56, %arg7 = %57, %arg8 = %58, %arg9 = %59) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>) {
      %163 = arith.addi %c1_79, %arg4 : index
      %164 = arith.addi %c1_79, %arg5 : index
      %c4_295 = arith.constant 4 : index
      %165 = arith.addi %c4_295, %arg3 : index
      %166 = rmem.slot %arg4 {mem = "t2"} : (index) -> memref<1x196608xf32>
      affine.for %arg10 = 0 to 1 {
        %169 = affine.apply #map11(%arg3, %arg10)
        affine.for %arg11 = 0 to 12 {
          affine.for %arg12 = 0 to 1 {
            affine.for %arg13 = 0 to 64 {
              %170 = affine.load %reinterpret_cast_59[%169, %arg11, %arg12, %arg13] : memref<64x12x1x64xf32>
              %171 = affine.apply #map12(%arg11, %arg12, %arg13)
              affine.store %170, %arg6[%arg10, %171] : memref<1x196608xf32>
            }
          }
        }
      }
      %167 = rmem.wrid : index
      %c196608_296 = arith.constant 196608 : index
      %168 = rmem.rdma %arg5, %42[%arg3] %c196608_296 0 %167 {map = #map10, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %55 -> %167 : <i64>, index
      affine.yield %163, %164, %arg7, %arg8, %arg9, %166 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>
    }
    %61 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref3", 0]], alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
    %c0_i64_92 = arith.constant 0 : i64
    %c0_93 = arith.constant 0 : index
    %c1_94 = arith.constant 1 : index
    %c1_i64_95 = arith.constant 1 : i64
    %62 = llvm.alloca %c1_i64_95 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_92, %62 : !llvm.ptr<i64>
    %c1_i64_96 = arith.constant 1 : i64
    %63 = llvm.alloca %c1_i64_96 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_92, %63 : !llvm.ptr<i64>
    %c4_97 = arith.constant 4 : index
    %c0_98 = arith.constant 0 : index
    %c0_99 = arith.constant 0 : index
    %c0_100 = arith.constant 0 : index
    %c195840_101 = arith.constant 195840 : index
    %64 = rmem.rdma %c0_100, %arg2[%c0_99] %c195840_101 4 %c0_93 {map = #map7, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %65 = rmem.slot %c0_100 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %c1_102 = arith.constant 1 : index
    %c1_103 = arith.constant 1 : index
    %c195840_104 = arith.constant 195840 : index
    %66 = rmem.rdma %c1_103, %arg2[%c1_102] %c195840_104 4 %c0_93 {map = #map7, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %67 = rmem.slot %c1_103 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %c2_105 = arith.constant 2 : index
    %c2_106 = arith.constant 2 : index
    %c195840_107 = arith.constant 195840 : index
    %68 = rmem.rdma %c2_106, %arg2[%c2_105] %c195840_107 4 %c0_93 {map = #map7, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %69 = rmem.slot %c2_106 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %c3_108 = arith.constant 3 : index
    %c3_109 = arith.constant 3 : index
    %c195840_110 = arith.constant 195840 : index
    %70 = rmem.rdma %c3_109, %arg2[%c3_108] %c195840_110 4 %c0_93 {map = #map7, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %71 = rmem.slot %c3_109 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %72:14 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_97, %arg5 = %c0_93, %arg6 = %64, %arg7 = %65, %arg8 = %c0_93, %arg9 = %66, %arg10 = %67, %arg11 = %c0_93, %arg12 = %68, %arg13 = %69, %arg14 = %c0_93, %arg15 = %70, %arg16 = %71, %arg17 = %c0_93) -> (index, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index) {
      %163 = arith.addi %c1_94, %arg4 : index
      %164 = arith.addi %c1_94, %arg5 : index
      %c4_295 = arith.constant 4 : index
      %165 = arith.addi %c4_295, %arg3 : index
      %c195840_296 = arith.constant 195840 : index
      %166 = rmem.rdma %arg4, %arg2[%165] %c195840_296 4 %c0_93 {map = #map7, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
      %167 = rmem.slot %arg4 {mem = "t3"} : (index) -> memref<1x196608xf32>
      rmem.sync %62 -> %arg8 : <i64>, index
      affine.for %arg18 = 0 to 1 {
        affine.for %arg19 = 0 to 12 {
          affine.for %arg20 = 0 to 255 {
            affine.for %arg21 = 0 to 64 {
              %170 = affine.apply #map8(%arg19, %arg20, %arg21)
              %171 = affine.load %arg6[%arg18, %170] : memref<1x195840xf32>
              %172 = affine.apply #map9(%arg19, %arg20, %arg21)
              affine.store %171, %arg7[%arg18, %172] : memref<1x196608xf32>
            }
          }
        }
      }
      %168 = rmem.wrid : index
      %c196608_297 = arith.constant 196608 : index
      %169 = rmem.rdma %arg5, %61[%arg3] %c196608_297 0 %168 {map = #map10, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %63 -> %168 : <i64>, index
      affine.yield %163, %164, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %166, %167, %c0_93 : index, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index
    }
    %c0_i64_111 = arith.constant 0 : i64
    %c0_112 = arith.constant 0 : index
    %c1_113 = arith.constant 1 : index
    %c1_i64_114 = arith.constant 1 : i64
    %73 = llvm.alloca %c1_i64_114 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_111, %73 : !llvm.ptr<i64>
    %c1_i64_115 = arith.constant 1 : i64
    %74 = llvm.alloca %c1_i64_115 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_111, %74 : !llvm.ptr<i64>
    %c4_116 = arith.constant 4 : index
    %c0_117 = arith.constant 0 : index
    %c0_118 = arith.constant 0 : index
    %c0_119 = arith.constant 0 : index
    %75 = rmem.slot %c0_119 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %c1_120 = arith.constant 1 : index
    %c1_121 = arith.constant 1 : index
    %76 = rmem.slot %c1_121 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %c2_122 = arith.constant 2 : index
    %c2_123 = arith.constant 2 : index
    %77 = rmem.slot %c2_123 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %c3_124 = arith.constant 3 : index
    %c3_125 = arith.constant 3 : index
    %78 = rmem.slot %c3_125 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %79:6 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_116, %arg5 = %c0_112, %arg6 = %75, %arg7 = %76, %arg8 = %77, %arg9 = %78) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>) {
      %163 = arith.addi %c1_113, %arg4 : index
      %164 = arith.addi %c1_113, %arg5 : index
      %c4_295 = arith.constant 4 : index
      %165 = arith.addi %c4_295, %arg3 : index
      %166 = rmem.slot %arg4 {mem = "t3"} : (index) -> memref<1x196608xf32>
      affine.for %arg10 = 0 to 1 {
        %169 = affine.apply #map11(%arg3, %arg10)
        affine.for %arg11 = 0 to 12 {
          affine.for %arg12 = 0 to 1 {
            affine.for %arg13 = 0 to 64 {
              %170 = affine.load %reinterpret_cast_60[%169, %arg11, %arg12, %arg13] : memref<64x12x1x64xf32>
              %171 = affine.apply #map12(%arg11, %arg12, %arg13)
              affine.store %170, %arg6[%arg10, %171] : memref<1x196608xf32>
            }
          }
        }
      }
      %167 = rmem.wrid : index
      %c196608_296 = arith.constant 196608 : index
      %168 = rmem.rdma %arg5, %61[%arg3] %c196608_296 0 %167 {map = #map10, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %74 -> %167 : <i64>, index
      affine.yield %163, %164, %arg7, %arg8, %arg9, %166 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>
    }
    %80 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref4", 0]], alignment = 16 : i64} : <1, memref<64x12x64x256xf32>>
    %c0_i64_126 = arith.constant 0 : i64
    %c0_127 = arith.constant 0 : index
    %c1_128 = arith.constant 1 : index
    %c1_i64_129 = arith.constant 1 : i64
    %81 = llvm.alloca %c1_i64_129 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_126, %81 : !llvm.ptr<i64>
    %c1_i64_130 = arith.constant 1 : i64
    %82 = llvm.alloca %c1_i64_130 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_126, %82 : !llvm.ptr<i64>
    %c4_131 = arith.constant 4 : index
    %c0_132 = arith.constant 0 : index
    %c0_133 = arith.constant 0 : index
    %c0_134 = arith.constant 0 : index
    %c196608 = arith.constant 196608 : index
    %83 = rmem.rdma %c0_134, %42[%c0_133] %c196608 4 %c0_127 {map = #map10, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %84 = rmem.slot %c0_134 {mem = "t4"} : (index) -> memref<1x196608xf32>
    %c1_135 = arith.constant 1 : index
    %c1_136 = arith.constant 1 : index
    %c196608_137 = arith.constant 196608 : index
    %85 = rmem.rdma %c1_136, %42[%c1_135] %c196608_137 4 %c0_127 {map = #map10, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %86 = rmem.slot %c1_136 {mem = "t4"} : (index) -> memref<1x196608xf32>
    %c2_138 = arith.constant 2 : index
    %c2_139 = arith.constant 2 : index
    %c196608_140 = arith.constant 196608 : index
    %87 = rmem.rdma %c2_139, %42[%c2_138] %c196608_140 4 %c0_127 {map = #map10, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %88 = rmem.slot %c2_139 {mem = "t4"} : (index) -> memref<1x196608xf32>
    %c3_141 = arith.constant 3 : index
    %c3_142 = arith.constant 3 : index
    %c196608_143 = arith.constant 196608 : index
    %89 = rmem.rdma %c3_142, %42[%c3_141] %c196608_143 4 %c0_127 {map = #map10, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %90 = rmem.slot %c3_142 {mem = "t4"} : (index) -> memref<1x196608xf32>
    %91:14 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_131, %arg5 = %c0_127, %arg6 = %83, %arg7 = %84, %arg8 = %c0_127, %arg9 = %85, %arg10 = %86, %arg11 = %c0_127, %arg12 = %87, %arg13 = %88, %arg14 = %c0_127, %arg15 = %89, %arg16 = %90, %arg17 = %c0_127) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index) {
      %163 = arith.addi %c1_128, %arg4 : index
      %164 = arith.addi %c1_128, %arg5 : index
      %c4_295 = arith.constant 4 : index
      %165 = arith.addi %c4_295, %arg3 : index
      %c196608_296 = arith.constant 196608 : index
      %166 = rmem.rdma %arg4, %42[%165] %c196608_296 4 %c0_127 {map = #map10, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      %167 = rmem.slot %arg4 {mem = "t4"} : (index) -> memref<1x196608xf32>
      rmem.sync %81 -> %arg8 : <i64>, index
      affine.for %arg18 = 0 to 1 {
        affine.for %arg19 = 0 to 12 {
          affine.for %arg20 = 0 to 256 {
            affine.for %arg21 = 0 to 64 {
              %170 = affine.apply #map9(%arg19, %arg20, %arg21)
              %171 = affine.load %arg6[%arg18, %170] : memref<1x196608xf32>
              %172 = affine.apply #map13(%arg19, %arg20, %arg21)
              affine.store %171, %arg7[%arg18, %172] : memref<1x196608xf32>
            }
          }
        }
      }
      %168 = rmem.wrid : index
      %c196608_297 = arith.constant 196608 : index
      %169 = rmem.rdma %arg5, %80[%arg3] %c196608_297 0 %168 {map = #map10, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %82 -> %168 : <i64>, index
      affine.yield %163, %164, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %166, %167, %c0_127 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index
    }
    %alloc_144 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            affine.store %cst_2, %alloc_144[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %c0_i64_145 = arith.constant 0 : i64
    %c0_146 = arith.constant 0 : index
    %c1_147 = arith.constant 1 : index
    %c1_i64_148 = arith.constant 1 : i64
    %92 = llvm.alloca %c1_i64_148 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_145, %92 : !llvm.ptr<i64>
    %c1_i64_149 = arith.constant 1 : i64
    %93 = llvm.alloca %c1_i64_149 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_145, %93 : !llvm.ptr<i64>
    %c4_150 = arith.constant 4 : index
    %c0_151 = arith.constant 0 : index
    %c0_152 = arith.constant 0 : index
    %c0_153 = arith.constant 0 : index
    %94 = rmem.wrid : index
    %c196608_154 = arith.constant 196608 : index
    %95 = rmem.rdma %c0_153, %80[%c0_152] %c196608_154 4 %94 {map = #map10, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
    %c1_155 = arith.constant 1 : index
    %c1_156 = arith.constant 1 : index
    %96 = rmem.wrid : index
    %c196608_157 = arith.constant 196608 : index
    %97 = rmem.rdma %c1_156, %80[%c1_155] %c196608_157 4 %96 {map = #map10, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
    %c2_158 = arith.constant 2 : index
    %c2_159 = arith.constant 2 : index
    %98 = rmem.wrid : index
    %c196608_160 = arith.constant 196608 : index
    %99 = rmem.rdma %c2_159, %80[%c2_158] %c196608_160 4 %98 {map = #map10, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
    %c3_161 = arith.constant 3 : index
    %c3_162 = arith.constant 3 : index
    %100 = rmem.wrid : index
    %c196608_163 = arith.constant 196608 : index
    %101 = rmem.rdma %c3_162, %80[%c3_161] %c196608_163 4 %100 {map = #map10, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
    %102:10 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_150, %arg5 = %c0_146, %arg6 = %95, %arg7 = %94, %arg8 = %97, %arg9 = %96, %arg10 = %99, %arg11 = %98, %arg12 = %101, %arg13 = %100) -> (index, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index) {
      %163 = arith.addi %c1_147, %arg4 : index
      %164 = arith.addi %c1_147, %arg5 : index
      %c4_295 = arith.constant 4 : index
      %165 = arith.addi %c4_295, %arg3 : index
      %166 = rmem.wrid : index
      %c196608_296 = arith.constant 196608 : index
      %167 = rmem.rdma %arg4, %80[%165] %c196608_296 4 %166 {map = #map10, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %92 -> %arg7 : <i64>, index
      affine.for %arg14 = 0 to 1 {
        %168 = affine.apply #map11(%arg3, %arg14)
        affine.for %arg15 = 0 to 12 {
          affine.for %arg16 = 0 to 1 {
            affine.for %arg17 = 0 to 256 step 8 {
              affine.for %arg18 = 0 to 64 step 8 {
                %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
                affine.for %arg19 = 0 to 1 {
                  %169 = arith.addi %arg19, %arg16 : index
                  %170 = vector.load %alloc_144[%168, %arg15, %169, %arg17] : memref<64x12x1x256xf32>, vector<8xf32>
                  affine.store %170, %alloca[0] : memref<1xvector<8xf32>>
                  %171 = memref.load %reinterpret_cast_58[%168, %arg15, %169, %arg18] : memref<64x12x1x64xf32>
                  %172 = vector.broadcast %171 : f32 to vector<8xf32>
                  %173 = affine.apply #map13(%arg15, %arg17, %arg18)
                  %174 = vector.load %arg6[%arg14, %173] : memref<1x196608xf32>, vector<8xf32>
                  %175 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %176 = vector.fma %172, %174, %175 : vector<8xf32>
                  affine.store %176, %alloca[0] : memref<1xvector<8xf32>>
                  %177 = arith.addi %arg18, %c1 : index
                  %178 = memref.load %reinterpret_cast_58[%168, %arg15, %169, %177] : memref<64x12x1x64xf32>
                  %179 = vector.broadcast %178 : f32 to vector<8xf32>
                  %180 = affine.apply #map14(%arg15, %arg17, %arg18)
                  %181 = vector.load %arg6[%arg14, %180] : memref<1x196608xf32>, vector<8xf32>
                  %182 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %183 = vector.fma %179, %181, %182 : vector<8xf32>
                  affine.store %183, %alloca[0] : memref<1xvector<8xf32>>
                  %184 = arith.addi %arg18, %c2 : index
                  %185 = memref.load %reinterpret_cast_58[%168, %arg15, %169, %184] : memref<64x12x1x64xf32>
                  %186 = vector.broadcast %185 : f32 to vector<8xf32>
                  %187 = affine.apply #map15(%arg15, %arg17, %arg18)
                  %188 = vector.load %arg6[%arg14, %187] : memref<1x196608xf32>, vector<8xf32>
                  %189 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %190 = vector.fma %186, %188, %189 : vector<8xf32>
                  affine.store %190, %alloca[0] : memref<1xvector<8xf32>>
                  %191 = arith.addi %arg18, %c3 : index
                  %192 = memref.load %reinterpret_cast_58[%168, %arg15, %169, %191] : memref<64x12x1x64xf32>
                  %193 = vector.broadcast %192 : f32 to vector<8xf32>
                  %194 = affine.apply #map16(%arg15, %arg17, %arg18)
                  %195 = vector.load %arg6[%arg14, %194] : memref<1x196608xf32>, vector<8xf32>
                  %196 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %197 = vector.fma %193, %195, %196 : vector<8xf32>
                  affine.store %197, %alloca[0] : memref<1xvector<8xf32>>
                  %198 = arith.addi %arg18, %c4 : index
                  %199 = memref.load %reinterpret_cast_58[%168, %arg15, %169, %198] : memref<64x12x1x64xf32>
                  %200 = vector.broadcast %199 : f32 to vector<8xf32>
                  %201 = affine.apply #map17(%arg15, %arg17, %arg18)
                  %202 = vector.load %arg6[%arg14, %201] : memref<1x196608xf32>, vector<8xf32>
                  %203 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %204 = vector.fma %200, %202, %203 : vector<8xf32>
                  affine.store %204, %alloca[0] : memref<1xvector<8xf32>>
                  %205 = arith.addi %arg18, %c5 : index
                  %206 = memref.load %reinterpret_cast_58[%168, %arg15, %169, %205] : memref<64x12x1x64xf32>
                  %207 = vector.broadcast %206 : f32 to vector<8xf32>
                  %208 = affine.apply #map18(%arg15, %arg17, %arg18)
                  %209 = vector.load %arg6[%arg14, %208] : memref<1x196608xf32>, vector<8xf32>
                  %210 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %211 = vector.fma %207, %209, %210 : vector<8xf32>
                  affine.store %211, %alloca[0] : memref<1xvector<8xf32>>
                  %212 = arith.addi %arg18, %c6 : index
                  %213 = memref.load %reinterpret_cast_58[%168, %arg15, %169, %212] : memref<64x12x1x64xf32>
                  %214 = vector.broadcast %213 : f32 to vector<8xf32>
                  %215 = affine.apply #map19(%arg15, %arg17, %arg18)
                  %216 = vector.load %arg6[%arg14, %215] : memref<1x196608xf32>, vector<8xf32>
                  %217 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %218 = vector.fma %214, %216, %217 : vector<8xf32>
                  affine.store %218, %alloca[0] : memref<1xvector<8xf32>>
                  %219 = arith.addi %arg18, %c7 : index
                  %220 = memref.load %reinterpret_cast_58[%168, %arg15, %169, %219] : memref<64x12x1x64xf32>
                  %221 = vector.broadcast %220 : f32 to vector<8xf32>
                  %222 = affine.apply #map20(%arg15, %arg17, %arg18)
                  %223 = vector.load %arg6[%arg14, %222] : memref<1x196608xf32>, vector<8xf32>
                  %224 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %225 = vector.fma %221, %223, %224 : vector<8xf32>
                  affine.store %225, %alloca[0] : memref<1xvector<8xf32>>
                  %226 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  vector.store %226, %alloc_144[%168, %arg15, %169, %arg17] : memref<64x12x1x256xf32>, vector<8xf32>
                }
              }
            }
          }
        }
      }
      affine.yield %163, %164, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %167, %166 : index, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index
    }
    %alloc_164 = memref.alloc() : memref<f32>
    %cast_165 = memref.cast %alloc_164 : memref<f32> to memref<*xf32>
    %103 = llvm.mlir.addressof @constant_27 : !llvm.ptr<array<12 x i8>>
    %104 = llvm.getelementptr %103[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%104, %cast_165) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_166 = memref.alloc() : memref<f32>
    %cast_167 = memref.cast %alloc_166 : memref<f32> to memref<*xf32>
    %105 = llvm.mlir.addressof @constant_28 : !llvm.ptr<array<12 x i8>>
    %106 = llvm.getelementptr %105[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%106, %cast_167) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_168 = memref.alloc() : memref<f32>
    %107 = affine.load %alloc_164[] : memref<f32>
    %108 = affine.load %alloc_166[] : memref<f32>
    %109 = math.powf %107, %108 : f32
    affine.store %109, %alloc_168[] : memref<f32>
    %alloc_169 = memref.alloc() : memref<f32>
    affine.store %cst_2, %alloc_169[] : memref<f32>
    %alloc_170 = memref.alloc() : memref<f32>
    %110 = affine.load %alloc_169[] : memref<f32>
    %111 = affine.load %alloc_168[] : memref<f32>
    %112 = arith.addf %110, %111 : f32
    affine.store %112, %alloc_170[] : memref<f32>
    %alloc_171 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %163 = affine.load %alloc_144[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %164 = affine.load %alloc_170[] : memref<f32>
            %165 = arith.divf %163, %164 : f32
            affine.store %165, %alloc_171[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_172 = memref.alloc() : memref<f32>
    %cast_173 = memref.cast %alloc_172 : memref<f32> to memref<*xf32>
    %113 = llvm.mlir.addressof @constant_30 : !llvm.ptr<array<12 x i8>>
    %114 = llvm.getelementptr %113[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%114, %cast_173) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_174 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %163 = affine.load %alloc_31[0, 0, %arg5, %arg6] : memref<1x1x1x256xi1>
            %164 = affine.load %alloc_171[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %165 = affine.load %alloc_172[] : memref<f32>
            %166 = arith.select %163, %164, %165 : f32
            affine.store %166, %alloc_174[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_175 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    %alloc_176 = memref.alloc() : memref<f32>
    %alloc_177 = memref.alloc() : memref<f32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_2, %alloc_176[] : memref<f32>
          affine.store %cst_1, %alloc_177[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %165 = affine.load %alloc_177[] : memref<f32>
            %166 = affine.load %alloc_174[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %167 = arith.cmpf ogt, %165, %166 : f32
            %168 = arith.select %167, %165, %166 : f32
            affine.store %168, %alloc_177[] : memref<f32>
          }
          %163 = affine.load %alloc_177[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %165 = affine.load %alloc_176[] : memref<f32>
            %166 = affine.load %alloc_174[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %167 = arith.subf %166, %163 : f32
            %168 = math.exp %167 : f32
            %169 = arith.addf %165, %168 : f32
            affine.store %169, %alloc_176[] : memref<f32>
            affine.store %168, %alloc_175[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
          %164 = affine.load %alloc_176[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %165 = affine.load %alloc_175[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %166 = arith.divf %165, %164 : f32
            affine.store %166, %alloc_175[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_178 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x64xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 64 {
            affine.store %cst_2, %alloc_178[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
          }
        }
      }
    }
    %c0_i64_179 = arith.constant 0 : i64
    %c0_180 = arith.constant 0 : index
    %c1_181 = arith.constant 1 : index
    %c1_i64_182 = arith.constant 1 : i64
    %115 = llvm.alloca %c1_i64_182 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_179, %115 : !llvm.ptr<i64>
    %c1_i64_183 = arith.constant 1 : i64
    %116 = llvm.alloca %c1_i64_183 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_179, %116 : !llvm.ptr<i64>
    %c4_184 = arith.constant 4 : index
    %c0_185 = arith.constant 0 : index
    %c0_186 = arith.constant 0 : index
    %c0_187 = arith.constant 0 : index
    %117 = rmem.wrid : index
    %c196608_188 = arith.constant 196608 : index
    %118 = rmem.rdma %c0_187, %61[%c0_186] %c196608_188 4 %117 {map = #map10, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %c1_189 = arith.constant 1 : index
    %c1_190 = arith.constant 1 : index
    %119 = rmem.wrid : index
    %c196608_191 = arith.constant 196608 : index
    %120 = rmem.rdma %c1_190, %61[%c1_189] %c196608_191 4 %119 {map = #map10, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %c2_192 = arith.constant 2 : index
    %c2_193 = arith.constant 2 : index
    %121 = rmem.wrid : index
    %c196608_194 = arith.constant 196608 : index
    %122 = rmem.rdma %c2_193, %61[%c2_192] %c196608_194 4 %121 {map = #map10, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %c3_195 = arith.constant 3 : index
    %c3_196 = arith.constant 3 : index
    %123 = rmem.wrid : index
    %c196608_197 = arith.constant 196608 : index
    %124 = rmem.rdma %c3_196, %61[%c3_195] %c196608_197 4 %123 {map = #map10, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %125:10 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_184, %arg5 = %c0_180, %arg6 = %118, %arg7 = %117, %arg8 = %120, %arg9 = %119, %arg10 = %122, %arg11 = %121, %arg12 = %124, %arg13 = %123) -> (index, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index) {
      %163 = arith.addi %c1_181, %arg4 : index
      %164 = arith.addi %c1_181, %arg5 : index
      %c4_295 = arith.constant 4 : index
      %165 = arith.addi %c4_295, %arg3 : index
      %166 = rmem.wrid : index
      %c196608_296 = arith.constant 196608 : index
      %167 = rmem.rdma %arg4, %61[%165] %c196608_296 4 %166 {map = #map10, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %115 -> %arg7 : <i64>, index
      affine.for %arg14 = 0 to 1 {
        %168 = affine.apply #map11(%arg3, %arg14)
        affine.for %arg15 = 0 to 12 {
          affine.for %arg16 = 0 to 1 {
            affine.for %arg17 = 0 to 64 step 8 {
              affine.for %arg18 = 0 to 256 step 8 {
                %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
                affine.for %arg19 = 0 to 1 {
                  %169 = arith.addi %arg19, %arg16 : index
                  %170 = vector.load %alloc_178[%168, %arg15, %169, %arg17] : memref<64x12x1x64xf32>, vector<8xf32>
                  affine.store %170, %alloca[0] : memref<1xvector<8xf32>>
                  %171 = memref.load %alloc_175[%168, %arg15, %169, %arg18] : memref<64x12x1x256xf32>
                  %172 = vector.broadcast %171 : f32 to vector<8xf32>
                  %173 = affine.apply #map21(%arg15, %arg17, %arg18)
                  %174 = vector.load %arg6[%arg14, %173] : memref<1x196608xf32>, vector<8xf32>
                  %175 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %176 = vector.fma %172, %174, %175 : vector<8xf32>
                  affine.store %176, %alloca[0] : memref<1xvector<8xf32>>
                  %177 = arith.addi %arg18, %c1 : index
                  %178 = memref.load %alloc_175[%168, %arg15, %169, %177] : memref<64x12x1x256xf32>
                  %179 = vector.broadcast %178 : f32 to vector<8xf32>
                  %180 = affine.apply #map22(%arg15, %arg17, %arg18)
                  %181 = vector.load %arg6[%arg14, %180] : memref<1x196608xf32>, vector<8xf32>
                  %182 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %183 = vector.fma %179, %181, %182 : vector<8xf32>
                  affine.store %183, %alloca[0] : memref<1xvector<8xf32>>
                  %184 = arith.addi %arg18, %c2 : index
                  %185 = memref.load %alloc_175[%168, %arg15, %169, %184] : memref<64x12x1x256xf32>
                  %186 = vector.broadcast %185 : f32 to vector<8xf32>
                  %187 = affine.apply #map23(%arg15, %arg17, %arg18)
                  %188 = vector.load %arg6[%arg14, %187] : memref<1x196608xf32>, vector<8xf32>
                  %189 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %190 = vector.fma %186, %188, %189 : vector<8xf32>
                  affine.store %190, %alloca[0] : memref<1xvector<8xf32>>
                  %191 = arith.addi %arg18, %c3 : index
                  %192 = memref.load %alloc_175[%168, %arg15, %169, %191] : memref<64x12x1x256xf32>
                  %193 = vector.broadcast %192 : f32 to vector<8xf32>
                  %194 = affine.apply #map24(%arg15, %arg17, %arg18)
                  %195 = vector.load %arg6[%arg14, %194] : memref<1x196608xf32>, vector<8xf32>
                  %196 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %197 = vector.fma %193, %195, %196 : vector<8xf32>
                  affine.store %197, %alloca[0] : memref<1xvector<8xf32>>
                  %198 = arith.addi %arg18, %c4 : index
                  %199 = memref.load %alloc_175[%168, %arg15, %169, %198] : memref<64x12x1x256xf32>
                  %200 = vector.broadcast %199 : f32 to vector<8xf32>
                  %201 = affine.apply #map25(%arg15, %arg17, %arg18)
                  %202 = vector.load %arg6[%arg14, %201] : memref<1x196608xf32>, vector<8xf32>
                  %203 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %204 = vector.fma %200, %202, %203 : vector<8xf32>
                  affine.store %204, %alloca[0] : memref<1xvector<8xf32>>
                  %205 = arith.addi %arg18, %c5 : index
                  %206 = memref.load %alloc_175[%168, %arg15, %169, %205] : memref<64x12x1x256xf32>
                  %207 = vector.broadcast %206 : f32 to vector<8xf32>
                  %208 = affine.apply #map26(%arg15, %arg17, %arg18)
                  %209 = vector.load %arg6[%arg14, %208] : memref<1x196608xf32>, vector<8xf32>
                  %210 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %211 = vector.fma %207, %209, %210 : vector<8xf32>
                  affine.store %211, %alloca[0] : memref<1xvector<8xf32>>
                  %212 = arith.addi %arg18, %c6 : index
                  %213 = memref.load %alloc_175[%168, %arg15, %169, %212] : memref<64x12x1x256xf32>
                  %214 = vector.broadcast %213 : f32 to vector<8xf32>
                  %215 = affine.apply #map27(%arg15, %arg17, %arg18)
                  %216 = vector.load %arg6[%arg14, %215] : memref<1x196608xf32>, vector<8xf32>
                  %217 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %218 = vector.fma %214, %216, %217 : vector<8xf32>
                  affine.store %218, %alloca[0] : memref<1xvector<8xf32>>
                  %219 = arith.addi %arg18, %c7 : index
                  %220 = memref.load %alloc_175[%168, %arg15, %169, %219] : memref<64x12x1x256xf32>
                  %221 = vector.broadcast %220 : f32 to vector<8xf32>
                  %222 = affine.apply #map28(%arg15, %arg17, %arg18)
                  %223 = vector.load %arg6[%arg14, %222] : memref<1x196608xf32>, vector<8xf32>
                  %224 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %225 = vector.fma %221, %223, %224 : vector<8xf32>
                  affine.store %225, %alloca[0] : memref<1xvector<8xf32>>
                  %226 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  vector.store %226, %alloc_178[%168, %arg15, %169, %arg17] : memref<64x12x1x64xf32>, vector<8xf32>
                }
              }
            }
          }
        }
      }
      affine.yield %163, %164, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %167, %166 : index, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index
    }
    %reinterpret_cast_198 = memref.reinterpret_cast %alloc_178 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x12x1x64xf32> to memref<64x768xf32>
    %alloc_199 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        affine.store %cst_2, %alloc_199[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_200 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_201 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 768 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %163 = affine.load %alloc_11[%arg4 + %arg5, %arg3 + %arg6] : memref<768x768xf32>
            affine.store %163, %alloc_201[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %163 = affine.load %reinterpret_cast_198[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %163, %alloc_200[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %163 = affine.apply #map3(%arg5, %arg7)
              %164 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %165 = vector.load %alloc_199[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %165, %alloca[0] : memref<4xvector<16xf32>>
              %166 = arith.addi %arg7, %c1 : index
              %167 = vector.load %alloc_199[%166, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %167, %alloca[1] : memref<4xvector<16xf32>>
              %168 = arith.addi %arg7, %c2 : index
              %169 = vector.load %alloc_199[%168, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %169, %alloca[2] : memref<4xvector<16xf32>>
              %170 = arith.addi %arg7, %c3 : index
              %171 = vector.load %alloc_199[%170, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %171, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %176 = memref.load %alloc_200[%163, %arg8] : memref<32x256xf32>
                %177 = vector.broadcast %176 : f32 to vector<16xf32>
                %178 = vector.load %alloc_201[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %179 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %180 = vector.fma %177, %178, %179 : vector<16xf32>
                affine.store %180, %alloca[0] : memref<4xvector<16xf32>>
                %181 = affine.apply #map4(%arg8)
                %182 = memref.load %alloc_200[%163, %181] : memref<32x256xf32>
                %183 = vector.broadcast %182 : f32 to vector<16xf32>
                %184 = vector.load %alloc_201[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %185 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %186 = vector.fma %183, %184, %185 : vector<16xf32>
                affine.store %186, %alloca[0] : memref<4xvector<16xf32>>
                %187 = affine.apply #map5(%arg8)
                %188 = memref.load %alloc_200[%163, %187] : memref<32x256xf32>
                %189 = vector.broadcast %188 : f32 to vector<16xf32>
                %190 = vector.load %alloc_201[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %191 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %192 = vector.fma %189, %190, %191 : vector<16xf32>
                affine.store %192, %alloca[0] : memref<4xvector<16xf32>>
                %193 = affine.apply #map6(%arg8)
                %194 = memref.load %alloc_200[%163, %193] : memref<32x256xf32>
                %195 = vector.broadcast %194 : f32 to vector<16xf32>
                %196 = vector.load %alloc_201[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %197 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %198 = vector.fma %195, %196, %197 : vector<16xf32>
                affine.store %198, %alloca[0] : memref<4xvector<16xf32>>
                %199 = arith.addi %163, %c1 : index
                %200 = memref.load %alloc_200[%199, %arg8] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_201[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %203 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                affine.store %204, %alloca[1] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_200[%199, %181] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_201[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %208 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                affine.store %209, %alloca[1] : memref<4xvector<16xf32>>
                %210 = memref.load %alloc_200[%199, %187] : memref<32x256xf32>
                %211 = vector.broadcast %210 : f32 to vector<16xf32>
                %212 = vector.load %alloc_201[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %213 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %214 = vector.fma %211, %212, %213 : vector<16xf32>
                affine.store %214, %alloca[1] : memref<4xvector<16xf32>>
                %215 = memref.load %alloc_200[%199, %193] : memref<32x256xf32>
                %216 = vector.broadcast %215 : f32 to vector<16xf32>
                %217 = vector.load %alloc_201[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %218 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %219 = vector.fma %216, %217, %218 : vector<16xf32>
                affine.store %219, %alloca[1] : memref<4xvector<16xf32>>
                %220 = arith.addi %163, %c2 : index
                %221 = memref.load %alloc_200[%220, %arg8] : memref<32x256xf32>
                %222 = vector.broadcast %221 : f32 to vector<16xf32>
                %223 = vector.load %alloc_201[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %224 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %225 = vector.fma %222, %223, %224 : vector<16xf32>
                affine.store %225, %alloca[2] : memref<4xvector<16xf32>>
                %226 = memref.load %alloc_200[%220, %181] : memref<32x256xf32>
                %227 = vector.broadcast %226 : f32 to vector<16xf32>
                %228 = vector.load %alloc_201[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %229 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %230 = vector.fma %227, %228, %229 : vector<16xf32>
                affine.store %230, %alloca[2] : memref<4xvector<16xf32>>
                %231 = memref.load %alloc_200[%220, %187] : memref<32x256xf32>
                %232 = vector.broadcast %231 : f32 to vector<16xf32>
                %233 = vector.load %alloc_201[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %234 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %235 = vector.fma %232, %233, %234 : vector<16xf32>
                affine.store %235, %alloca[2] : memref<4xvector<16xf32>>
                %236 = memref.load %alloc_200[%220, %193] : memref<32x256xf32>
                %237 = vector.broadcast %236 : f32 to vector<16xf32>
                %238 = vector.load %alloc_201[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %239 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %240 = vector.fma %237, %238, %239 : vector<16xf32>
                affine.store %240, %alloca[2] : memref<4xvector<16xf32>>
                %241 = arith.addi %163, %c3 : index
                %242 = memref.load %alloc_200[%241, %arg8] : memref<32x256xf32>
                %243 = vector.broadcast %242 : f32 to vector<16xf32>
                %244 = vector.load %alloc_201[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %245 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %246 = vector.fma %243, %244, %245 : vector<16xf32>
                affine.store %246, %alloca[3] : memref<4xvector<16xf32>>
                %247 = memref.load %alloc_200[%241, %181] : memref<32x256xf32>
                %248 = vector.broadcast %247 : f32 to vector<16xf32>
                %249 = vector.load %alloc_201[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %250 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %251 = vector.fma %248, %249, %250 : vector<16xf32>
                affine.store %251, %alloca[3] : memref<4xvector<16xf32>>
                %252 = memref.load %alloc_200[%241, %187] : memref<32x256xf32>
                %253 = vector.broadcast %252 : f32 to vector<16xf32>
                %254 = vector.load %alloc_201[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %255 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %256 = vector.fma %253, %254, %255 : vector<16xf32>
                affine.store %256, %alloca[3] : memref<4xvector<16xf32>>
                %257 = memref.load %alloc_200[%241, %193] : memref<32x256xf32>
                %258 = vector.broadcast %257 : f32 to vector<16xf32>
                %259 = vector.load %alloc_201[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %260 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %261 = vector.fma %258, %259, %260 : vector<16xf32>
                affine.store %261, %alloca[3] : memref<4xvector<16xf32>>
              }
              %172 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %172, %alloc_199[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %173 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %173, %alloc_199[%166, %arg6] : memref<64x768xf32>, vector<16xf32>
              %174 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %174, %alloc_199[%168, %arg6] : memref<64x768xf32>, vector<16xf32>
              %175 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %175, %alloc_199[%170, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %163 = affine.load %alloc_199[%arg3, %arg4] : memref<64x768xf32>
        %164 = affine.load %alloc_13[%arg4] : memref<768xf32>
        %165 = arith.addf %163, %164 : f32
        affine.store %165, %alloc_199[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_202 = memref.reinterpret_cast %alloc_199 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_203 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %reinterpret_cast_202[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_33[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_203[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_204 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_203[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_34[0, %arg4, %arg5] : memref<1x1x768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_204[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_205 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_2, %alloc_205[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_204[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_205[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.addf %164, %163 : f32
          affine.store %165, %alloc_205[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_205[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = arith.divf %163, %cst : f32
          affine.store %164, %alloc_205[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_206 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_204[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_205[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.subf %163, %164 : f32
          affine.store %165, %alloc_206[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_207 = memref.alloc() : memref<f32>
    %cast_208 = memref.cast %alloc_207 : memref<f32> to memref<*xf32>
    %126 = llvm.mlir.addressof @constant_33 : !llvm.ptr<array<12 x i8>>
    %127 = llvm.getelementptr %126[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%127, %cast_208) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_209 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_206[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_207[] : memref<f32>
          %165 = math.powf %163, %164 : f32
          affine.store %165, %alloc_209[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_210 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_2, %alloc_210[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_209[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_210[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.addf %164, %163 : f32
          affine.store %165, %alloc_210[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_210[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = arith.divf %163, %cst : f32
          affine.store %164, %alloc_210[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_211 = memref.alloc() : memref<f32>
    %cast_212 = memref.cast %alloc_211 : memref<f32> to memref<*xf32>
    %128 = llvm.mlir.addressof @constant_34 : !llvm.ptr<array<12 x i8>>
    %129 = llvm.getelementptr %128[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%129, %cast_212) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_213 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_210[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = affine.load %alloc_211[] : memref<f32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_213[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_214 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_213[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = math.sqrt %163 : f32
          affine.store %164, %alloc_214[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_215 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_206[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_214[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.divf %163, %164 : f32
          affine.store %165, %alloc_215[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_216 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_215[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_15[%arg5] : memref<768xf32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_216[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_217 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_216[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_17[%arg5] : memref<768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_217[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_218 = memref.reinterpret_cast %alloc_217 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_219 = memref.alloc() {alignment = 128 : i64} : memref<64x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 3072 {
        affine.store %cst_2, %alloc_219[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %alloc_220 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_221 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 3072 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %163 = affine.load %alloc_19[%arg4 + %arg5, %arg3 + %arg6] : memref<768x3072xf32>
            affine.store %163, %alloc_221[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %163 = affine.load %reinterpret_cast_218[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %163, %alloc_220[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %163 = affine.apply #map3(%arg5, %arg7)
              %164 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %165 = vector.load %alloc_219[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %165, %alloca[0] : memref<4xvector<16xf32>>
              %166 = arith.addi %arg7, %c1 : index
              %167 = vector.load %alloc_219[%166, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %167, %alloca[1] : memref<4xvector<16xf32>>
              %168 = arith.addi %arg7, %c2 : index
              %169 = vector.load %alloc_219[%168, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %169, %alloca[2] : memref<4xvector<16xf32>>
              %170 = arith.addi %arg7, %c3 : index
              %171 = vector.load %alloc_219[%170, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %171, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %176 = memref.load %alloc_220[%163, %arg8] : memref<32x256xf32>
                %177 = vector.broadcast %176 : f32 to vector<16xf32>
                %178 = vector.load %alloc_221[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %179 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %180 = vector.fma %177, %178, %179 : vector<16xf32>
                affine.store %180, %alloca[0] : memref<4xvector<16xf32>>
                %181 = affine.apply #map4(%arg8)
                %182 = memref.load %alloc_220[%163, %181] : memref<32x256xf32>
                %183 = vector.broadcast %182 : f32 to vector<16xf32>
                %184 = vector.load %alloc_221[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %185 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %186 = vector.fma %183, %184, %185 : vector<16xf32>
                affine.store %186, %alloca[0] : memref<4xvector<16xf32>>
                %187 = affine.apply #map5(%arg8)
                %188 = memref.load %alloc_220[%163, %187] : memref<32x256xf32>
                %189 = vector.broadcast %188 : f32 to vector<16xf32>
                %190 = vector.load %alloc_221[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %191 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %192 = vector.fma %189, %190, %191 : vector<16xf32>
                affine.store %192, %alloca[0] : memref<4xvector<16xf32>>
                %193 = affine.apply #map6(%arg8)
                %194 = memref.load %alloc_220[%163, %193] : memref<32x256xf32>
                %195 = vector.broadcast %194 : f32 to vector<16xf32>
                %196 = vector.load %alloc_221[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %197 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %198 = vector.fma %195, %196, %197 : vector<16xf32>
                affine.store %198, %alloca[0] : memref<4xvector<16xf32>>
                %199 = arith.addi %163, %c1 : index
                %200 = memref.load %alloc_220[%199, %arg8] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_221[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %203 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                affine.store %204, %alloca[1] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_220[%199, %181] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_221[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %208 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                affine.store %209, %alloca[1] : memref<4xvector<16xf32>>
                %210 = memref.load %alloc_220[%199, %187] : memref<32x256xf32>
                %211 = vector.broadcast %210 : f32 to vector<16xf32>
                %212 = vector.load %alloc_221[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %213 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %214 = vector.fma %211, %212, %213 : vector<16xf32>
                affine.store %214, %alloca[1] : memref<4xvector<16xf32>>
                %215 = memref.load %alloc_220[%199, %193] : memref<32x256xf32>
                %216 = vector.broadcast %215 : f32 to vector<16xf32>
                %217 = vector.load %alloc_221[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %218 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %219 = vector.fma %216, %217, %218 : vector<16xf32>
                affine.store %219, %alloca[1] : memref<4xvector<16xf32>>
                %220 = arith.addi %163, %c2 : index
                %221 = memref.load %alloc_220[%220, %arg8] : memref<32x256xf32>
                %222 = vector.broadcast %221 : f32 to vector<16xf32>
                %223 = vector.load %alloc_221[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %224 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %225 = vector.fma %222, %223, %224 : vector<16xf32>
                affine.store %225, %alloca[2] : memref<4xvector<16xf32>>
                %226 = memref.load %alloc_220[%220, %181] : memref<32x256xf32>
                %227 = vector.broadcast %226 : f32 to vector<16xf32>
                %228 = vector.load %alloc_221[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %229 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %230 = vector.fma %227, %228, %229 : vector<16xf32>
                affine.store %230, %alloca[2] : memref<4xvector<16xf32>>
                %231 = memref.load %alloc_220[%220, %187] : memref<32x256xf32>
                %232 = vector.broadcast %231 : f32 to vector<16xf32>
                %233 = vector.load %alloc_221[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %234 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %235 = vector.fma %232, %233, %234 : vector<16xf32>
                affine.store %235, %alloca[2] : memref<4xvector<16xf32>>
                %236 = memref.load %alloc_220[%220, %193] : memref<32x256xf32>
                %237 = vector.broadcast %236 : f32 to vector<16xf32>
                %238 = vector.load %alloc_221[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %239 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %240 = vector.fma %237, %238, %239 : vector<16xf32>
                affine.store %240, %alloca[2] : memref<4xvector<16xf32>>
                %241 = arith.addi %163, %c3 : index
                %242 = memref.load %alloc_220[%241, %arg8] : memref<32x256xf32>
                %243 = vector.broadcast %242 : f32 to vector<16xf32>
                %244 = vector.load %alloc_221[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %245 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %246 = vector.fma %243, %244, %245 : vector<16xf32>
                affine.store %246, %alloca[3] : memref<4xvector<16xf32>>
                %247 = memref.load %alloc_220[%241, %181] : memref<32x256xf32>
                %248 = vector.broadcast %247 : f32 to vector<16xf32>
                %249 = vector.load %alloc_221[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %250 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %251 = vector.fma %248, %249, %250 : vector<16xf32>
                affine.store %251, %alloca[3] : memref<4xvector<16xf32>>
                %252 = memref.load %alloc_220[%241, %187] : memref<32x256xf32>
                %253 = vector.broadcast %252 : f32 to vector<16xf32>
                %254 = vector.load %alloc_221[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %255 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %256 = vector.fma %253, %254, %255 : vector<16xf32>
                affine.store %256, %alloca[3] : memref<4xvector<16xf32>>
                %257 = memref.load %alloc_220[%241, %193] : memref<32x256xf32>
                %258 = vector.broadcast %257 : f32 to vector<16xf32>
                %259 = vector.load %alloc_221[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %260 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %261 = vector.fma %258, %259, %260 : vector<16xf32>
                affine.store %261, %alloca[3] : memref<4xvector<16xf32>>
              }
              %172 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %172, %alloc_219[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %173 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %173, %alloc_219[%166, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %174 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %174, %alloc_219[%168, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %175 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %175, %alloc_219[%170, %arg6] : memref<64x3072xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 3072 {
        %163 = affine.load %alloc_219[%arg3, %arg4] : memref<64x3072xf32>
        %164 = affine.load %alloc_21[%arg4] : memref<3072xf32>
        %165 = arith.addf %163, %164 : f32
        affine.store %165, %alloc_219[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %reinterpret_cast_222 = memref.reinterpret_cast %alloc_219 to offset: [0], sizes: [64, 1, 3072], strides: [3072, 3072, 1] : memref<64x3072xf32> to memref<64x1x3072xf32>
    %alloc_223 = memref.alloc() : memref<f32>
    %cast_224 = memref.cast %alloc_223 : memref<f32> to memref<*xf32>
    %130 = llvm.mlir.addressof @constant_37 : !llvm.ptr<array<12 x i8>>
    %131 = llvm.getelementptr %130[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%131, %cast_224) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_225 = memref.alloc() : memref<f32>
    %cast_226 = memref.cast %alloc_225 : memref<f32> to memref<*xf32>
    %132 = llvm.mlir.addressof @constant_38 : !llvm.ptr<array<12 x i8>>
    %133 = llvm.getelementptr %132[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%133, %cast_226) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_227 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %reinterpret_cast_222[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_225[] : memref<f32>
          %165 = math.powf %163, %164 : f32
          affine.store %165, %alloc_227[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_228 = memref.alloc() : memref<f32>
    %cast_229 = memref.cast %alloc_228 : memref<f32> to memref<*xf32>
    %134 = llvm.mlir.addressof @constant_39 : !llvm.ptr<array<12 x i8>>
    %135 = llvm.getelementptr %134[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%135, %cast_229) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_230 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %alloc_227[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_228[] : memref<f32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_230[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_231 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %reinterpret_cast_222[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_230[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_231[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_232 = memref.alloc() : memref<f32>
    %cast_233 = memref.cast %alloc_232 : memref<f32> to memref<*xf32>
    %136 = llvm.mlir.addressof @constant_40 : !llvm.ptr<array<12 x i8>>
    %137 = llvm.getelementptr %136[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%137, %cast_233) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_234 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %alloc_231[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_232[] : memref<f32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_234[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_235 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %alloc_234[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = math.tanh %163 : f32
          affine.store %164, %alloc_235[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_236 = memref.alloc() : memref<f32>
    %cast_237 = memref.cast %alloc_236 : memref<f32> to memref<*xf32>
    %138 = llvm.mlir.addressof @constant_41 : !llvm.ptr<array<12 x i8>>
    %139 = llvm.getelementptr %138[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%139, %cast_237) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_238 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %alloc_235[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_236[] : memref<f32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_238[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_239 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %reinterpret_cast_222[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_238[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_239[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_240 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %alloc_239[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_223[] : memref<f32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_240[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %reinterpret_cast_241 = memref.reinterpret_cast %alloc_240 to offset: [0], sizes: [64, 3072], strides: [3072, 1] : memref<64x1x3072xf32> to memref<64x3072xf32>
    %alloc_242 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        affine.store %cst_2, %alloc_242[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_243 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_244 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 768 step 64 {
      affine.for %arg4 = 0 to 3072 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %163 = affine.load %alloc_23[%arg4 + %arg5, %arg3 + %arg6] : memref<3072x768xf32>
            affine.store %163, %alloc_244[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %163 = affine.load %reinterpret_cast_241[%arg5 + %arg6, %arg4 + %arg7] : memref<64x3072xf32>
              affine.store %163, %alloc_243[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %163 = affine.apply #map3(%arg5, %arg7)
              %164 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %165 = vector.load %alloc_242[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %165, %alloca[0] : memref<4xvector<16xf32>>
              %166 = arith.addi %arg7, %c1 : index
              %167 = vector.load %alloc_242[%166, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %167, %alloca[1] : memref<4xvector<16xf32>>
              %168 = arith.addi %arg7, %c2 : index
              %169 = vector.load %alloc_242[%168, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %169, %alloca[2] : memref<4xvector<16xf32>>
              %170 = arith.addi %arg7, %c3 : index
              %171 = vector.load %alloc_242[%170, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %171, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %176 = memref.load %alloc_243[%163, %arg8] : memref<32x256xf32>
                %177 = vector.broadcast %176 : f32 to vector<16xf32>
                %178 = vector.load %alloc_244[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %179 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %180 = vector.fma %177, %178, %179 : vector<16xf32>
                affine.store %180, %alloca[0] : memref<4xvector<16xf32>>
                %181 = affine.apply #map4(%arg8)
                %182 = memref.load %alloc_243[%163, %181] : memref<32x256xf32>
                %183 = vector.broadcast %182 : f32 to vector<16xf32>
                %184 = vector.load %alloc_244[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %185 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %186 = vector.fma %183, %184, %185 : vector<16xf32>
                affine.store %186, %alloca[0] : memref<4xvector<16xf32>>
                %187 = affine.apply #map5(%arg8)
                %188 = memref.load %alloc_243[%163, %187] : memref<32x256xf32>
                %189 = vector.broadcast %188 : f32 to vector<16xf32>
                %190 = vector.load %alloc_244[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %191 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %192 = vector.fma %189, %190, %191 : vector<16xf32>
                affine.store %192, %alloca[0] : memref<4xvector<16xf32>>
                %193 = affine.apply #map6(%arg8)
                %194 = memref.load %alloc_243[%163, %193] : memref<32x256xf32>
                %195 = vector.broadcast %194 : f32 to vector<16xf32>
                %196 = vector.load %alloc_244[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %197 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %198 = vector.fma %195, %196, %197 : vector<16xf32>
                affine.store %198, %alloca[0] : memref<4xvector<16xf32>>
                %199 = arith.addi %163, %c1 : index
                %200 = memref.load %alloc_243[%199, %arg8] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_244[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %203 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                affine.store %204, %alloca[1] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_243[%199, %181] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_244[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %208 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                affine.store %209, %alloca[1] : memref<4xvector<16xf32>>
                %210 = memref.load %alloc_243[%199, %187] : memref<32x256xf32>
                %211 = vector.broadcast %210 : f32 to vector<16xf32>
                %212 = vector.load %alloc_244[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %213 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %214 = vector.fma %211, %212, %213 : vector<16xf32>
                affine.store %214, %alloca[1] : memref<4xvector<16xf32>>
                %215 = memref.load %alloc_243[%199, %193] : memref<32x256xf32>
                %216 = vector.broadcast %215 : f32 to vector<16xf32>
                %217 = vector.load %alloc_244[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %218 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %219 = vector.fma %216, %217, %218 : vector<16xf32>
                affine.store %219, %alloca[1] : memref<4xvector<16xf32>>
                %220 = arith.addi %163, %c2 : index
                %221 = memref.load %alloc_243[%220, %arg8] : memref<32x256xf32>
                %222 = vector.broadcast %221 : f32 to vector<16xf32>
                %223 = vector.load %alloc_244[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %224 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %225 = vector.fma %222, %223, %224 : vector<16xf32>
                affine.store %225, %alloca[2] : memref<4xvector<16xf32>>
                %226 = memref.load %alloc_243[%220, %181] : memref<32x256xf32>
                %227 = vector.broadcast %226 : f32 to vector<16xf32>
                %228 = vector.load %alloc_244[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %229 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %230 = vector.fma %227, %228, %229 : vector<16xf32>
                affine.store %230, %alloca[2] : memref<4xvector<16xf32>>
                %231 = memref.load %alloc_243[%220, %187] : memref<32x256xf32>
                %232 = vector.broadcast %231 : f32 to vector<16xf32>
                %233 = vector.load %alloc_244[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %234 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %235 = vector.fma %232, %233, %234 : vector<16xf32>
                affine.store %235, %alloca[2] : memref<4xvector<16xf32>>
                %236 = memref.load %alloc_243[%220, %193] : memref<32x256xf32>
                %237 = vector.broadcast %236 : f32 to vector<16xf32>
                %238 = vector.load %alloc_244[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %239 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %240 = vector.fma %237, %238, %239 : vector<16xf32>
                affine.store %240, %alloca[2] : memref<4xvector<16xf32>>
                %241 = arith.addi %163, %c3 : index
                %242 = memref.load %alloc_243[%241, %arg8] : memref<32x256xf32>
                %243 = vector.broadcast %242 : f32 to vector<16xf32>
                %244 = vector.load %alloc_244[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %245 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %246 = vector.fma %243, %244, %245 : vector<16xf32>
                affine.store %246, %alloca[3] : memref<4xvector<16xf32>>
                %247 = memref.load %alloc_243[%241, %181] : memref<32x256xf32>
                %248 = vector.broadcast %247 : f32 to vector<16xf32>
                %249 = vector.load %alloc_244[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %250 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %251 = vector.fma %248, %249, %250 : vector<16xf32>
                affine.store %251, %alloca[3] : memref<4xvector<16xf32>>
                %252 = memref.load %alloc_243[%241, %187] : memref<32x256xf32>
                %253 = vector.broadcast %252 : f32 to vector<16xf32>
                %254 = vector.load %alloc_244[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %255 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %256 = vector.fma %253, %254, %255 : vector<16xf32>
                affine.store %256, %alloca[3] : memref<4xvector<16xf32>>
                %257 = memref.load %alloc_243[%241, %193] : memref<32x256xf32>
                %258 = vector.broadcast %257 : f32 to vector<16xf32>
                %259 = vector.load %alloc_244[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %260 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %261 = vector.fma %258, %259, %260 : vector<16xf32>
                affine.store %261, %alloca[3] : memref<4xvector<16xf32>>
              }
              %172 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %172, %alloc_242[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %173 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %173, %alloc_242[%166, %arg6] : memref<64x768xf32>, vector<16xf32>
              %174 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %174, %alloc_242[%168, %arg6] : memref<64x768xf32>, vector<16xf32>
              %175 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %175, %alloc_242[%170, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %163 = affine.load %alloc_242[%arg3, %arg4] : memref<64x768xf32>
        %164 = affine.load %alloc_25[%arg4] : memref<768xf32>
        %165 = arith.addf %163, %164 : f32
        affine.store %165, %alloc_242[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_245 = memref.reinterpret_cast %alloc_242 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_246 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_203[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %reinterpret_cast_245[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_246[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_247 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_246[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_34[0, %arg4, %arg5] : memref<1x1x768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_247[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_248 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_2, %alloc_248[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_247[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_248[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.addf %164, %163 : f32
          affine.store %165, %alloc_248[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_248[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = arith.divf %163, %cst : f32
          affine.store %164, %alloc_248[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_249 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_247[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_248[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.subf %163, %164 : f32
          affine.store %165, %alloc_249[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_250 = memref.alloc() : memref<f32>
    %cast_251 = memref.cast %alloc_250 : memref<f32> to memref<*xf32>
    %140 = llvm.mlir.addressof @constant_44 : !llvm.ptr<array<12 x i8>>
    %141 = llvm.getelementptr %140[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%141, %cast_251) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_252 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_249[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_250[] : memref<f32>
          %165 = math.powf %163, %164 : f32
          affine.store %165, %alloc_252[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_253 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_2, %alloc_253[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_252[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_253[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.addf %164, %163 : f32
          affine.store %165, %alloc_253[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_253[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = arith.divf %163, %cst : f32
          affine.store %164, %alloc_253[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_254 = memref.alloc() : memref<f32>
    %cast_255 = memref.cast %alloc_254 : memref<f32> to memref<*xf32>
    %142 = llvm.mlir.addressof @constant_45 : !llvm.ptr<array<12 x i8>>
    %143 = llvm.getelementptr %142[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%143, %cast_255) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_256 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_253[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = affine.load %alloc_254[] : memref<f32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_256[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_257 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_256[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = math.sqrt %163 : f32
          affine.store %164, %alloc_257[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_258 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_249[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_257[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.divf %163, %164 : f32
          affine.store %165, %alloc_258[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_259 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_258[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_27[%arg5] : memref<768xf32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_259[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_260 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_259[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_29[%arg5] : memref<768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_260[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %144 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref5", 0]], alignment = 16 : i64} : <1, memref<64x1x50264xf32>>
    %c0_i64_261 = arith.constant 0 : i64
    %c0_262 = arith.constant 0 : index
    %c1_263 = arith.constant 1 : index
    %c1_i64_264 = arith.constant 1 : i64
    %145 = llvm.alloca %c1_i64_264 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_261, %145 : !llvm.ptr<i64>
    %c1_i64_265 = arith.constant 1 : i64
    %146 = llvm.alloca %c1_i64_265 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_261, %146 : !llvm.ptr<i64>
    %c4_266 = arith.constant 4 : index
    %c0_267 = arith.constant 0 : index
    %c0_268 = arith.constant 0 : index
    %c0_269 = arith.constant 0 : index
    %147 = rmem.slot %c0_269 {mem = "t5"} : (index) -> memref<1x50264xf32>
    %c1_270 = arith.constant 1 : index
    %c1_271 = arith.constant 1 : index
    %148 = rmem.slot %c1_271 {mem = "t5"} : (index) -> memref<1x50264xf32>
    %c2_272 = arith.constant 2 : index
    %c2_273 = arith.constant 2 : index
    %149 = rmem.slot %c2_273 {mem = "t5"} : (index) -> memref<1x50264xf32>
    %c3_274 = arith.constant 3 : index
    %c3_275 = arith.constant 3 : index
    %150 = rmem.slot %c3_275 {mem = "t5"} : (index) -> memref<1x50264xf32>
    %151:6 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_266, %arg5 = %c0_262, %arg6 = %147, %arg7 = %148, %arg8 = %149, %arg9 = %150) -> (index, index, memref<1x50264xf32>, memref<1x50264xf32>, memref<1x50264xf32>, memref<1x50264xf32>) {
      %163 = arith.addi %c1_263, %arg4 : index
      %164 = arith.addi %c1_263, %arg5 : index
      %c4_295 = arith.constant 4 : index
      %165 = arith.addi %c4_295, %arg3 : index
      %166 = rmem.slot %arg4 {mem = "t5"} : (index) -> memref<1x50264xf32>
      affine.for %arg10 = 0 to 1 {
        affine.for %arg11 = 0 to 1 {
          affine.for %arg12 = 0 to 50264 {
            %169 = affine.apply #map29(%arg11, %arg12)
            affine.store %cst_2, %arg6[%arg10, %169] : memref<1x50264xf32>
          }
        }
      }
      %167 = rmem.wrid : index
      %c50264_296 = arith.constant 50264 : index
      %168 = rmem.rdma %arg5, %144[%arg3] %c50264_296 0 %167 {map = #map30, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %146 -> %167 : <i64>, index
      affine.yield %163, %164, %arg7, %arg8, %arg9, %166 : index, index, memref<1x50264xf32>, memref<1x50264xf32>, memref<1x50264xf32>, memref<1x50264xf32>
    }
    %c0_i64_276 = arith.constant 0 : i64
    %c0_277 = arith.constant 0 : index
    %c1_278 = arith.constant 1 : index
    %c1_i64_279 = arith.constant 1 : i64
    %152 = llvm.alloca %c1_i64_279 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_276, %152 : !llvm.ptr<i64>
    %c1_i64_280 = arith.constant 1 : i64
    %153 = llvm.alloca %c1_i64_280 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_276, %153 : !llvm.ptr<i64>
    %c4_281 = arith.constant 4 : index
    %c0_282 = arith.constant 0 : index
    %c0_283 = arith.constant 0 : index
    %c0_284 = arith.constant 0 : index
    %154 = rmem.wrid : index
    %c50264_285 = arith.constant 50264 : index
    %155 = rmem.rdma %c0_284, %144[%c0_283] %c50264_285 4 %154 {map = #map30, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %c1_286 = arith.constant 1 : index
    %c1_287 = arith.constant 1 : index
    %156 = rmem.wrid : index
    %c50264_288 = arith.constant 50264 : index
    %157 = rmem.rdma %c1_287, %144[%c1_286] %c50264_288 4 %156 {map = #map30, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %c2_289 = arith.constant 2 : index
    %c2_290 = arith.constant 2 : index
    %158 = rmem.wrid : index
    %c50264_291 = arith.constant 50264 : index
    %159 = rmem.rdma %c2_290, %144[%c2_289] %c50264_291 4 %158 {map = #map30, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %c3_292 = arith.constant 3 : index
    %c3_293 = arith.constant 3 : index
    %160 = rmem.wrid : index
    %c50264_294 = arith.constant 50264 : index
    %161 = rmem.rdma %c3_293, %144[%c3_292] %c50264_294 4 %160 {map = #map30, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %162:10 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_281, %arg5 = %c0_277, %arg6 = %155, %arg7 = %154, %arg8 = %157, %arg9 = %156, %arg10 = %159, %arg11 = %158, %arg12 = %161, %arg13 = %160) -> (index, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index) {
      %163 = arith.addi %c1_278, %arg4 : index
      %164 = arith.addi %c1_278, %arg5 : index
      %c4_295 = arith.constant 4 : index
      %165 = arith.addi %c4_295, %arg3 : index
      %166 = rmem.wrid : index
      %c50264_296 = arith.constant 50264 : index
      %167 = rmem.rdma %arg4, %144[%165] %c50264_296 4 %166 {map = #map30, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %152 -> %arg7 : <i64>, index
      affine.for %arg14 = 0 to 1 {
        %170 = affine.apply #map11(%arg3, %arg14)
        affine.for %arg15 = 0 to 1 {
          affine.for %arg16 = 0 to 50264 step 8 {
            %c0_i64_298 = arith.constant 0 : i64
            %c0_299 = arith.constant 0 : index
            %c1_300 = arith.constant 1 : index
            %c1_i64_301 = arith.constant 1 : i64
            %171 = llvm.alloca %c1_i64_301 x i64 : (i64) -> !llvm.ptr<i64>
            llvm.store %c0_i64_298, %171 : !llvm.ptr<i64>
            %c1_i64_302 = arith.constant 1 : i64
            %172 = llvm.alloca %c1_i64_302 x i64 : (i64) -> !llvm.ptr<i64>
            llvm.store %c0_i64_298, %172 : !llvm.ptr<i64>
            %c1_303 = arith.constant 1 : index
            %c0_304 = arith.constant 0 : index
            %c0_305 = arith.constant 0 : index
            %c0_306 = arith.constant 0 : index
            %c8 = arith.constant 8 : index
            %173 = rmem.rdma %c0_306, %32[%170, %arg15, %arg16, %c0_305] %c8 4 %c0_299 {map = #map31, mem = "t6"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
            %c8_307 = arith.constant 8 : index
            %174 = rmem.rdma %c0_306, %32[%170, %arg15, %arg16, %c0_305] %c8_307 4 %c0_299 {map = #map32, mem = "t7"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
            %c8_308 = arith.constant 8 : index
            %175 = rmem.rdma %c0_306, %32[%170, %arg15, %arg16, %c0_305] %c8_308 4 %c0_299 {map = #map33, mem = "t8"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
            %c8_309 = arith.constant 8 : index
            %176 = rmem.rdma %c0_306, %32[%170, %arg15, %arg16, %c0_305] %c8_309 4 %c0_299 {map = #map34, mem = "t9"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
            %c8_310 = arith.constant 8 : index
            %177 = rmem.rdma %c0_306, %32[%170, %arg15, %arg16, %c0_305] %c8_310 4 %c0_299 {map = #map35, mem = "t10"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
            %c8_311 = arith.constant 8 : index
            %178 = rmem.rdma %c0_306, %32[%170, %arg15, %arg16, %c0_305] %c8_311 4 %c0_299 {map = #map36, mem = "t11"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
            %c8_312 = arith.constant 8 : index
            %179 = rmem.rdma %c0_306, %32[%170, %arg15, %arg16, %c0_305] %c8_312 4 %c0_299 {map = #map37, mem = "t12"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
            %180 = rmem.wrid : index
            %c8_313 = arith.constant 8 : index
            %181 = rmem.rdma %c0_306, %32[%170, %arg15, %arg16, %c0_305] %c8_313 4 %180 {map = #map38, mem = "t13"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
            %182:11 = affine.for %arg17 = 0 to 768 step 8 iter_args(%arg18 = %c1_303, %arg19 = %c0_299, %arg20 = %173, %arg21 = %174, %arg22 = %175, %arg23 = %176, %arg24 = %177, %arg25 = %178, %arg26 = %179, %arg27 = %181, %arg28 = %180) -> (index, index, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, index) {
              %183 = arith.addi %c1_300, %arg18 : index
              %184 = arith.addi %c1_300, %arg19 : index
              %c8_314 = arith.constant 8 : index
              %185 = arith.addi %c8_314, %arg17 : index
              %c8_315 = arith.constant 8 : index
              %186 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %185] %c8_315 4 %c0_299 {map = #map31, mem = "t6"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
              %c8_316 = arith.constant 8 : index
              %187 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %185] %c8_316 4 %c0_299 {map = #map32, mem = "t7"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
              %c8_317 = arith.constant 8 : index
              %188 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %185] %c8_317 4 %c0_299 {map = #map33, mem = "t8"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
              %c8_318 = arith.constant 8 : index
              %189 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %185] %c8_318 4 %c0_299 {map = #map34, mem = "t9"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
              %c8_319 = arith.constant 8 : index
              %190 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %185] %c8_319 4 %c0_299 {map = #map35, mem = "t10"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
              %c8_320 = arith.constant 8 : index
              %191 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %185] %c8_320 4 %c0_299 {map = #map36, mem = "t11"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
              %c8_321 = arith.constant 8 : index
              %192 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %185] %c8_321 4 %c0_299 {map = #map37, mem = "t12"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
              %193 = rmem.wrid : index
              %c8_322 = arith.constant 8 : index
              %194 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %185] %c8_322 4 %193 {map = #map38, mem = "t13"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x8xf32>
              rmem.sync %171 -> %arg28 : <i64>, index
              affine.for %arg29 = 0 to 1 {
                %195 = affine.apply #map39(%arg17, %arg29)
                %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
                affine.for %arg30 = 0 to 1 {
                  %196 = arith.addi %arg30, %arg15 : index
                  %197 = affine.apply #map40(%arg15, %arg16, %arg30)
                  %198 = vector.load %arg6[%arg14, %197] : memref<1x50264xf32>, vector<8xf32>
                  affine.store %198, %alloca[0] : memref<1xvector<8xf32>>
                  %199 = memref.load %alloc_260[%170, %196, %195] : memref<64x1x768xf32>
                  %200 = vector.broadcast %199 : f32 to vector<8xf32>
                  %201 = vector.load %arg20[%arg29, %c0] : memref<1x8xf32>, vector<8xf32>
                  %202 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %203 = vector.fma %200, %201, %202 : vector<8xf32>
                  affine.store %203, %alloca[0] : memref<1xvector<8xf32>>
                  %204 = arith.addi %195, %c1 : index
                  %205 = memref.load %alloc_260[%170, %196, %204] : memref<64x1x768xf32>
                  %206 = vector.broadcast %205 : f32 to vector<8xf32>
                  %207 = vector.load %arg21[%arg29, %c0] : memref<1x8xf32>, vector<8xf32>
                  %208 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %209 = vector.fma %206, %207, %208 : vector<8xf32>
                  affine.store %209, %alloca[0] : memref<1xvector<8xf32>>
                  %210 = arith.addi %195, %c2 : index
                  %211 = memref.load %alloc_260[%170, %196, %210] : memref<64x1x768xf32>
                  %212 = vector.broadcast %211 : f32 to vector<8xf32>
                  %213 = vector.load %arg22[%arg29, %c0] : memref<1x8xf32>, vector<8xf32>
                  %214 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %215 = vector.fma %212, %213, %214 : vector<8xf32>
                  affine.store %215, %alloca[0] : memref<1xvector<8xf32>>
                  %216 = arith.addi %195, %c3 : index
                  %217 = memref.load %alloc_260[%170, %196, %216] : memref<64x1x768xf32>
                  %218 = vector.broadcast %217 : f32 to vector<8xf32>
                  %219 = vector.load %arg23[%arg29, %c0] : memref<1x8xf32>, vector<8xf32>
                  %220 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %221 = vector.fma %218, %219, %220 : vector<8xf32>
                  affine.store %221, %alloca[0] : memref<1xvector<8xf32>>
                  %222 = arith.addi %195, %c4 : index
                  %223 = memref.load %alloc_260[%170, %196, %222] : memref<64x1x768xf32>
                  %224 = vector.broadcast %223 : f32 to vector<8xf32>
                  %225 = vector.load %arg24[%arg29, %c0] : memref<1x8xf32>, vector<8xf32>
                  %226 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %227 = vector.fma %224, %225, %226 : vector<8xf32>
                  affine.store %227, %alloca[0] : memref<1xvector<8xf32>>
                  %228 = arith.addi %195, %c5 : index
                  %229 = memref.load %alloc_260[%170, %196, %228] : memref<64x1x768xf32>
                  %230 = vector.broadcast %229 : f32 to vector<8xf32>
                  %231 = vector.load %arg25[%arg29, %c0] : memref<1x8xf32>, vector<8xf32>
                  %232 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %233 = vector.fma %230, %231, %232 : vector<8xf32>
                  affine.store %233, %alloca[0] : memref<1xvector<8xf32>>
                  %234 = arith.addi %195, %c6 : index
                  %235 = memref.load %alloc_260[%170, %196, %234] : memref<64x1x768xf32>
                  %236 = vector.broadcast %235 : f32 to vector<8xf32>
                  %237 = vector.load %arg26[%arg29, %c0] : memref<1x8xf32>, vector<8xf32>
                  %238 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %239 = vector.fma %236, %237, %238 : vector<8xf32>
                  affine.store %239, %alloca[0] : memref<1xvector<8xf32>>
                  %240 = arith.addi %195, %c7 : index
                  %241 = memref.load %alloc_260[%170, %196, %240] : memref<64x1x768xf32>
                  %242 = vector.broadcast %241 : f32 to vector<8xf32>
                  %243 = vector.load %arg27[%arg29, %c0] : memref<1x8xf32>, vector<8xf32>
                  %244 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %245 = vector.fma %242, %243, %244 : vector<8xf32>
                  affine.store %245, %alloca[0] : memref<1xvector<8xf32>>
                  %246 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %247 = affine.apply #map40(%arg15, %arg16, %arg30)
                  vector.store %246, %arg6[%arg14, %247] : memref<1x50264xf32>, vector<8xf32>
                }
              }
              affine.yield %183, %184, %186, %187, %188, %189, %190, %191, %192, %194, %193 : index, index, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, memref<1x8xf32>, index
            }
          }
        }
      }
      %168 = rmem.wrid : index
      %c50264_297 = arith.constant 50264 : index
      %169 = rmem.rdma %arg5, %144[%arg3] %c50264_297 0 %168 {map = #map30, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %153 -> %168 : <i64>, index
      affine.yield %163, %164, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %167, %166 : index, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index
    }
    return %144 : !rmem.rmref<1, memref<64x1x50264xf32>>
  }
}


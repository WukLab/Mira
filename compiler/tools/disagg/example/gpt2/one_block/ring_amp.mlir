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
#map31 = affine_map<(d0, d1, d2, d3) -> (d3 * 50264)>
#map32 = affine_map<(d0, d1) -> (d0 + d1 * 8)>
#map33 = affine_map<(d0, d1, d2) -> (d0 * 50264 + d1 + d2 * 50264)>
#map34 = affine_map<(d0) -> (d0 + 50264)>
#map35 = affine_map<(d0) -> (d0 + 100528)>
#map36 = affine_map<(d0) -> (d0 + 150792)>
#map37 = affine_map<(d0) -> (d0 + 201056)>
#map38 = affine_map<(d0) -> (d0 + 251320)>
#map39 = affine_map<(d0) -> (d0 + 301584)>
#map40 = affine_map<(d0) -> (d0 + 351848)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 0, 0, 12533760, f32, 195840, 64, 1], t1 = ["ref1", 67108864, 0, 12533760, f32, 195840, 64, 1], t2 = ["ref2", 134217728, 0, 12582912, f32, 196608, 64, 1], t3 = ["ref3", 201326592, 0, 12582912, f32, 196608, 64, 1], t4 = ["ref4", 268435456, 0, 12582912, f32, 196608, 64, 1], t5 = ["ref5", 335544320, 0, 3216896, f32, 50264, 64, 1], t6 = ["ref6", 352321536, 0, 38602752, f32, 402112, 64, 1]}} {
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
    %c0_i64 = arith.constant 0 : i64
    %c0_60 = arith.constant 0 : index
    %c1_61 = arith.constant 1 : index
    %c1_i64 = arith.constant 1 : i64
    %43 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %43 : !llvm.ptr<i64>
    %c1_i64_62 = arith.constant 1 : i64
    %44 = llvm.alloca %c1_i64_62 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %44 : !llvm.ptr<i64>
    %c4_63 = arith.constant 4 : index
    %c0_64 = arith.constant 0 : index
    %c0_65 = arith.constant 0 : index
    %c0_66 = arith.constant 0 : index
    %c195840 = arith.constant 195840 : index
    %45 = rmem.rdma %c0_66, %arg1[%c0_65] %c195840 4 %c0_60 {map = #map7, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %46 = rmem.slot %c0_66 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %c1_67 = arith.constant 1 : index
    %c1_68 = arith.constant 1 : index
    %c195840_69 = arith.constant 195840 : index
    %47 = rmem.rdma %c1_68, %arg1[%c1_67] %c195840_69 4 %c0_60 {map = #map7, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %48 = rmem.slot %c1_68 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %c2_70 = arith.constant 2 : index
    %c2_71 = arith.constant 2 : index
    %c195840_72 = arith.constant 195840 : index
    %49 = rmem.rdma %c2_71, %arg1[%c2_70] %c195840_72 4 %c0_60 {map = #map7, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %50 = rmem.slot %c2_71 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %c3_73 = arith.constant 3 : index
    %c3_74 = arith.constant 3 : index
    %c195840_75 = arith.constant 195840 : index
    %51 = rmem.rdma %c3_74, %arg1[%c3_73] %c195840_75 4 %c0_60 {map = #map7, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %52 = rmem.slot %c3_74 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %53:14 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_63, %arg5 = %c0_60, %arg6 = %45, %arg7 = %46, %arg8 = %c0_60, %arg9 = %47, %arg10 = %48, %arg11 = %c0_60, %arg12 = %49, %arg13 = %50, %arg14 = %c0_60, %arg15 = %51, %arg16 = %52, %arg17 = %c0_60) -> (index, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index) {
      %163 = arith.addi %c1_61, %arg4 : index
      %164 = arith.addi %c1_61, %arg5 : index
      %c4_294 = arith.constant 4 : index
      %165 = arith.addi %c4_294, %arg3 : index
      %c195840_295 = arith.constant 195840 : index
      %166 = rmem.rdma %arg4, %arg1[%165] %c195840_295 4 %c0_60 {map = #map7, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
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
      %c196608_296 = arith.constant 196608 : index
      %169 = rmem.rdma %arg5, %42[%arg3] %c196608_296 0 %168 {map = #map10, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %44 -> %168 : <i64>, index
      affine.yield %163, %164, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %166, %167, %c0_60 : index, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index
    }
    %c0_i64_76 = arith.constant 0 : i64
    %c0_77 = arith.constant 0 : index
    %c1_78 = arith.constant 1 : index
    %c1_i64_79 = arith.constant 1 : i64
    %54 = llvm.alloca %c1_i64_79 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_76, %54 : !llvm.ptr<i64>
    %c1_i64_80 = arith.constant 1 : i64
    %55 = llvm.alloca %c1_i64_80 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_76, %55 : !llvm.ptr<i64>
    %c4_81 = arith.constant 4 : index
    %c0_82 = arith.constant 0 : index
    %c0_83 = arith.constant 0 : index
    %c0_84 = arith.constant 0 : index
    %56 = rmem.slot %c0_84 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %c1_85 = arith.constant 1 : index
    %c1_86 = arith.constant 1 : index
    %57 = rmem.slot %c1_86 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %c2_87 = arith.constant 2 : index
    %c2_88 = arith.constant 2 : index
    %58 = rmem.slot %c2_88 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %c3_89 = arith.constant 3 : index
    %c3_90 = arith.constant 3 : index
    %59 = rmem.slot %c3_90 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %60:6 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_81, %arg5 = %c0_77, %arg6 = %56, %arg7 = %57, %arg8 = %58, %arg9 = %59) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>) {
      %163 = arith.addi %c1_78, %arg4 : index
      %164 = arith.addi %c1_78, %arg5 : index
      %c4_294 = arith.constant 4 : index
      %165 = arith.addi %c4_294, %arg3 : index
      %166 = rmem.slot %arg4 {mem = "t2"} : (index) -> memref<1x196608xf32>
      affine.for %arg10 = 0 to 1 {
        %169 = affine.apply #map11(%arg3, %arg10)
        affine.for %arg11 = 0 to 12 {
          affine.for %arg12 = 0 to 1 {
            affine.for %arg13 = 0 to 64 {
              %170 = affine.load %reinterpret_cast_58[%169, %arg11, %arg12, %arg13] : memref<64x12x1x64xf32>
              %171 = affine.apply #map12(%arg11, %arg12, %arg13)
              affine.store %170, %arg6[%arg10, %171] : memref<1x196608xf32>
            }
          }
        }
      }
      %167 = rmem.wrid : index
      %c196608_295 = arith.constant 196608 : index
      %168 = rmem.rdma %arg5, %42[%arg3] %c196608_295 0 %167 {map = #map10, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %55 -> %167 : <i64>, index
      affine.yield %163, %164, %arg7, %arg8, %arg9, %166 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>
    }
    %61 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref3", 0]], alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
    %c0_i64_91 = arith.constant 0 : i64
    %c0_92 = arith.constant 0 : index
    %c1_93 = arith.constant 1 : index
    %c1_i64_94 = arith.constant 1 : i64
    %62 = llvm.alloca %c1_i64_94 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_91, %62 : !llvm.ptr<i64>
    %c1_i64_95 = arith.constant 1 : i64
    %63 = llvm.alloca %c1_i64_95 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_91, %63 : !llvm.ptr<i64>
    %c4_96 = arith.constant 4 : index
    %c0_97 = arith.constant 0 : index
    %c0_98 = arith.constant 0 : index
    %c0_99 = arith.constant 0 : index
    %c195840_100 = arith.constant 195840 : index
    %64 = rmem.rdma %c0_99, %arg2[%c0_98] %c195840_100 4 %c0_92 {map = #map7, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %65 = rmem.slot %c0_99 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %c1_101 = arith.constant 1 : index
    %c1_102 = arith.constant 1 : index
    %c195840_103 = arith.constant 195840 : index
    %66 = rmem.rdma %c1_102, %arg2[%c1_101] %c195840_103 4 %c0_92 {map = #map7, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %67 = rmem.slot %c1_102 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %c2_104 = arith.constant 2 : index
    %c2_105 = arith.constant 2 : index
    %c195840_106 = arith.constant 195840 : index
    %68 = rmem.rdma %c2_105, %arg2[%c2_104] %c195840_106 4 %c0_92 {map = #map7, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %69 = rmem.slot %c2_105 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %c3_107 = arith.constant 3 : index
    %c3_108 = arith.constant 3 : index
    %c195840_109 = arith.constant 195840 : index
    %70 = rmem.rdma %c3_108, %arg2[%c3_107] %c195840_109 4 %c0_92 {map = #map7, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %71 = rmem.slot %c3_108 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %72:14 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_96, %arg5 = %c0_92, %arg6 = %64, %arg7 = %65, %arg8 = %c0_92, %arg9 = %66, %arg10 = %67, %arg11 = %c0_92, %arg12 = %68, %arg13 = %69, %arg14 = %c0_92, %arg15 = %70, %arg16 = %71, %arg17 = %c0_92) -> (index, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index) {
      %163 = arith.addi %c1_93, %arg4 : index
      %164 = arith.addi %c1_93, %arg5 : index
      %c4_294 = arith.constant 4 : index
      %165 = arith.addi %c4_294, %arg3 : index
      %c195840_295 = arith.constant 195840 : index
      %166 = rmem.rdma %arg4, %arg2[%165] %c195840_295 4 %c0_92 {map = #map7, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
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
      %c196608_296 = arith.constant 196608 : index
      %169 = rmem.rdma %arg5, %61[%arg3] %c196608_296 0 %168 {map = #map10, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %63 -> %168 : <i64>, index
      affine.yield %163, %164, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %166, %167, %c0_92 : index, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index, memref<1x195840xf32>, memref<1x196608xf32>, index
    }
    %c0_i64_110 = arith.constant 0 : i64
    %c0_111 = arith.constant 0 : index
    %c1_112 = arith.constant 1 : index
    %c1_i64_113 = arith.constant 1 : i64
    %73 = llvm.alloca %c1_i64_113 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_110, %73 : !llvm.ptr<i64>
    %c1_i64_114 = arith.constant 1 : i64
    %74 = llvm.alloca %c1_i64_114 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_110, %74 : !llvm.ptr<i64>
    %c4_115 = arith.constant 4 : index
    %c0_116 = arith.constant 0 : index
    %c0_117 = arith.constant 0 : index
    %c0_118 = arith.constant 0 : index
    %75 = rmem.slot %c0_118 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %c1_119 = arith.constant 1 : index
    %c1_120 = arith.constant 1 : index
    %76 = rmem.slot %c1_120 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %c2_121 = arith.constant 2 : index
    %c2_122 = arith.constant 2 : index
    %77 = rmem.slot %c2_122 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %c3_123 = arith.constant 3 : index
    %c3_124 = arith.constant 3 : index
    %78 = rmem.slot %c3_124 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %79:6 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_115, %arg5 = %c0_111, %arg6 = %75, %arg7 = %76, %arg8 = %77, %arg9 = %78) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>) {
      %163 = arith.addi %c1_112, %arg4 : index
      %164 = arith.addi %c1_112, %arg5 : index
      %c4_294 = arith.constant 4 : index
      %165 = arith.addi %c4_294, %arg3 : index
      %166 = rmem.slot %arg4 {mem = "t3"} : (index) -> memref<1x196608xf32>
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
      %c196608_295 = arith.constant 196608 : index
      %168 = rmem.rdma %arg5, %61[%arg3] %c196608_295 0 %167 {map = #map10, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %74 -> %167 : <i64>, index
      affine.yield %163, %164, %arg7, %arg8, %arg9, %166 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>
    }
    %80 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref4", 0]], alignment = 16 : i64} : <1, memref<64x12x64x256xf32>>
    %c0_i64_125 = arith.constant 0 : i64
    %c0_126 = arith.constant 0 : index
    %c1_127 = arith.constant 1 : index
    %c1_i64_128 = arith.constant 1 : i64
    %81 = llvm.alloca %c1_i64_128 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_125, %81 : !llvm.ptr<i64>
    %c1_i64_129 = arith.constant 1 : i64
    %82 = llvm.alloca %c1_i64_129 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_125, %82 : !llvm.ptr<i64>
    %c4_130 = arith.constant 4 : index
    %c0_131 = arith.constant 0 : index
    %c0_132 = arith.constant 0 : index
    %c0_133 = arith.constant 0 : index
    %c196608 = arith.constant 196608 : index
    %83 = rmem.rdma %c0_133, %42[%c0_132] %c196608 4 %c0_126 {map = #map10, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %84 = rmem.slot %c0_133 {mem = "t4"} : (index) -> memref<1x196608xf32>
    %c1_134 = arith.constant 1 : index
    %c1_135 = arith.constant 1 : index
    %c196608_136 = arith.constant 196608 : index
    %85 = rmem.rdma %c1_135, %42[%c1_134] %c196608_136 4 %c0_126 {map = #map10, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %86 = rmem.slot %c1_135 {mem = "t4"} : (index) -> memref<1x196608xf32>
    %c2_137 = arith.constant 2 : index
    %c2_138 = arith.constant 2 : index
    %c196608_139 = arith.constant 196608 : index
    %87 = rmem.rdma %c2_138, %42[%c2_137] %c196608_139 4 %c0_126 {map = #map10, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %88 = rmem.slot %c2_138 {mem = "t4"} : (index) -> memref<1x196608xf32>
    %c3_140 = arith.constant 3 : index
    %c3_141 = arith.constant 3 : index
    %c196608_142 = arith.constant 196608 : index
    %89 = rmem.rdma %c3_141, %42[%c3_140] %c196608_142 4 %c0_126 {map = #map10, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %90 = rmem.slot %c3_141 {mem = "t4"} : (index) -> memref<1x196608xf32>
    %91:14 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_130, %arg5 = %c0_126, %arg6 = %83, %arg7 = %84, %arg8 = %c0_126, %arg9 = %85, %arg10 = %86, %arg11 = %c0_126, %arg12 = %87, %arg13 = %88, %arg14 = %c0_126, %arg15 = %89, %arg16 = %90, %arg17 = %c0_126) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index) {
      %163 = arith.addi %c1_127, %arg4 : index
      %164 = arith.addi %c1_127, %arg5 : index
      %c4_294 = arith.constant 4 : index
      %165 = arith.addi %c4_294, %arg3 : index
      %c196608_295 = arith.constant 196608 : index
      %166 = rmem.rdma %arg4, %42[%165] %c196608_295 4 %c0_126 {map = #map10, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
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
      %c196608_296 = arith.constant 196608 : index
      %169 = rmem.rdma %arg5, %80[%arg3] %c196608_296 0 %168 {map = #map10, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %82 -> %168 : <i64>, index
      affine.yield %163, %164, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %166, %167, %c0_126 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index
    }
    %alloc_143 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            affine.store %cst_1, %alloc_143[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %c0_i64_144 = arith.constant 0 : i64
    %c0_145 = arith.constant 0 : index
    %c1_146 = arith.constant 1 : index
    %c1_i64_147 = arith.constant 1 : i64
    %92 = llvm.alloca %c1_i64_147 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_144, %92 : !llvm.ptr<i64>
    %c1_i64_148 = arith.constant 1 : i64
    %93 = llvm.alloca %c1_i64_148 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_144, %93 : !llvm.ptr<i64>
    %c4_149 = arith.constant 4 : index
    %c0_150 = arith.constant 0 : index
    %c0_151 = arith.constant 0 : index
    %c0_152 = arith.constant 0 : index
    %94 = rmem.wrid : index
    %c196608_153 = arith.constant 196608 : index
    %95 = rmem.rdma %c0_152, %80[%c0_151] %c196608_153 4 %94 {map = #map10, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
    %c1_154 = arith.constant 1 : index
    %c1_155 = arith.constant 1 : index
    %96 = rmem.wrid : index
    %c196608_156 = arith.constant 196608 : index
    %97 = rmem.rdma %c1_155, %80[%c1_154] %c196608_156 4 %96 {map = #map10, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
    %c2_157 = arith.constant 2 : index
    %c2_158 = arith.constant 2 : index
    %98 = rmem.wrid : index
    %c196608_159 = arith.constant 196608 : index
    %99 = rmem.rdma %c2_158, %80[%c2_157] %c196608_159 4 %98 {map = #map10, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
    %c3_160 = arith.constant 3 : index
    %c3_161 = arith.constant 3 : index
    %100 = rmem.wrid : index
    %c196608_162 = arith.constant 196608 : index
    %101 = rmem.rdma %c3_161, %80[%c3_160] %c196608_162 4 %100 {map = #map10, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
    %102:10 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_149, %arg5 = %c0_145, %arg6 = %95, %arg7 = %94, %arg8 = %97, %arg9 = %96, %arg10 = %99, %arg11 = %98, %arg12 = %101, %arg13 = %100) -> (index, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index) {
      %163 = arith.addi %c1_146, %arg4 : index
      %164 = arith.addi %c1_146, %arg5 : index
      %c4_294 = arith.constant 4 : index
      %165 = arith.addi %c4_294, %arg3 : index
      %166 = rmem.wrid : index
      %c196608_295 = arith.constant 196608 : index
      %167 = rmem.rdma %arg4, %80[%165] %c196608_295 4 %166 {map = #map10, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
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
                  %170 = vector.load %alloc_143[%168, %arg15, %169, %arg17] : memref<64x12x1x256xf32>, vector<8xf32>
                  affine.store %170, %alloca[0] : memref<1xvector<8xf32>>
                  %171 = memref.load %reinterpret_cast_57[%168, %arg15, %169, %arg18] : memref<64x12x1x64xf32>
                  %172 = vector.broadcast %171 : f32 to vector<8xf32>
                  %173 = affine.apply #map13(%arg15, %arg17, %arg18)
                  %174 = vector.load %arg6[%arg14, %173] : memref<1x196608xf32>, vector<8xf32>
                  %175 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %176 = vector.fma %172, %174, %175 : vector<8xf32>
                  affine.store %176, %alloca[0] : memref<1xvector<8xf32>>
                  %177 = arith.addi %arg18, %c1 : index
                  %178 = memref.load %reinterpret_cast_57[%168, %arg15, %169, %177] : memref<64x12x1x64xf32>
                  %179 = vector.broadcast %178 : f32 to vector<8xf32>
                  %180 = affine.apply #map14(%arg15, %arg17, %arg18)
                  %181 = vector.load %arg6[%arg14, %180] : memref<1x196608xf32>, vector<8xf32>
                  %182 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %183 = vector.fma %179, %181, %182 : vector<8xf32>
                  affine.store %183, %alloca[0] : memref<1xvector<8xf32>>
                  %184 = arith.addi %arg18, %c2 : index
                  %185 = memref.load %reinterpret_cast_57[%168, %arg15, %169, %184] : memref<64x12x1x64xf32>
                  %186 = vector.broadcast %185 : f32 to vector<8xf32>
                  %187 = affine.apply #map15(%arg15, %arg17, %arg18)
                  %188 = vector.load %arg6[%arg14, %187] : memref<1x196608xf32>, vector<8xf32>
                  %189 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %190 = vector.fma %186, %188, %189 : vector<8xf32>
                  affine.store %190, %alloca[0] : memref<1xvector<8xf32>>
                  %191 = arith.addi %arg18, %c3 : index
                  %192 = memref.load %reinterpret_cast_57[%168, %arg15, %169, %191] : memref<64x12x1x64xf32>
                  %193 = vector.broadcast %192 : f32 to vector<8xf32>
                  %194 = affine.apply #map16(%arg15, %arg17, %arg18)
                  %195 = vector.load %arg6[%arg14, %194] : memref<1x196608xf32>, vector<8xf32>
                  %196 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %197 = vector.fma %193, %195, %196 : vector<8xf32>
                  affine.store %197, %alloca[0] : memref<1xvector<8xf32>>
                  %198 = arith.addi %arg18, %c4 : index
                  %199 = memref.load %reinterpret_cast_57[%168, %arg15, %169, %198] : memref<64x12x1x64xf32>
                  %200 = vector.broadcast %199 : f32 to vector<8xf32>
                  %201 = affine.apply #map17(%arg15, %arg17, %arg18)
                  %202 = vector.load %arg6[%arg14, %201] : memref<1x196608xf32>, vector<8xf32>
                  %203 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %204 = vector.fma %200, %202, %203 : vector<8xf32>
                  affine.store %204, %alloca[0] : memref<1xvector<8xf32>>
                  %205 = arith.addi %arg18, %c5 : index
                  %206 = memref.load %reinterpret_cast_57[%168, %arg15, %169, %205] : memref<64x12x1x64xf32>
                  %207 = vector.broadcast %206 : f32 to vector<8xf32>
                  %208 = affine.apply #map18(%arg15, %arg17, %arg18)
                  %209 = vector.load %arg6[%arg14, %208] : memref<1x196608xf32>, vector<8xf32>
                  %210 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %211 = vector.fma %207, %209, %210 : vector<8xf32>
                  affine.store %211, %alloca[0] : memref<1xvector<8xf32>>
                  %212 = arith.addi %arg18, %c6 : index
                  %213 = memref.load %reinterpret_cast_57[%168, %arg15, %169, %212] : memref<64x12x1x64xf32>
                  %214 = vector.broadcast %213 : f32 to vector<8xf32>
                  %215 = affine.apply #map19(%arg15, %arg17, %arg18)
                  %216 = vector.load %arg6[%arg14, %215] : memref<1x196608xf32>, vector<8xf32>
                  %217 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %218 = vector.fma %214, %216, %217 : vector<8xf32>
                  affine.store %218, %alloca[0] : memref<1xvector<8xf32>>
                  %219 = arith.addi %arg18, %c7 : index
                  %220 = memref.load %reinterpret_cast_57[%168, %arg15, %169, %219] : memref<64x12x1x64xf32>
                  %221 = vector.broadcast %220 : f32 to vector<8xf32>
                  %222 = affine.apply #map20(%arg15, %arg17, %arg18)
                  %223 = vector.load %arg6[%arg14, %222] : memref<1x196608xf32>, vector<8xf32>
                  %224 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %225 = vector.fma %221, %223, %224 : vector<8xf32>
                  affine.store %225, %alloca[0] : memref<1xvector<8xf32>>
                  %226 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  vector.store %226, %alloc_143[%168, %arg15, %169, %arg17] : memref<64x12x1x256xf32>, vector<8xf32>
                }
              }
            }
          }
        }
      }
      affine.yield %163, %164, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %167, %166 : index, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index
    }
    %alloc_163 = memref.alloc() : memref<f32>
    %cast_164 = memref.cast %alloc_163 : memref<f32> to memref<*xf32>
    %103 = llvm.mlir.addressof @constant_27 : !llvm.ptr<array<12 x i8>>
    %104 = llvm.getelementptr %103[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%104, %cast_164) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_165 = memref.alloc() : memref<f32>
    %cast_166 = memref.cast %alloc_165 : memref<f32> to memref<*xf32>
    %105 = llvm.mlir.addressof @constant_28 : !llvm.ptr<array<12 x i8>>
    %106 = llvm.getelementptr %105[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%106, %cast_166) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_167 = memref.alloc() : memref<f32>
    %107 = affine.load %alloc_163[] : memref<f32>
    %108 = affine.load %alloc_165[] : memref<f32>
    %109 = math.powf %107, %108 : f32
    affine.store %109, %alloc_167[] : memref<f32>
    %alloc_168 = memref.alloc() : memref<f32>
    affine.store %cst_1, %alloc_168[] : memref<f32>
    %alloc_169 = memref.alloc() : memref<f32>
    %110 = affine.load %alloc_168[] : memref<f32>
    %111 = affine.load %alloc_167[] : memref<f32>
    %112 = arith.addf %110, %111 : f32
    affine.store %112, %alloc_169[] : memref<f32>
    %alloc_170 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %163 = affine.load %alloc_143[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %164 = affine.load %alloc_169[] : memref<f32>
            %165 = arith.divf %163, %164 : f32
            affine.store %165, %alloc_170[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_171 = memref.alloc() : memref<f32>
    %cast_172 = memref.cast %alloc_171 : memref<f32> to memref<*xf32>
    %113 = llvm.mlir.addressof @constant_30 : !llvm.ptr<array<12 x i8>>
    %114 = llvm.getelementptr %113[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%114, %cast_172) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_173 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %163 = affine.load %alloc_30[0, 0, %arg5, %arg6] : memref<1x1x1x256xi1>
            %164 = affine.load %alloc_170[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %165 = affine.load %alloc_171[] : memref<f32>
            %166 = arith.select %163, %164, %165 : f32
            affine.store %166, %alloc_173[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_174 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    %alloc_175 = memref.alloc() : memref<f32>
    %alloc_176 = memref.alloc() : memref<f32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_175[] : memref<f32>
          affine.store %cst_0, %alloc_176[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %165 = affine.load %alloc_176[] : memref<f32>
            %166 = affine.load %alloc_173[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %167 = arith.cmpf ogt, %165, %166 : f32
            %168 = arith.select %167, %165, %166 : f32
            affine.store %168, %alloc_176[] : memref<f32>
          }
          %163 = affine.load %alloc_176[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %165 = affine.load %alloc_175[] : memref<f32>
            %166 = affine.load %alloc_173[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %167 = arith.subf %166, %163 : f32
            %168 = math.exp %167 : f32
            %169 = arith.addf %165, %168 : f32
            affine.store %169, %alloc_175[] : memref<f32>
            affine.store %168, %alloc_174[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
          %164 = affine.load %alloc_175[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %165 = affine.load %alloc_174[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %166 = arith.divf %165, %164 : f32
            affine.store %166, %alloc_174[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_177 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x64xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 64 {
            affine.store %cst_1, %alloc_177[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
          }
        }
      }
    }
    %c0_i64_178 = arith.constant 0 : i64
    %c0_179 = arith.constant 0 : index
    %c1_180 = arith.constant 1 : index
    %c1_i64_181 = arith.constant 1 : i64
    %115 = llvm.alloca %c1_i64_181 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_178, %115 : !llvm.ptr<i64>
    %c1_i64_182 = arith.constant 1 : i64
    %116 = llvm.alloca %c1_i64_182 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_178, %116 : !llvm.ptr<i64>
    %c4_183 = arith.constant 4 : index
    %c0_184 = arith.constant 0 : index
    %c0_185 = arith.constant 0 : index
    %c0_186 = arith.constant 0 : index
    %117 = rmem.wrid : index
    %c196608_187 = arith.constant 196608 : index
    %118 = rmem.rdma %c0_186, %61[%c0_185] %c196608_187 4 %117 {map = #map10, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %c1_188 = arith.constant 1 : index
    %c1_189 = arith.constant 1 : index
    %119 = rmem.wrid : index
    %c196608_190 = arith.constant 196608 : index
    %120 = rmem.rdma %c1_189, %61[%c1_188] %c196608_190 4 %119 {map = #map10, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %c2_191 = arith.constant 2 : index
    %c2_192 = arith.constant 2 : index
    %121 = rmem.wrid : index
    %c196608_193 = arith.constant 196608 : index
    %122 = rmem.rdma %c2_192, %61[%c2_191] %c196608_193 4 %121 {map = #map10, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %c3_194 = arith.constant 3 : index
    %c3_195 = arith.constant 3 : index
    %123 = rmem.wrid : index
    %c196608_196 = arith.constant 196608 : index
    %124 = rmem.rdma %c3_195, %61[%c3_194] %c196608_196 4 %123 {map = #map10, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %125:10 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_183, %arg5 = %c0_179, %arg6 = %118, %arg7 = %117, %arg8 = %120, %arg9 = %119, %arg10 = %122, %arg11 = %121, %arg12 = %124, %arg13 = %123) -> (index, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index) {
      %163 = arith.addi %c1_180, %arg4 : index
      %164 = arith.addi %c1_180, %arg5 : index
      %c4_294 = arith.constant 4 : index
      %165 = arith.addi %c4_294, %arg3 : index
      %166 = rmem.wrid : index
      %c196608_295 = arith.constant 196608 : index
      %167 = rmem.rdma %arg4, %61[%165] %c196608_295 4 %166 {map = #map10, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
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
                  %170 = vector.load %alloc_177[%168, %arg15, %169, %arg17] : memref<64x12x1x64xf32>, vector<8xf32>
                  affine.store %170, %alloca[0] : memref<1xvector<8xf32>>
                  %171 = memref.load %alloc_174[%168, %arg15, %169, %arg18] : memref<64x12x1x256xf32>
                  %172 = vector.broadcast %171 : f32 to vector<8xf32>
                  %173 = affine.apply #map21(%arg15, %arg17, %arg18)
                  %174 = vector.load %arg6[%arg14, %173] : memref<1x196608xf32>, vector<8xf32>
                  %175 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %176 = vector.fma %172, %174, %175 : vector<8xf32>
                  affine.store %176, %alloca[0] : memref<1xvector<8xf32>>
                  %177 = arith.addi %arg18, %c1 : index
                  %178 = memref.load %alloc_174[%168, %arg15, %169, %177] : memref<64x12x1x256xf32>
                  %179 = vector.broadcast %178 : f32 to vector<8xf32>
                  %180 = affine.apply #map22(%arg15, %arg17, %arg18)
                  %181 = vector.load %arg6[%arg14, %180] : memref<1x196608xf32>, vector<8xf32>
                  %182 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %183 = vector.fma %179, %181, %182 : vector<8xf32>
                  affine.store %183, %alloca[0] : memref<1xvector<8xf32>>
                  %184 = arith.addi %arg18, %c2 : index
                  %185 = memref.load %alloc_174[%168, %arg15, %169, %184] : memref<64x12x1x256xf32>
                  %186 = vector.broadcast %185 : f32 to vector<8xf32>
                  %187 = affine.apply #map23(%arg15, %arg17, %arg18)
                  %188 = vector.load %arg6[%arg14, %187] : memref<1x196608xf32>, vector<8xf32>
                  %189 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %190 = vector.fma %186, %188, %189 : vector<8xf32>
                  affine.store %190, %alloca[0] : memref<1xvector<8xf32>>
                  %191 = arith.addi %arg18, %c3 : index
                  %192 = memref.load %alloc_174[%168, %arg15, %169, %191] : memref<64x12x1x256xf32>
                  %193 = vector.broadcast %192 : f32 to vector<8xf32>
                  %194 = affine.apply #map24(%arg15, %arg17, %arg18)
                  %195 = vector.load %arg6[%arg14, %194] : memref<1x196608xf32>, vector<8xf32>
                  %196 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %197 = vector.fma %193, %195, %196 : vector<8xf32>
                  affine.store %197, %alloca[0] : memref<1xvector<8xf32>>
                  %198 = arith.addi %arg18, %c4 : index
                  %199 = memref.load %alloc_174[%168, %arg15, %169, %198] : memref<64x12x1x256xf32>
                  %200 = vector.broadcast %199 : f32 to vector<8xf32>
                  %201 = affine.apply #map25(%arg15, %arg17, %arg18)
                  %202 = vector.load %arg6[%arg14, %201] : memref<1x196608xf32>, vector<8xf32>
                  %203 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %204 = vector.fma %200, %202, %203 : vector<8xf32>
                  affine.store %204, %alloca[0] : memref<1xvector<8xf32>>
                  %205 = arith.addi %arg18, %c5 : index
                  %206 = memref.load %alloc_174[%168, %arg15, %169, %205] : memref<64x12x1x256xf32>
                  %207 = vector.broadcast %206 : f32 to vector<8xf32>
                  %208 = affine.apply #map26(%arg15, %arg17, %arg18)
                  %209 = vector.load %arg6[%arg14, %208] : memref<1x196608xf32>, vector<8xf32>
                  %210 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %211 = vector.fma %207, %209, %210 : vector<8xf32>
                  affine.store %211, %alloca[0] : memref<1xvector<8xf32>>
                  %212 = arith.addi %arg18, %c6 : index
                  %213 = memref.load %alloc_174[%168, %arg15, %169, %212] : memref<64x12x1x256xf32>
                  %214 = vector.broadcast %213 : f32 to vector<8xf32>
                  %215 = affine.apply #map27(%arg15, %arg17, %arg18)
                  %216 = vector.load %arg6[%arg14, %215] : memref<1x196608xf32>, vector<8xf32>
                  %217 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %218 = vector.fma %214, %216, %217 : vector<8xf32>
                  affine.store %218, %alloca[0] : memref<1xvector<8xf32>>
                  %219 = arith.addi %arg18, %c7 : index
                  %220 = memref.load %alloc_174[%168, %arg15, %169, %219] : memref<64x12x1x256xf32>
                  %221 = vector.broadcast %220 : f32 to vector<8xf32>
                  %222 = affine.apply #map28(%arg15, %arg17, %arg18)
                  %223 = vector.load %arg6[%arg14, %222] : memref<1x196608xf32>, vector<8xf32>
                  %224 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %225 = vector.fma %221, %223, %224 : vector<8xf32>
                  affine.store %225, %alloca[0] : memref<1xvector<8xf32>>
                  %226 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  vector.store %226, %alloc_177[%168, %arg15, %169, %arg17] : memref<64x12x1x64xf32>, vector<8xf32>
                }
              }
            }
          }
        }
      }
      affine.yield %163, %164, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %167, %166 : index, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index, memref<1x196608xf32>, index
    }
    %reinterpret_cast_197 = memref.reinterpret_cast %alloc_177 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x12x1x64xf32> to memref<64x768xf32>
    %alloc_198 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        affine.store %cst_1, %alloc_198[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_199 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_200 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 768 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %163 = affine.load %alloc_10[%arg4 + %arg5, %arg3 + %arg6] : memref<768x768xf32>
            affine.store %163, %alloc_200[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %163 = affine.load %reinterpret_cast_197[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %163, %alloc_199[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %163 = affine.apply #map3(%arg5, %arg7)
              %164 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %165 = vector.load %alloc_198[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %165, %alloca[0] : memref<4xvector<16xf32>>
              %166 = arith.addi %arg7, %c1 : index
              %167 = vector.load %alloc_198[%166, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %167, %alloca[1] : memref<4xvector<16xf32>>
              %168 = arith.addi %arg7, %c2 : index
              %169 = vector.load %alloc_198[%168, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %169, %alloca[2] : memref<4xvector<16xf32>>
              %170 = arith.addi %arg7, %c3 : index
              %171 = vector.load %alloc_198[%170, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %171, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %176 = memref.load %alloc_199[%163, %arg8] : memref<32x256xf32>
                %177 = vector.broadcast %176 : f32 to vector<16xf32>
                %178 = vector.load %alloc_200[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %179 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %180 = vector.fma %177, %178, %179 : vector<16xf32>
                affine.store %180, %alloca[0] : memref<4xvector<16xf32>>
                %181 = affine.apply #map4(%arg8)
                %182 = memref.load %alloc_199[%163, %181] : memref<32x256xf32>
                %183 = vector.broadcast %182 : f32 to vector<16xf32>
                %184 = vector.load %alloc_200[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %185 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %186 = vector.fma %183, %184, %185 : vector<16xf32>
                affine.store %186, %alloca[0] : memref<4xvector<16xf32>>
                %187 = affine.apply #map5(%arg8)
                %188 = memref.load %alloc_199[%163, %187] : memref<32x256xf32>
                %189 = vector.broadcast %188 : f32 to vector<16xf32>
                %190 = vector.load %alloc_200[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %191 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %192 = vector.fma %189, %190, %191 : vector<16xf32>
                affine.store %192, %alloca[0] : memref<4xvector<16xf32>>
                %193 = affine.apply #map6(%arg8)
                %194 = memref.load %alloc_199[%163, %193] : memref<32x256xf32>
                %195 = vector.broadcast %194 : f32 to vector<16xf32>
                %196 = vector.load %alloc_200[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %197 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %198 = vector.fma %195, %196, %197 : vector<16xf32>
                affine.store %198, %alloca[0] : memref<4xvector<16xf32>>
                %199 = arith.addi %163, %c1 : index
                %200 = memref.load %alloc_199[%199, %arg8] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_200[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %203 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                affine.store %204, %alloca[1] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_199[%199, %181] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_200[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %208 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                affine.store %209, %alloca[1] : memref<4xvector<16xf32>>
                %210 = memref.load %alloc_199[%199, %187] : memref<32x256xf32>
                %211 = vector.broadcast %210 : f32 to vector<16xf32>
                %212 = vector.load %alloc_200[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %213 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %214 = vector.fma %211, %212, %213 : vector<16xf32>
                affine.store %214, %alloca[1] : memref<4xvector<16xf32>>
                %215 = memref.load %alloc_199[%199, %193] : memref<32x256xf32>
                %216 = vector.broadcast %215 : f32 to vector<16xf32>
                %217 = vector.load %alloc_200[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %218 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %219 = vector.fma %216, %217, %218 : vector<16xf32>
                affine.store %219, %alloca[1] : memref<4xvector<16xf32>>
                %220 = arith.addi %163, %c2 : index
                %221 = memref.load %alloc_199[%220, %arg8] : memref<32x256xf32>
                %222 = vector.broadcast %221 : f32 to vector<16xf32>
                %223 = vector.load %alloc_200[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %224 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %225 = vector.fma %222, %223, %224 : vector<16xf32>
                affine.store %225, %alloca[2] : memref<4xvector<16xf32>>
                %226 = memref.load %alloc_199[%220, %181] : memref<32x256xf32>
                %227 = vector.broadcast %226 : f32 to vector<16xf32>
                %228 = vector.load %alloc_200[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %229 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %230 = vector.fma %227, %228, %229 : vector<16xf32>
                affine.store %230, %alloca[2] : memref<4xvector<16xf32>>
                %231 = memref.load %alloc_199[%220, %187] : memref<32x256xf32>
                %232 = vector.broadcast %231 : f32 to vector<16xf32>
                %233 = vector.load %alloc_200[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %234 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %235 = vector.fma %232, %233, %234 : vector<16xf32>
                affine.store %235, %alloca[2] : memref<4xvector<16xf32>>
                %236 = memref.load %alloc_199[%220, %193] : memref<32x256xf32>
                %237 = vector.broadcast %236 : f32 to vector<16xf32>
                %238 = vector.load %alloc_200[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %239 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %240 = vector.fma %237, %238, %239 : vector<16xf32>
                affine.store %240, %alloca[2] : memref<4xvector<16xf32>>
                %241 = arith.addi %163, %c3 : index
                %242 = memref.load %alloc_199[%241, %arg8] : memref<32x256xf32>
                %243 = vector.broadcast %242 : f32 to vector<16xf32>
                %244 = vector.load %alloc_200[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %245 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %246 = vector.fma %243, %244, %245 : vector<16xf32>
                affine.store %246, %alloca[3] : memref<4xvector<16xf32>>
                %247 = memref.load %alloc_199[%241, %181] : memref<32x256xf32>
                %248 = vector.broadcast %247 : f32 to vector<16xf32>
                %249 = vector.load %alloc_200[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %250 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %251 = vector.fma %248, %249, %250 : vector<16xf32>
                affine.store %251, %alloca[3] : memref<4xvector<16xf32>>
                %252 = memref.load %alloc_199[%241, %187] : memref<32x256xf32>
                %253 = vector.broadcast %252 : f32 to vector<16xf32>
                %254 = vector.load %alloc_200[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %255 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %256 = vector.fma %253, %254, %255 : vector<16xf32>
                affine.store %256, %alloca[3] : memref<4xvector<16xf32>>
                %257 = memref.load %alloc_199[%241, %193] : memref<32x256xf32>
                %258 = vector.broadcast %257 : f32 to vector<16xf32>
                %259 = vector.load %alloc_200[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %260 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %261 = vector.fma %258, %259, %260 : vector<16xf32>
                affine.store %261, %alloca[3] : memref<4xvector<16xf32>>
              }
              %172 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %172, %alloc_198[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %173 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %173, %alloc_198[%166, %arg6] : memref<64x768xf32>, vector<16xf32>
              %174 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %174, %alloc_198[%168, %arg6] : memref<64x768xf32>, vector<16xf32>
              %175 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %175, %alloc_198[%170, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %163 = affine.load %alloc_198[%arg3, %arg4] : memref<64x768xf32>
        %164 = affine.load %alloc_12[%arg4] : memref<768xf32>
        %165 = arith.addf %163, %164 : f32
        affine.store %165, %alloc_198[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_201 = memref.reinterpret_cast %alloc_198 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_202 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %reinterpret_cast_201[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_32[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_202[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_203 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_202[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_33[0, %arg4, %arg5] : memref<1x1x768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_203[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_204 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_204[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_203[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_204[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.addf %164, %163 : f32
          affine.store %165, %alloc_204[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_204[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = arith.divf %163, %cst : f32
          affine.store %164, %alloc_204[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_205 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_203[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_204[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.subf %163, %164 : f32
          affine.store %165, %alloc_205[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_206 = memref.alloc() : memref<f32>
    %cast_207 = memref.cast %alloc_206 : memref<f32> to memref<*xf32>
    %126 = llvm.mlir.addressof @constant_33 : !llvm.ptr<array<12 x i8>>
    %127 = llvm.getelementptr %126[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%127, %cast_207) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_208 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_205[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_206[] : memref<f32>
          %165 = math.powf %163, %164 : f32
          affine.store %165, %alloc_208[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_209 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_209[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_208[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_209[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.addf %164, %163 : f32
          affine.store %165, %alloc_209[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_209[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = arith.divf %163, %cst : f32
          affine.store %164, %alloc_209[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_210 = memref.alloc() : memref<f32>
    %cast_211 = memref.cast %alloc_210 : memref<f32> to memref<*xf32>
    %128 = llvm.mlir.addressof @constant_34 : !llvm.ptr<array<12 x i8>>
    %129 = llvm.getelementptr %128[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%129, %cast_211) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_212 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_209[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = affine.load %alloc_210[] : memref<f32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_212[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_213 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_212[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = math.sqrt %163 : f32
          affine.store %164, %alloc_213[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_214 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_205[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_213[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.divf %163, %164 : f32
          affine.store %165, %alloc_214[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_215 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_214[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_14[%arg5] : memref<768xf32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_215[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_216 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_215[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_16[%arg5] : memref<768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_216[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_217 = memref.reinterpret_cast %alloc_216 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_218 = memref.alloc() {alignment = 128 : i64} : memref<64x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 3072 {
        affine.store %cst_1, %alloc_218[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %alloc_219 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_220 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 3072 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %163 = affine.load %alloc_18[%arg4 + %arg5, %arg3 + %arg6] : memref<768x3072xf32>
            affine.store %163, %alloc_220[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %163 = affine.load %reinterpret_cast_217[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %163, %alloc_219[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %163 = affine.apply #map3(%arg5, %arg7)
              %164 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %165 = vector.load %alloc_218[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %165, %alloca[0] : memref<4xvector<16xf32>>
              %166 = arith.addi %arg7, %c1 : index
              %167 = vector.load %alloc_218[%166, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %167, %alloca[1] : memref<4xvector<16xf32>>
              %168 = arith.addi %arg7, %c2 : index
              %169 = vector.load %alloc_218[%168, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %169, %alloca[2] : memref<4xvector<16xf32>>
              %170 = arith.addi %arg7, %c3 : index
              %171 = vector.load %alloc_218[%170, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %171, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %176 = memref.load %alloc_219[%163, %arg8] : memref<32x256xf32>
                %177 = vector.broadcast %176 : f32 to vector<16xf32>
                %178 = vector.load %alloc_220[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %179 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %180 = vector.fma %177, %178, %179 : vector<16xf32>
                affine.store %180, %alloca[0] : memref<4xvector<16xf32>>
                %181 = affine.apply #map4(%arg8)
                %182 = memref.load %alloc_219[%163, %181] : memref<32x256xf32>
                %183 = vector.broadcast %182 : f32 to vector<16xf32>
                %184 = vector.load %alloc_220[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %185 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %186 = vector.fma %183, %184, %185 : vector<16xf32>
                affine.store %186, %alloca[0] : memref<4xvector<16xf32>>
                %187 = affine.apply #map5(%arg8)
                %188 = memref.load %alloc_219[%163, %187] : memref<32x256xf32>
                %189 = vector.broadcast %188 : f32 to vector<16xf32>
                %190 = vector.load %alloc_220[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %191 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %192 = vector.fma %189, %190, %191 : vector<16xf32>
                affine.store %192, %alloca[0] : memref<4xvector<16xf32>>
                %193 = affine.apply #map6(%arg8)
                %194 = memref.load %alloc_219[%163, %193] : memref<32x256xf32>
                %195 = vector.broadcast %194 : f32 to vector<16xf32>
                %196 = vector.load %alloc_220[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %197 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %198 = vector.fma %195, %196, %197 : vector<16xf32>
                affine.store %198, %alloca[0] : memref<4xvector<16xf32>>
                %199 = arith.addi %163, %c1 : index
                %200 = memref.load %alloc_219[%199, %arg8] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_220[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %203 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                affine.store %204, %alloca[1] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_219[%199, %181] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_220[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %208 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                affine.store %209, %alloca[1] : memref<4xvector<16xf32>>
                %210 = memref.load %alloc_219[%199, %187] : memref<32x256xf32>
                %211 = vector.broadcast %210 : f32 to vector<16xf32>
                %212 = vector.load %alloc_220[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %213 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %214 = vector.fma %211, %212, %213 : vector<16xf32>
                affine.store %214, %alloca[1] : memref<4xvector<16xf32>>
                %215 = memref.load %alloc_219[%199, %193] : memref<32x256xf32>
                %216 = vector.broadcast %215 : f32 to vector<16xf32>
                %217 = vector.load %alloc_220[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %218 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %219 = vector.fma %216, %217, %218 : vector<16xf32>
                affine.store %219, %alloca[1] : memref<4xvector<16xf32>>
                %220 = arith.addi %163, %c2 : index
                %221 = memref.load %alloc_219[%220, %arg8] : memref<32x256xf32>
                %222 = vector.broadcast %221 : f32 to vector<16xf32>
                %223 = vector.load %alloc_220[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %224 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %225 = vector.fma %222, %223, %224 : vector<16xf32>
                affine.store %225, %alloca[2] : memref<4xvector<16xf32>>
                %226 = memref.load %alloc_219[%220, %181] : memref<32x256xf32>
                %227 = vector.broadcast %226 : f32 to vector<16xf32>
                %228 = vector.load %alloc_220[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %229 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %230 = vector.fma %227, %228, %229 : vector<16xf32>
                affine.store %230, %alloca[2] : memref<4xvector<16xf32>>
                %231 = memref.load %alloc_219[%220, %187] : memref<32x256xf32>
                %232 = vector.broadcast %231 : f32 to vector<16xf32>
                %233 = vector.load %alloc_220[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %234 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %235 = vector.fma %232, %233, %234 : vector<16xf32>
                affine.store %235, %alloca[2] : memref<4xvector<16xf32>>
                %236 = memref.load %alloc_219[%220, %193] : memref<32x256xf32>
                %237 = vector.broadcast %236 : f32 to vector<16xf32>
                %238 = vector.load %alloc_220[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %239 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %240 = vector.fma %237, %238, %239 : vector<16xf32>
                affine.store %240, %alloca[2] : memref<4xvector<16xf32>>
                %241 = arith.addi %163, %c3 : index
                %242 = memref.load %alloc_219[%241, %arg8] : memref<32x256xf32>
                %243 = vector.broadcast %242 : f32 to vector<16xf32>
                %244 = vector.load %alloc_220[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %245 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %246 = vector.fma %243, %244, %245 : vector<16xf32>
                affine.store %246, %alloca[3] : memref<4xvector<16xf32>>
                %247 = memref.load %alloc_219[%241, %181] : memref<32x256xf32>
                %248 = vector.broadcast %247 : f32 to vector<16xf32>
                %249 = vector.load %alloc_220[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %250 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %251 = vector.fma %248, %249, %250 : vector<16xf32>
                affine.store %251, %alloca[3] : memref<4xvector<16xf32>>
                %252 = memref.load %alloc_219[%241, %187] : memref<32x256xf32>
                %253 = vector.broadcast %252 : f32 to vector<16xf32>
                %254 = vector.load %alloc_220[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %255 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %256 = vector.fma %253, %254, %255 : vector<16xf32>
                affine.store %256, %alloca[3] : memref<4xvector<16xf32>>
                %257 = memref.load %alloc_219[%241, %193] : memref<32x256xf32>
                %258 = vector.broadcast %257 : f32 to vector<16xf32>
                %259 = vector.load %alloc_220[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %260 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %261 = vector.fma %258, %259, %260 : vector<16xf32>
                affine.store %261, %alloca[3] : memref<4xvector<16xf32>>
              }
              %172 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %172, %alloc_218[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %173 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %173, %alloc_218[%166, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %174 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %174, %alloc_218[%168, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %175 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %175, %alloc_218[%170, %arg6] : memref<64x3072xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 3072 {
        %163 = affine.load %alloc_218[%arg3, %arg4] : memref<64x3072xf32>
        %164 = affine.load %alloc_20[%arg4] : memref<3072xf32>
        %165 = arith.addf %163, %164 : f32
        affine.store %165, %alloc_218[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %reinterpret_cast_221 = memref.reinterpret_cast %alloc_218 to offset: [0], sizes: [64, 1, 3072], strides: [3072, 3072, 1] : memref<64x3072xf32> to memref<64x1x3072xf32>
    %alloc_222 = memref.alloc() : memref<f32>
    %cast_223 = memref.cast %alloc_222 : memref<f32> to memref<*xf32>
    %130 = llvm.mlir.addressof @constant_37 : !llvm.ptr<array<12 x i8>>
    %131 = llvm.getelementptr %130[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%131, %cast_223) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_224 = memref.alloc() : memref<f32>
    %cast_225 = memref.cast %alloc_224 : memref<f32> to memref<*xf32>
    %132 = llvm.mlir.addressof @constant_38 : !llvm.ptr<array<12 x i8>>
    %133 = llvm.getelementptr %132[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%133, %cast_225) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_226 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %reinterpret_cast_221[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_224[] : memref<f32>
          %165 = math.powf %163, %164 : f32
          affine.store %165, %alloc_226[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_227 = memref.alloc() : memref<f32>
    %cast_228 = memref.cast %alloc_227 : memref<f32> to memref<*xf32>
    %134 = llvm.mlir.addressof @constant_39 : !llvm.ptr<array<12 x i8>>
    %135 = llvm.getelementptr %134[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%135, %cast_228) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_229 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %alloc_226[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_227[] : memref<f32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_229[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_230 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %reinterpret_cast_221[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_229[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_230[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_231 = memref.alloc() : memref<f32>
    %cast_232 = memref.cast %alloc_231 : memref<f32> to memref<*xf32>
    %136 = llvm.mlir.addressof @constant_40 : !llvm.ptr<array<12 x i8>>
    %137 = llvm.getelementptr %136[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%137, %cast_232) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_233 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %alloc_230[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_231[] : memref<f32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_233[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_234 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %alloc_233[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = math.tanh %163 : f32
          affine.store %164, %alloc_234[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_235 = memref.alloc() : memref<f32>
    %cast_236 = memref.cast %alloc_235 : memref<f32> to memref<*xf32>
    %138 = llvm.mlir.addressof @constant_41 : !llvm.ptr<array<12 x i8>>
    %139 = llvm.getelementptr %138[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%139, %cast_236) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_237 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %alloc_234[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_235[] : memref<f32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_237[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_238 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %reinterpret_cast_221[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_237[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_238[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_239 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %163 = affine.load %alloc_238[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %164 = affine.load %alloc_222[] : memref<f32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_239[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %reinterpret_cast_240 = memref.reinterpret_cast %alloc_239 to offset: [0], sizes: [64, 3072], strides: [3072, 1] : memref<64x1x3072xf32> to memref<64x3072xf32>
    %alloc_241 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        affine.store %cst_1, %alloc_241[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_242 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_243 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 768 step 64 {
      affine.for %arg4 = 0 to 3072 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %163 = affine.load %alloc_22[%arg4 + %arg5, %arg3 + %arg6] : memref<3072x768xf32>
            affine.store %163, %alloc_243[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %163 = affine.load %reinterpret_cast_240[%arg5 + %arg6, %arg4 + %arg7] : memref<64x3072xf32>
              affine.store %163, %alloc_242[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %163 = affine.apply #map3(%arg5, %arg7)
              %164 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %165 = vector.load %alloc_241[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %165, %alloca[0] : memref<4xvector<16xf32>>
              %166 = arith.addi %arg7, %c1 : index
              %167 = vector.load %alloc_241[%166, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %167, %alloca[1] : memref<4xvector<16xf32>>
              %168 = arith.addi %arg7, %c2 : index
              %169 = vector.load %alloc_241[%168, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %169, %alloca[2] : memref<4xvector<16xf32>>
              %170 = arith.addi %arg7, %c3 : index
              %171 = vector.load %alloc_241[%170, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %171, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %176 = memref.load %alloc_242[%163, %arg8] : memref<32x256xf32>
                %177 = vector.broadcast %176 : f32 to vector<16xf32>
                %178 = vector.load %alloc_243[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %179 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %180 = vector.fma %177, %178, %179 : vector<16xf32>
                affine.store %180, %alloca[0] : memref<4xvector<16xf32>>
                %181 = affine.apply #map4(%arg8)
                %182 = memref.load %alloc_242[%163, %181] : memref<32x256xf32>
                %183 = vector.broadcast %182 : f32 to vector<16xf32>
                %184 = vector.load %alloc_243[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %185 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %186 = vector.fma %183, %184, %185 : vector<16xf32>
                affine.store %186, %alloca[0] : memref<4xvector<16xf32>>
                %187 = affine.apply #map5(%arg8)
                %188 = memref.load %alloc_242[%163, %187] : memref<32x256xf32>
                %189 = vector.broadcast %188 : f32 to vector<16xf32>
                %190 = vector.load %alloc_243[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %191 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %192 = vector.fma %189, %190, %191 : vector<16xf32>
                affine.store %192, %alloca[0] : memref<4xvector<16xf32>>
                %193 = affine.apply #map6(%arg8)
                %194 = memref.load %alloc_242[%163, %193] : memref<32x256xf32>
                %195 = vector.broadcast %194 : f32 to vector<16xf32>
                %196 = vector.load %alloc_243[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %197 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %198 = vector.fma %195, %196, %197 : vector<16xf32>
                affine.store %198, %alloca[0] : memref<4xvector<16xf32>>
                %199 = arith.addi %163, %c1 : index
                %200 = memref.load %alloc_242[%199, %arg8] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_243[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %203 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                affine.store %204, %alloca[1] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_242[%199, %181] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_243[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %208 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                affine.store %209, %alloca[1] : memref<4xvector<16xf32>>
                %210 = memref.load %alloc_242[%199, %187] : memref<32x256xf32>
                %211 = vector.broadcast %210 : f32 to vector<16xf32>
                %212 = vector.load %alloc_243[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %213 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %214 = vector.fma %211, %212, %213 : vector<16xf32>
                affine.store %214, %alloca[1] : memref<4xvector<16xf32>>
                %215 = memref.load %alloc_242[%199, %193] : memref<32x256xf32>
                %216 = vector.broadcast %215 : f32 to vector<16xf32>
                %217 = vector.load %alloc_243[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %218 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %219 = vector.fma %216, %217, %218 : vector<16xf32>
                affine.store %219, %alloca[1] : memref<4xvector<16xf32>>
                %220 = arith.addi %163, %c2 : index
                %221 = memref.load %alloc_242[%220, %arg8] : memref<32x256xf32>
                %222 = vector.broadcast %221 : f32 to vector<16xf32>
                %223 = vector.load %alloc_243[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %224 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %225 = vector.fma %222, %223, %224 : vector<16xf32>
                affine.store %225, %alloca[2] : memref<4xvector<16xf32>>
                %226 = memref.load %alloc_242[%220, %181] : memref<32x256xf32>
                %227 = vector.broadcast %226 : f32 to vector<16xf32>
                %228 = vector.load %alloc_243[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %229 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %230 = vector.fma %227, %228, %229 : vector<16xf32>
                affine.store %230, %alloca[2] : memref<4xvector<16xf32>>
                %231 = memref.load %alloc_242[%220, %187] : memref<32x256xf32>
                %232 = vector.broadcast %231 : f32 to vector<16xf32>
                %233 = vector.load %alloc_243[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %234 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %235 = vector.fma %232, %233, %234 : vector<16xf32>
                affine.store %235, %alloca[2] : memref<4xvector<16xf32>>
                %236 = memref.load %alloc_242[%220, %193] : memref<32x256xf32>
                %237 = vector.broadcast %236 : f32 to vector<16xf32>
                %238 = vector.load %alloc_243[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %239 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %240 = vector.fma %237, %238, %239 : vector<16xf32>
                affine.store %240, %alloca[2] : memref<4xvector<16xf32>>
                %241 = arith.addi %163, %c3 : index
                %242 = memref.load %alloc_242[%241, %arg8] : memref<32x256xf32>
                %243 = vector.broadcast %242 : f32 to vector<16xf32>
                %244 = vector.load %alloc_243[%arg8, %164] : memref<256x64xf32>, vector<16xf32>
                %245 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %246 = vector.fma %243, %244, %245 : vector<16xf32>
                affine.store %246, %alloca[3] : memref<4xvector<16xf32>>
                %247 = memref.load %alloc_242[%241, %181] : memref<32x256xf32>
                %248 = vector.broadcast %247 : f32 to vector<16xf32>
                %249 = vector.load %alloc_243[%181, %164] : memref<256x64xf32>, vector<16xf32>
                %250 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %251 = vector.fma %248, %249, %250 : vector<16xf32>
                affine.store %251, %alloca[3] : memref<4xvector<16xf32>>
                %252 = memref.load %alloc_242[%241, %187] : memref<32x256xf32>
                %253 = vector.broadcast %252 : f32 to vector<16xf32>
                %254 = vector.load %alloc_243[%187, %164] : memref<256x64xf32>, vector<16xf32>
                %255 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %256 = vector.fma %253, %254, %255 : vector<16xf32>
                affine.store %256, %alloca[3] : memref<4xvector<16xf32>>
                %257 = memref.load %alloc_242[%241, %193] : memref<32x256xf32>
                %258 = vector.broadcast %257 : f32 to vector<16xf32>
                %259 = vector.load %alloc_243[%193, %164] : memref<256x64xf32>, vector<16xf32>
                %260 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %261 = vector.fma %258, %259, %260 : vector<16xf32>
                affine.store %261, %alloca[3] : memref<4xvector<16xf32>>
              }
              %172 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %172, %alloc_241[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %173 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %173, %alloc_241[%166, %arg6] : memref<64x768xf32>, vector<16xf32>
              %174 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %174, %alloc_241[%168, %arg6] : memref<64x768xf32>, vector<16xf32>
              %175 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %175, %alloc_241[%170, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %163 = affine.load %alloc_241[%arg3, %arg4] : memref<64x768xf32>
        %164 = affine.load %alloc_24[%arg4] : memref<768xf32>
        %165 = arith.addf %163, %164 : f32
        affine.store %165, %alloc_241[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_244 = memref.reinterpret_cast %alloc_241 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_245 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_202[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %reinterpret_cast_244[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_245[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_246 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_245[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_33[0, %arg4, %arg5] : memref<1x1x768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_246[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_247 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_247[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_246[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_247[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.addf %164, %163 : f32
          affine.store %165, %alloc_247[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_247[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = arith.divf %163, %cst : f32
          affine.store %164, %alloc_247[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_248 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_246[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_247[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.subf %163, %164 : f32
          affine.store %165, %alloc_248[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_249 = memref.alloc() : memref<f32>
    %cast_250 = memref.cast %alloc_249 : memref<f32> to memref<*xf32>
    %140 = llvm.mlir.addressof @constant_44 : !llvm.ptr<array<12 x i8>>
    %141 = llvm.getelementptr %140[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%141, %cast_250) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_251 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_248[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_249[] : memref<f32>
          %165 = math.powf %163, %164 : f32
          affine.store %165, %alloc_251[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_252 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_252[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_251[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_252[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.addf %164, %163 : f32
          affine.store %165, %alloc_252[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_252[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = arith.divf %163, %cst : f32
          affine.store %164, %alloc_252[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_253 = memref.alloc() : memref<f32>
    %cast_254 = memref.cast %alloc_253 : memref<f32> to memref<*xf32>
    %142 = llvm.mlir.addressof @constant_45 : !llvm.ptr<array<12 x i8>>
    %143 = llvm.getelementptr %142[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%143, %cast_254) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_255 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_252[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = affine.load %alloc_253[] : memref<f32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_255[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_256 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %163 = affine.load %alloc_255[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %164 = math.sqrt %163 : f32
          affine.store %164, %alloc_256[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_257 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_248[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_256[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %165 = arith.divf %163, %164 : f32
          affine.store %165, %alloc_257[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_258 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_257[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_26[%arg5] : memref<768xf32>
          %165 = arith.mulf %163, %164 : f32
          affine.store %165, %alloc_258[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_259 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %163 = affine.load %alloc_258[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %164 = affine.load %alloc_28[%arg5] : memref<768xf32>
          %165 = arith.addf %163, %164 : f32
          affine.store %165, %alloc_259[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %144 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref5", 0]], alignment = 16 : i64} : <1, memref<64x1x50264xf32>>
    %c0_i64_260 = arith.constant 0 : i64
    %c0_261 = arith.constant 0 : index
    %c1_262 = arith.constant 1 : index
    %c1_i64_263 = arith.constant 1 : i64
    %145 = llvm.alloca %c1_i64_263 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_260, %145 : !llvm.ptr<i64>
    %c1_i64_264 = arith.constant 1 : i64
    %146 = llvm.alloca %c1_i64_264 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_260, %146 : !llvm.ptr<i64>
    %c4_265 = arith.constant 4 : index
    %c0_266 = arith.constant 0 : index
    %c0_267 = arith.constant 0 : index
    %c0_268 = arith.constant 0 : index
    %147 = rmem.slot %c0_268 {mem = "t5"} : (index) -> memref<1x50264xf32>
    %c1_269 = arith.constant 1 : index
    %c1_270 = arith.constant 1 : index
    %148 = rmem.slot %c1_270 {mem = "t5"} : (index) -> memref<1x50264xf32>
    %c2_271 = arith.constant 2 : index
    %c2_272 = arith.constant 2 : index
    %149 = rmem.slot %c2_272 {mem = "t5"} : (index) -> memref<1x50264xf32>
    %c3_273 = arith.constant 3 : index
    %c3_274 = arith.constant 3 : index
    %150 = rmem.slot %c3_274 {mem = "t5"} : (index) -> memref<1x50264xf32>
    %151:6 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_265, %arg5 = %c0_261, %arg6 = %147, %arg7 = %148, %arg8 = %149, %arg9 = %150) -> (index, index, memref<1x50264xf32>, memref<1x50264xf32>, memref<1x50264xf32>, memref<1x50264xf32>) {
      %163 = arith.addi %c1_262, %arg4 : index
      %164 = arith.addi %c1_262, %arg5 : index
      %c4_294 = arith.constant 4 : index
      %165 = arith.addi %c4_294, %arg3 : index
      %166 = rmem.slot %arg4 {mem = "t5"} : (index) -> memref<1x50264xf32>
      affine.for %arg10 = 0 to 1 {
        affine.for %arg11 = 0 to 1 {
          affine.for %arg12 = 0 to 50264 {
            %169 = affine.apply #map29(%arg11, %arg12)
            affine.store %cst_1, %arg6[%arg10, %169] : memref<1x50264xf32>
          }
        }
      }
      %167 = rmem.wrid : index
      %c50264_295 = arith.constant 50264 : index
      %168 = rmem.rdma %arg5, %144[%arg3] %c50264_295 0 %167 {map = #map30, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %146 -> %167 : <i64>, index
      affine.yield %163, %164, %arg7, %arg8, %arg9, %166 : index, index, memref<1x50264xf32>, memref<1x50264xf32>, memref<1x50264xf32>, memref<1x50264xf32>
    }
    %c0_i64_275 = arith.constant 0 : i64
    %c0_276 = arith.constant 0 : index
    %c1_277 = arith.constant 1 : index
    %c1_i64_278 = arith.constant 1 : i64
    %152 = llvm.alloca %c1_i64_278 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_275, %152 : !llvm.ptr<i64>
    %c1_i64_279 = arith.constant 1 : i64
    %153 = llvm.alloca %c1_i64_279 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64_275, %153 : !llvm.ptr<i64>
    %c4_280 = arith.constant 4 : index
    %c0_281 = arith.constant 0 : index
    %c0_282 = arith.constant 0 : index
    %c0_283 = arith.constant 0 : index
    %154 = rmem.wrid : index
    %c50264_284 = arith.constant 50264 : index
    %155 = rmem.rdma %c0_283, %144[%c0_282] %c50264_284 4 %154 {map = #map30, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %c1_285 = arith.constant 1 : index
    %c1_286 = arith.constant 1 : index
    %156 = rmem.wrid : index
    %c50264_287 = arith.constant 50264 : index
    %157 = rmem.rdma %c1_286, %144[%c1_285] %c50264_287 4 %156 {map = #map30, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %c2_288 = arith.constant 2 : index
    %c2_289 = arith.constant 2 : index
    %158 = rmem.wrid : index
    %c50264_290 = arith.constant 50264 : index
    %159 = rmem.rdma %c2_289, %144[%c2_288] %c50264_290 4 %158 {map = #map30, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %c3_291 = arith.constant 3 : index
    %c3_292 = arith.constant 3 : index
    %160 = rmem.wrid : index
    %c50264_293 = arith.constant 50264 : index
    %161 = rmem.rdma %c3_292, %144[%c3_291] %c50264_293 4 %160 {map = #map30, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %162:10 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4_280, %arg5 = %c0_276, %arg6 = %155, %arg7 = %154, %arg8 = %157, %arg9 = %156, %arg10 = %159, %arg11 = %158, %arg12 = %161, %arg13 = %160) -> (index, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index) {
      %163 = arith.addi %c1_277, %arg4 : index
      %164 = arith.addi %c1_277, %arg5 : index
      %c4_294 = arith.constant 4 : index
      %165 = arith.addi %c4_294, %arg3 : index
      %166 = rmem.wrid : index
      %c50264_295 = arith.constant 50264 : index
      %167 = rmem.rdma %arg4, %144[%165] %c50264_295 4 %166 {map = #map30, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %152 -> %arg7 : <i64>, index
      affine.for %arg14 = 0 to 1 {
        %170 = affine.apply #map11(%arg3, %arg14)
        affine.for %arg15 = 0 to 1 {
          affine.for %arg16 = 0 to 50264 step 8 {
            %c0_i64_297 = arith.constant 0 : i64
            %c0_298 = arith.constant 0 : index
            %c1_299 = arith.constant 1 : index
            %c1_i64_300 = arith.constant 1 : i64
            %171 = llvm.alloca %c1_i64_300 x i64 : (i64) -> !llvm.ptr<i64>
            llvm.store %c0_i64_297, %171 : !llvm.ptr<i64>
            %c1_i64_301 = arith.constant 1 : i64
            %172 = llvm.alloca %c1_i64_301 x i64 : (i64) -> !llvm.ptr<i64>
            llvm.store %c0_i64_297, %172 : !llvm.ptr<i64>
            %c4_302 = arith.constant 4 : index
            %c0_303 = arith.constant 0 : index
            %c0_304 = arith.constant 0 : index
            %c0_305 = arith.constant 0 : index
            %173 = rmem.wrid : index
            %c402112 = arith.constant 402112 : index
            %174 = rmem.rdma %c0_305, %32[%170, %arg15, %arg16, %c0_304] %c402112 4 %173 {map = #map31, mem = "t6"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x402112xf32>
            %c8 = arith.constant 8 : index
            %c1_306 = arith.constant 1 : index
            %175 = rmem.wrid : index
            %c402112_307 = arith.constant 402112 : index
            %176 = rmem.rdma %c1_306, %32[%170, %arg15, %arg16, %c8] %c402112_307 4 %175 {map = #map31, mem = "t6"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x402112xf32>
            %c16 = arith.constant 16 : index
            %c2_308 = arith.constant 2 : index
            %177 = rmem.wrid : index
            %c402112_309 = arith.constant 402112 : index
            %178 = rmem.rdma %c2_308, %32[%170, %arg15, %arg16, %c16] %c402112_309 4 %177 {map = #map31, mem = "t6"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x402112xf32>
            %c24 = arith.constant 24 : index
            %c3_310 = arith.constant 3 : index
            %179 = rmem.wrid : index
            %c402112_311 = arith.constant 402112 : index
            %180 = rmem.rdma %c3_310, %32[%170, %arg15, %arg16, %c24] %c402112_311 4 %179 {map = #map31, mem = "t6"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x402112xf32>
            %181:10 = affine.for %arg17 = 0 to 768 step 8 iter_args(%arg18 = %c4_302, %arg19 = %c0_298, %arg20 = %174, %arg21 = %173, %arg22 = %176, %arg23 = %175, %arg24 = %178, %arg25 = %177, %arg26 = %180, %arg27 = %179) -> (index, index, memref<1x402112xf32>, index, memref<1x402112xf32>, index, memref<1x402112xf32>, index, memref<1x402112xf32>, index) {
              %182 = arith.addi %c1_299, %arg18 : index
              %183 = arith.addi %c1_299, %arg19 : index
              %c32 = arith.constant 32 : index
              %184 = arith.addi %c32, %arg17 : index
              %185 = rmem.wrid : index
              %c402112_312 = arith.constant 402112 : index
              %186 = rmem.rdma %arg18, %32[%170, %arg15, %arg16, %184] %c402112_312 4 %185 {map = #map31, mem = "t6"} : (index, !rmem.rmref<1, memref<768x50264xf32>>, index, index, index, index, index, index) -> memref<1x402112xf32>
              rmem.sync %171 -> %arg21 : <i64>, index
              affine.for %arg28 = 0 to 1 {
                %187 = affine.apply #map32(%arg17, %arg28)
                %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
                affine.for %arg29 = 0 to 1 {
                  %188 = arith.addi %arg29, %arg15 : index
                  %189 = affine.apply #map33(%arg15, %arg16, %arg29)
                  %190 = vector.load %arg6[%arg14, %189] : memref<1x50264xf32>, vector<8xf32>
                  affine.store %190, %alloca[0] : memref<1xvector<8xf32>>
                  %191 = memref.load %alloc_259[%170, %188, %187] : memref<64x1x768xf32>
                  %192 = vector.broadcast %191 : f32 to vector<8xf32>
                  %193 = vector.load %arg20[%arg28, %arg16] : memref<1x402112xf32>, vector<8xf32>
                  %194 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %195 = vector.fma %192, %193, %194 : vector<8xf32>
                  affine.store %195, %alloca[0] : memref<1xvector<8xf32>>
                  %196 = arith.addi %187, %c1 : index
                  %197 = memref.load %alloc_259[%170, %188, %196] : memref<64x1x768xf32>
                  %198 = vector.broadcast %197 : f32 to vector<8xf32>
                  %199 = affine.apply #map34(%arg16)
                  %200 = vector.load %arg20[%arg28, %199] : memref<1x402112xf32>, vector<8xf32>
                  %201 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %202 = vector.fma %198, %200, %201 : vector<8xf32>
                  affine.store %202, %alloca[0] : memref<1xvector<8xf32>>
                  %203 = arith.addi %187, %c2 : index
                  %204 = memref.load %alloc_259[%170, %188, %203] : memref<64x1x768xf32>
                  %205 = vector.broadcast %204 : f32 to vector<8xf32>
                  %206 = affine.apply #map35(%arg16)
                  %207 = vector.load %arg20[%arg28, %206] : memref<1x402112xf32>, vector<8xf32>
                  %208 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %209 = vector.fma %205, %207, %208 : vector<8xf32>
                  affine.store %209, %alloca[0] : memref<1xvector<8xf32>>
                  %210 = arith.addi %187, %c3 : index
                  %211 = memref.load %alloc_259[%170, %188, %210] : memref<64x1x768xf32>
                  %212 = vector.broadcast %211 : f32 to vector<8xf32>
                  %213 = affine.apply #map36(%arg16)
                  %214 = vector.load %arg20[%arg28, %213] : memref<1x402112xf32>, vector<8xf32>
                  %215 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %216 = vector.fma %212, %214, %215 : vector<8xf32>
                  affine.store %216, %alloca[0] : memref<1xvector<8xf32>>
                  %217 = arith.addi %187, %c4 : index
                  %218 = memref.load %alloc_259[%170, %188, %217] : memref<64x1x768xf32>
                  %219 = vector.broadcast %218 : f32 to vector<8xf32>
                  %220 = affine.apply #map37(%arg16)
                  %221 = vector.load %arg20[%arg28, %220] : memref<1x402112xf32>, vector<8xf32>
                  %222 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %223 = vector.fma %219, %221, %222 : vector<8xf32>
                  affine.store %223, %alloca[0] : memref<1xvector<8xf32>>
                  %224 = arith.addi %187, %c5 : index
                  %225 = memref.load %alloc_259[%170, %188, %224] : memref<64x1x768xf32>
                  %226 = vector.broadcast %225 : f32 to vector<8xf32>
                  %227 = affine.apply #map38(%arg16)
                  %228 = vector.load %arg20[%arg28, %227] : memref<1x402112xf32>, vector<8xf32>
                  %229 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %230 = vector.fma %226, %228, %229 : vector<8xf32>
                  affine.store %230, %alloca[0] : memref<1xvector<8xf32>>
                  %231 = arith.addi %187, %c6 : index
                  %232 = memref.load %alloc_259[%170, %188, %231] : memref<64x1x768xf32>
                  %233 = vector.broadcast %232 : f32 to vector<8xf32>
                  %234 = affine.apply #map39(%arg16)
                  %235 = vector.load %arg20[%arg28, %234] : memref<1x402112xf32>, vector<8xf32>
                  %236 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %237 = vector.fma %233, %235, %236 : vector<8xf32>
                  affine.store %237, %alloca[0] : memref<1xvector<8xf32>>
                  %238 = arith.addi %187, %c7 : index
                  %239 = memref.load %alloc_259[%170, %188, %238] : memref<64x1x768xf32>
                  %240 = vector.broadcast %239 : f32 to vector<8xf32>
                  %241 = affine.apply #map40(%arg16)
                  %242 = vector.load %arg20[%arg28, %241] : memref<1x402112xf32>, vector<8xf32>
                  %243 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %244 = vector.fma %240, %242, %243 : vector<8xf32>
                  affine.store %244, %alloca[0] : memref<1xvector<8xf32>>
                  %245 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %246 = affine.apply #map33(%arg15, %arg16, %arg29)
                  vector.store %245, %arg6[%arg14, %246] : memref<1x50264xf32>, vector<8xf32>
                }
              }
              affine.yield %182, %183, %arg22, %arg23, %arg24, %arg25, %arg26, %arg27, %186, %185 : index, index, memref<1x402112xf32>, index, memref<1x402112xf32>, index, memref<1x402112xf32>, index, memref<1x402112xf32>, index
            }
          }
        }
      }
      %168 = rmem.wrid : index
      %c50264_296 = arith.constant 50264 : index
      %169 = rmem.rdma %arg5, %144[%arg3] %c50264_296 0 %168 {map = #map30, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %153 -> %168 : <i64>, index
      affine.yield %163, %164, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %167, %166 : index, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index
    }
    return %144 : !rmem.rmref<1, memref<64x1x50264xf32>>
  }
}


#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 64)>
#map2 = affine_map<(d0) -> (d0 + 32)>
#map3 = affine_map<(d0, d1) -> (-d0 + d1)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> (d0 * 196608)>
#map8 = affine_map<(d0, d1) -> (d0 + d1)>
#map9 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256)>
#map10 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 256)>
#map11 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 512)>
#map12 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 768)>
#map13 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1024)>
#map14 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1280)>
#map15 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1536)>
#map16 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1792)>
#map17 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64)>
#map18 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 64)>
#map19 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 128)>
#map20 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 192)>
#map21 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 256)>
#map22 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 320)>
#map23 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 384)>
#map24 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 448)>
#map25 = affine_map<(d0) -> (d0 * 50264)>
#map26 = affine_map<(d0, d1, d2) -> (d0 * 50264 + d1 + d2 * 50264)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t2 = ["ref2", 134217728, 0, 12582912, f32, 196608, 64, 1], t3 = ["ref3", 201326592, 0, 12582912, f32, 196608, 64, 1], t4 = ["ref4", 268435456, 0, 12582912, f32, 196608, 64, 1], t5 = ["ref5", 335544320, 0, 3216896, f32, 50264, 64, 1]}} {
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
  llvm.mlir.global internal constant @constant_0("constant_0\00") {addr_space = 0 : i32}
  func.func @main_graph(%arg0: memref<64x1xi64>, %arg1: memref<64x12x255x64xf32>, %arg2: memref<64x12x255x64xf32>) -> memref<64x1x50264xf32> attributes {input_names = ["input_ids", "past.0.key", "past.0.value"], llvm.emit_c_interface, output_names = ["logits"]} {
    %c16 = arith.constant 16 : index
    %c12 = arith.constant 12 : index
    %c8 = arith.constant 8 : index
    %c786432 = arith.constant 786432 : index
    %c196608 = arith.constant 196608 : index
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %c50264 = arith.constant 50264 : index
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %cst_1 = arith.constant 7.680000e+02 : f32
    %c0 = arith.constant 0 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %alloc = memref.alloc() {alignment = 16 : i64} : memref<64x1x50264xf32>
    %alloc_2 = memref.alloc() {alignment = 16 : i64} : memref<50264x768xf32>
    %cast = memref.cast %alloc_2 : memref<50264x768xf32> to memref<*xf32>
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
    %alloc_7 = memref.alloc() : memref<768x2304xf32>
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
    %alloc_33 = memref.alloc() {alignment = 16 : i64} : memref<768x50264xf32>
    %cast_34 = memref.cast %alloc_33 : memref<768x50264xf32> to memref<*xf32>
    %32 = llvm.mlir.addressof @constant_16 : !llvm.ptr<array<12 x i8>>
    %33 = llvm.getelementptr %32[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%33, %cast_34) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %reinterpret_cast = memref.reinterpret_cast %arg0 to offset: [0], sizes: [64, 1], strides: [1, 1] : memref<64x1xi64> to memref<64x1xi64>
    %alloc_35 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %reinterpret_cast[%arg3, %arg4] : memref<64x1xi64>
          %154 = arith.index_cast %153 : i64 to index
          %155 = arith.addi %154, %c50264 : index
          %156 = arith.cmpi slt, %154, %c0 : index
          %157 = arith.select %156, %155, %154 : index
          %158 = memref.load %alloc_2[%157, %arg5] : memref<50264x768xf32>
          affine.store %158, %alloc_35[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_36 = memref.alloc() {alignment = 16 : i64} : memref<1x1x768xf32>
    %cast_37 = memref.cast %alloc_36 : memref<1x1x768xf32> to memref<*xf32>
    %34 = llvm.mlir.addressof @constant_18 : !llvm.ptr<array<12 x i8>>
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%35, %cast_37) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_38 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_35[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_36[0, %arg4, %arg5] : memref<1x1x768xf32>
          %155 = arith.addf %153, %154 : f32
          affine.store %155, %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_39 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst, %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_39[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %155 = arith.addf %154, %153 : f32
          affine.store %155, %alloc_39[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %153 = affine.load %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %154 = arith.divf %153, %cst_1 : f32
          affine.store %154, %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_40 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_39[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %155 = arith.subf %153, %154 : f32
          affine.store %155, %alloc_40[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_41 = memref.alloc() : memref<f32>
    %cast_42 = memref.cast %alloc_41 : memref<f32> to memref<*xf32>
    %36 = llvm.mlir.addressof @constant_19 : !llvm.ptr<array<12 x i8>>
    %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%37, %cast_42) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_43 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_40[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_41[] : memref<f32>
          %155 = math.powf %153, %154 : f32
          affine.store %155, %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_44 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst, %alloc_44[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_44[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %155 = arith.addf %154, %153 : f32
          affine.store %155, %alloc_44[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %153 = affine.load %alloc_44[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %154 = arith.divf %153, %cst_1 : f32
          affine.store %154, %alloc_44[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_45 = memref.alloc() : memref<f32>
    %cast_46 = memref.cast %alloc_45 : memref<f32> to memref<*xf32>
    %38 = llvm.mlir.addressof @constant_20 : !llvm.ptr<array<12 x i8>>
    %39 = llvm.getelementptr %38[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%39, %cast_46) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_47 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %153 = affine.load %alloc_44[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %154 = affine.load %alloc_45[] : memref<f32>
          %155 = arith.addf %153, %154 : f32
          affine.store %155, %alloc_47[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_48 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %153 = affine.load %alloc_47[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %154 = math.sqrt %153 : f32
          affine.store %154, %alloc_48[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_49 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_40[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_48[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %155 = arith.divf %153, %154 : f32
          affine.store %155, %alloc_49[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_50 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_49[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_3[%arg5] : memref<768xf32>
          %155 = arith.mulf %153, %154 : f32
          affine.store %155, %alloc_50[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_51 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_50[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_5[%arg5] : memref<768xf32>
          %155 = arith.addf %153, %154 : f32
          affine.store %155, %alloc_51[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_52 = memref.reinterpret_cast %alloc_51 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_53 = memref.alloc() {alignment = 128 : i64} : memref<64x2304xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 2304 {
        affine.store %cst, %alloc_53[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %alloc_54 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_55 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 2304 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %153 = affine.load %alloc_7[%arg4 + %arg5, %arg3 + %arg6] : memref<768x2304xf32>
            affine.store %153, %alloc_55[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %153 = affine.load %reinterpret_cast_52[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %153, %alloc_54[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %153 = affine.apply #map3(%arg5, %arg7)
              %154 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %155 = vector.load %alloc_53[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %155, %alloca[0] : memref<4xvector<16xf32>>
              %156 = arith.addi %arg7, %c1 : index
              %157 = vector.load %alloc_53[%156, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %157, %alloca[1] : memref<4xvector<16xf32>>
              %158 = arith.addi %arg7, %c2 : index
              %159 = vector.load %alloc_53[%158, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %159, %alloca[2] : memref<4xvector<16xf32>>
              %160 = arith.addi %arg7, %c3 : index
              %161 = vector.load %alloc_53[%160, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %161, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %166 = memref.load %alloc_54[%153, %arg8] : memref<32x256xf32>
                %167 = vector.broadcast %166 : f32 to vector<16xf32>
                %168 = vector.load %alloc_55[%arg8, %154] : memref<256x64xf32>, vector<16xf32>
                %169 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %170 = vector.fma %167, %168, %169 : vector<16xf32>
                affine.store %170, %alloca[0] : memref<4xvector<16xf32>>
                %171 = affine.apply #map4(%arg8)
                %172 = memref.load %alloc_54[%153, %171] : memref<32x256xf32>
                %173 = vector.broadcast %172 : f32 to vector<16xf32>
                %174 = vector.load %alloc_55[%171, %154] : memref<256x64xf32>, vector<16xf32>
                %175 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %176 = vector.fma %173, %174, %175 : vector<16xf32>
                affine.store %176, %alloca[0] : memref<4xvector<16xf32>>
                %177 = affine.apply #map5(%arg8)
                %178 = memref.load %alloc_54[%153, %177] : memref<32x256xf32>
                %179 = vector.broadcast %178 : f32 to vector<16xf32>
                %180 = vector.load %alloc_55[%177, %154] : memref<256x64xf32>, vector<16xf32>
                %181 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %182 = vector.fma %179, %180, %181 : vector<16xf32>
                affine.store %182, %alloca[0] : memref<4xvector<16xf32>>
                %183 = affine.apply #map6(%arg8)
                %184 = memref.load %alloc_54[%153, %183] : memref<32x256xf32>
                %185 = vector.broadcast %184 : f32 to vector<16xf32>
                %186 = vector.load %alloc_55[%183, %154] : memref<256x64xf32>, vector<16xf32>
                %187 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %188 = vector.fma %185, %186, %187 : vector<16xf32>
                affine.store %188, %alloca[0] : memref<4xvector<16xf32>>
                %189 = arith.addi %153, %c1 : index
                %190 = memref.load %alloc_54[%189, %arg8] : memref<32x256xf32>
                %191 = vector.broadcast %190 : f32 to vector<16xf32>
                %192 = vector.load %alloc_55[%arg8, %154] : memref<256x64xf32>, vector<16xf32>
                %193 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %194 = vector.fma %191, %192, %193 : vector<16xf32>
                affine.store %194, %alloca[1] : memref<4xvector<16xf32>>
                %195 = memref.load %alloc_54[%189, %171] : memref<32x256xf32>
                %196 = vector.broadcast %195 : f32 to vector<16xf32>
                %197 = vector.load %alloc_55[%171, %154] : memref<256x64xf32>, vector<16xf32>
                %198 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %199 = vector.fma %196, %197, %198 : vector<16xf32>
                affine.store %199, %alloca[1] : memref<4xvector<16xf32>>
                %200 = memref.load %alloc_54[%189, %177] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_55[%177, %154] : memref<256x64xf32>, vector<16xf32>
                %203 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                affine.store %204, %alloca[1] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_54[%189, %183] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_55[%183, %154] : memref<256x64xf32>, vector<16xf32>
                %208 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                affine.store %209, %alloca[1] : memref<4xvector<16xf32>>
                %210 = arith.addi %153, %c2 : index
                %211 = memref.load %alloc_54[%210, %arg8] : memref<32x256xf32>
                %212 = vector.broadcast %211 : f32 to vector<16xf32>
                %213 = vector.load %alloc_55[%arg8, %154] : memref<256x64xf32>, vector<16xf32>
                %214 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %215 = vector.fma %212, %213, %214 : vector<16xf32>
                affine.store %215, %alloca[2] : memref<4xvector<16xf32>>
                %216 = memref.load %alloc_54[%210, %171] : memref<32x256xf32>
                %217 = vector.broadcast %216 : f32 to vector<16xf32>
                %218 = vector.load %alloc_55[%171, %154] : memref<256x64xf32>, vector<16xf32>
                %219 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %220 = vector.fma %217, %218, %219 : vector<16xf32>
                affine.store %220, %alloca[2] : memref<4xvector<16xf32>>
                %221 = memref.load %alloc_54[%210, %177] : memref<32x256xf32>
                %222 = vector.broadcast %221 : f32 to vector<16xf32>
                %223 = vector.load %alloc_55[%177, %154] : memref<256x64xf32>, vector<16xf32>
                %224 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %225 = vector.fma %222, %223, %224 : vector<16xf32>
                affine.store %225, %alloca[2] : memref<4xvector<16xf32>>
                %226 = memref.load %alloc_54[%210, %183] : memref<32x256xf32>
                %227 = vector.broadcast %226 : f32 to vector<16xf32>
                %228 = vector.load %alloc_55[%183, %154] : memref<256x64xf32>, vector<16xf32>
                %229 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %230 = vector.fma %227, %228, %229 : vector<16xf32>
                affine.store %230, %alloca[2] : memref<4xvector<16xf32>>
                %231 = arith.addi %153, %c3 : index
                %232 = memref.load %alloc_54[%231, %arg8] : memref<32x256xf32>
                %233 = vector.broadcast %232 : f32 to vector<16xf32>
                %234 = vector.load %alloc_55[%arg8, %154] : memref<256x64xf32>, vector<16xf32>
                %235 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %236 = vector.fma %233, %234, %235 : vector<16xf32>
                affine.store %236, %alloca[3] : memref<4xvector<16xf32>>
                %237 = memref.load %alloc_54[%231, %171] : memref<32x256xf32>
                %238 = vector.broadcast %237 : f32 to vector<16xf32>
                %239 = vector.load %alloc_55[%171, %154] : memref<256x64xf32>, vector<16xf32>
                %240 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %241 = vector.fma %238, %239, %240 : vector<16xf32>
                affine.store %241, %alloca[3] : memref<4xvector<16xf32>>
                %242 = memref.load %alloc_54[%231, %177] : memref<32x256xf32>
                %243 = vector.broadcast %242 : f32 to vector<16xf32>
                %244 = vector.load %alloc_55[%177, %154] : memref<256x64xf32>, vector<16xf32>
                %245 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %246 = vector.fma %243, %244, %245 : vector<16xf32>
                affine.store %246, %alloca[3] : memref<4xvector<16xf32>>
                %247 = memref.load %alloc_54[%231, %183] : memref<32x256xf32>
                %248 = vector.broadcast %247 : f32 to vector<16xf32>
                %249 = vector.load %alloc_55[%183, %154] : memref<256x64xf32>, vector<16xf32>
                %250 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %251 = vector.fma %248, %249, %250 : vector<16xf32>
                affine.store %251, %alloca[3] : memref<4xvector<16xf32>>
              }
              %162 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %162, %alloc_53[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %163 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %163, %alloc_53[%156, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %164 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %164, %alloc_53[%158, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %165 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %165, %alloc_53[%160, %arg6] : memref<64x2304xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 2304 {
        %153 = affine.load %alloc_53[%arg3, %arg4] : memref<64x2304xf32>
        %154 = affine.load %alloc_9[%arg4] : memref<2304xf32>
        %155 = arith.addf %153, %154 : f32
        affine.store %155, %alloc_53[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %reinterpret_cast_56 = memref.reinterpret_cast %alloc_53 to offset: [0], sizes: [64, 1, 2304], strides: [2304, 2304, 1] : memref<64x2304xf32> to memref<64x1x2304xf32>
    %alloc_57 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_58 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_59 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %reinterpret_cast_56[%arg3, %arg4, %arg5] : memref<64x1x2304xf32>
          affine.store %153, %alloc_57[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %reinterpret_cast_56[%arg3, %arg4, %arg5 + 768] : memref<64x1x2304xf32>
          affine.store %153, %alloc_58[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %reinterpret_cast_56[%arg3, %arg4, %arg5 + 1536] : memref<64x1x2304xf32>
          affine.store %153, %alloc_59[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_60 = memref.reinterpret_cast %alloc_57 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_61 = memref.reinterpret_cast %alloc_58 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_62 = memref.reinterpret_cast %alloc_59 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %40 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref2", 0]], alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
    %41 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %41 : !llvm.ptr<i64>
    %42 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %42 : !llvm.ptr<i64>
    %43 = rmem.slot %c0 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %44 = rmem.slot %c1 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %45 = rmem.slot %c2 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %46 = rmem.slot %c3 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %47:6 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %43, %arg7 = %44, %arg8 = %45, %arg9 = %46) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>) {
      %153 = arith.addi %arg4, %c1 : index
      %154 = arith.addi %arg5, %c1 : index
      %155 = rmem.slot %arg4 {mem = "t2"} : (index) -> memref<1x196608xf32>
      affine.for %arg10 = 0 to 1 {
        affine.for %arg11 = 0 to 12 {
          affine.for %arg12 = 0 to 255 {
            affine.for %arg13 = 0 to 64 {
              %158 = affine.load %arg1[%arg3 + %arg10, %arg11, %arg12, %arg13] : memref<64x12x255x64xf32>
              affine.store %158, %arg6[%arg10, %arg11 * 16384 + %arg12 * 64 + %arg13] : memref<1x196608xf32>
            }
          }
        }
      }
      %156 = rmem.wrid : index
      %157 = rmem.rdma %arg5, %40[%arg3] %c196608 0 %156 {map = #map7, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %42 -> %156 : <i64>, index
      affine.yield %153, %154, %arg7, %arg8, %arg9, %155 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>
    }
    %48 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %48 : !llvm.ptr<i64>
    %49 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %49 : !llvm.ptr<i64>
    %50 = rmem.slot %c0 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %51 = rmem.slot %c1 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %52 = rmem.slot %c2 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %53 = rmem.slot %c3 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %54:6 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %50, %arg7 = %51, %arg8 = %52, %arg9 = %53) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>) {
      %153 = arith.addi %arg4, %c1 : index
      %154 = arith.addi %arg5, %c1 : index
      %155 = rmem.slot %arg4 {mem = "t2"} : (index) -> memref<1x196608xf32>
      affine.for %arg10 = 0 to 1 {
        affine.for %arg11 = 0 to 12 {
          affine.for %arg12 = 0 to 1 {
            affine.for %arg13 = 0 to 64 {
              %158 = affine.load %reinterpret_cast_61[%arg3 + %arg10, %arg11, %arg12, %arg13] : memref<64x12x1x64xf32>
              affine.store %158, %arg6[%arg10, %arg11 * 16384 + %arg12 * 64 + %arg13 + 16320] : memref<1x196608xf32>
            }
          }
        }
      }
      %156 = rmem.wrid : index
      %157 = rmem.rdma %arg5, %40[%arg3] %c196608 0 %156 {map = #map7, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %49 -> %156 : <i64>, index
      affine.yield %153, %154, %arg7, %arg8, %arg9, %155 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>
    }
    %55 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref3", 0]], alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
    %56 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %56 : !llvm.ptr<i64>
    %57 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %57 : !llvm.ptr<i64>
    %58 = rmem.slot %c0 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %59 = rmem.slot %c1 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %60 = rmem.slot %c2 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %61 = rmem.slot %c3 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %62:6 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %58, %arg7 = %59, %arg8 = %60, %arg9 = %61) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>) {
      %153 = arith.addi %arg4, %c1 : index
      %154 = arith.addi %arg5, %c1 : index
      %155 = rmem.slot %arg4 {mem = "t3"} : (index) -> memref<1x196608xf32>
      affine.for %arg10 = 0 to 1 {
        affine.for %arg11 = 0 to 12 {
          affine.for %arg12 = 0 to 255 {
            affine.for %arg13 = 0 to 64 {
              %158 = affine.load %arg2[%arg3 + %arg10, %arg11, %arg12, %arg13] : memref<64x12x255x64xf32>
              affine.store %158, %arg6[%arg10, %arg11 * 16384 + %arg12 * 64 + %arg13] : memref<1x196608xf32>
            }
          }
        }
      }
      %156 = rmem.wrid : index
      %157 = rmem.rdma %arg5, %55[%arg3] %c196608 0 %156 {map = #map7, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %57 -> %156 : <i64>, index
      affine.yield %153, %154, %arg7, %arg8, %arg9, %155 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>
    }
    %63 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %63 : !llvm.ptr<i64>
    %64 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %64 : !llvm.ptr<i64>
    %65 = rmem.slot %c0 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %66 = rmem.slot %c1 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %67 = rmem.slot %c2 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %68 = rmem.slot %c3 {mem = "t3"} : (index) -> memref<1x196608xf32>
    %69:6 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %65, %arg7 = %66, %arg8 = %67, %arg9 = %68) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>) {
      %153 = arith.addi %arg4, %c1 : index
      %154 = arith.addi %arg5, %c1 : index
      %155 = rmem.slot %arg4 {mem = "t3"} : (index) -> memref<1x196608xf32>
      affine.for %arg10 = 0 to 1 {
        affine.for %arg11 = 0 to 12 {
          affine.for %arg12 = 0 to 1 {
            affine.for %arg13 = 0 to 64 {
              %158 = affine.load %reinterpret_cast_62[%arg3 + %arg10, %arg11, %arg12, %arg13] : memref<64x12x1x64xf32>
              affine.store %158, %arg6[%arg10, %arg11 * 16384 + %arg12 * 64 + %arg13 + 16320] : memref<1x196608xf32>
            }
          }
        }
      }
      %156 = rmem.wrid : index
      %157 = rmem.rdma %arg5, %55[%arg3] %c196608 0 %156 {map = #map7, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %64 -> %156 : <i64>, index
      affine.yield %153, %154, %arg7, %arg8, %arg9, %155 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>, memref<1x196608xf32>
    }
    %70 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref4", 0]], alignment = 16 : i64} : <1, memref<64x12x64x256xf32>>
    %71 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %71 : !llvm.ptr<i64>
    %72 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %72 : !llvm.ptr<i64>
    %73 = rmem.rdma %c0, %40[%c0] %c196608 4 %c0 {map = #map7, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %74 = rmem.slot %c0 {mem = "t4"} : (index) -> memref<1x196608xf32>
    %75 = rmem.rdma %c1, %40[%c1] %c196608 4 %c0 {map = #map7, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %76 = rmem.slot %c1 {mem = "t4"} : (index) -> memref<1x196608xf32>
    %77 = rmem.rdma %c2, %40[%c2] %c196608 4 %c0 {map = #map7, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %78 = rmem.slot %c2 {mem = "t4"} : (index) -> memref<1x196608xf32>
    %79 = rmem.rdma %c3, %40[%c3] %c196608 4 %c0 {map = #map7, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %80 = rmem.slot %c3 {mem = "t4"} : (index) -> memref<1x196608xf32>
    %81:14 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %73, %arg7 = %74, %arg8 = %c0, %arg9 = %75, %arg10 = %76, %arg11 = %c0, %arg12 = %77, %arg13 = %78, %arg14 = %c0, %arg15 = %79, %arg16 = %80, %arg17 = %c0) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index) {
      %153 = arith.addi %arg4, %c1 : index
      %154 = arith.addi %arg5, %c1 : index
      %155 = arith.addi %arg3, %c4 : index
      %156 = rmem.rdma %arg4, %40[%155] %c196608 4 %c0 {map = #map7, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      %157 = rmem.slot %arg4 {mem = "t4"} : (index) -> memref<1x196608xf32>
      rmem.sync %71 -> %arg8 : <i64>, index
      affine.for %arg18 = 0 to 1 {
        affine.for %arg19 = 0 to 12 {
          affine.for %arg20 = 0 to 256 {
            affine.for %arg21 = 0 to 64 {
              %160 = affine.load %arg6[%arg18, %arg19 * 16384 + %arg20 * 64 + %arg21] : memref<1x196608xf32>
              affine.store %160, %arg7[%arg18, %arg19 * 16384 + %arg20 + %arg21 * 256] : memref<1x196608xf32>
            }
          }
        }
      }
      %158 = rmem.wrid : index
      %159 = rmem.rdma %arg5, %70[%arg3] %c196608 0 %158 {map = #map7, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %72 -> %158 : <i64>, index
      affine.yield %153, %154, %arg9, %arg10, %arg11, %arg12, %arg13, %arg14, %arg15, %arg16, %arg17, %156, %157, %c0 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index, memref<1x196608xf32>, memref<1x196608xf32>, index
    }
    %alloc_63 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            affine.store %cst, %alloc_63[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %82 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %82 : !llvm.ptr<i64>
    %83 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %83 : !llvm.ptr<i64>
    %84 = rmem.wrid : index
    %85 = rmem.rdma %c0, %70[%c0] %c786432 4 %84 {map = #map7, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<4x196608xf32>
    %86 = rmem.wrid : index
    %87 = rmem.rdma %c1, %70[%c4] %c786432 4 %86 {map = #map7, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<4x196608xf32>
    %88 = rmem.wrid : index
    %89 = rmem.rdma %c2, %70[%c8] %c786432 4 %88 {map = #map7, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<4x196608xf32>
    %90 = rmem.wrid : index
    %91 = rmem.rdma %c3, %70[%c12] %c786432 4 %90 {map = #map7, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<4x196608xf32>
    %92:10 = affine.for %arg3 = 0 to 64 step 4 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %85, %arg7 = %84, %arg8 = %87, %arg9 = %86, %arg10 = %89, %arg11 = %88, %arg12 = %91, %arg13 = %90) -> (index, index, memref<4x196608xf32>, index, memref<4x196608xf32>, index, memref<4x196608xf32>, index, memref<4x196608xf32>, index) {
      %153 = arith.addi %arg4, %c1 : index
      %154 = arith.addi %arg5, %c1 : index
      %155 = arith.addi %arg3, %c16 : index
      %156 = rmem.wrid : index
      %157 = rmem.rdma %arg4, %70[%155] %c786432 4 %156 {map = #map7, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<4x196608xf32>
      rmem.sync %82 -> %arg7 : <i64>, index
      affine.for %arg14 = 0 to 4 {
        %158 = affine.apply #map8(%arg3, %arg14)
        affine.for %arg15 = 0 to 12 {
          affine.for %arg16 = 0 to 1 {
            affine.for %arg17 = 0 to 256 step 8 {
              affine.for %arg18 = 0 to 64 step 8 {
                %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
                affine.for %arg19 = 0 to 1 {
                  %159 = arith.addi %arg19, %arg16 : index
                  %160 = vector.load %alloc_63[%158, %arg15, %159, %arg17] : memref<64x12x1x256xf32>, vector<8xf32>
                  affine.store %160, %alloca[0] : memref<1xvector<8xf32>>
                  %161 = memref.load %reinterpret_cast_60[%158, %arg15, %159, %arg18] : memref<64x12x1x64xf32>
                  %162 = vector.broadcast %161 : f32 to vector<8xf32>
                  %163 = affine.apply #map9(%arg15, %arg17, %arg18)
                  %164 = vector.load %arg6[%arg14, %163] : memref<4x196608xf32>, vector<8xf32>
                  %165 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %166 = vector.fma %162, %164, %165 : vector<8xf32>
                  affine.store %166, %alloca[0] : memref<1xvector<8xf32>>
                  %167 = arith.addi %arg18, %c1 : index
                  %168 = memref.load %reinterpret_cast_60[%158, %arg15, %159, %167] : memref<64x12x1x64xf32>
                  %169 = vector.broadcast %168 : f32 to vector<8xf32>
                  %170 = affine.apply #map10(%arg15, %arg17, %arg18)
                  %171 = vector.load %arg6[%arg14, %170] : memref<4x196608xf32>, vector<8xf32>
                  %172 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %173 = vector.fma %169, %171, %172 : vector<8xf32>
                  affine.store %173, %alloca[0] : memref<1xvector<8xf32>>
                  %174 = arith.addi %arg18, %c2 : index
                  %175 = memref.load %reinterpret_cast_60[%158, %arg15, %159, %174] : memref<64x12x1x64xf32>
                  %176 = vector.broadcast %175 : f32 to vector<8xf32>
                  %177 = affine.apply #map11(%arg15, %arg17, %arg18)
                  %178 = vector.load %arg6[%arg14, %177] : memref<4x196608xf32>, vector<8xf32>
                  %179 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %180 = vector.fma %176, %178, %179 : vector<8xf32>
                  affine.store %180, %alloca[0] : memref<1xvector<8xf32>>
                  %181 = arith.addi %arg18, %c3 : index
                  %182 = memref.load %reinterpret_cast_60[%158, %arg15, %159, %181] : memref<64x12x1x64xf32>
                  %183 = vector.broadcast %182 : f32 to vector<8xf32>
                  %184 = affine.apply #map12(%arg15, %arg17, %arg18)
                  %185 = vector.load %arg6[%arg14, %184] : memref<4x196608xf32>, vector<8xf32>
                  %186 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %187 = vector.fma %183, %185, %186 : vector<8xf32>
                  affine.store %187, %alloca[0] : memref<1xvector<8xf32>>
                  %188 = arith.addi %arg18, %c4 : index
                  %189 = memref.load %reinterpret_cast_60[%158, %arg15, %159, %188] : memref<64x12x1x64xf32>
                  %190 = vector.broadcast %189 : f32 to vector<8xf32>
                  %191 = affine.apply #map13(%arg15, %arg17, %arg18)
                  %192 = vector.load %arg6[%arg14, %191] : memref<4x196608xf32>, vector<8xf32>
                  %193 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %194 = vector.fma %190, %192, %193 : vector<8xf32>
                  affine.store %194, %alloca[0] : memref<1xvector<8xf32>>
                  %195 = arith.addi %arg18, %c5 : index
                  %196 = memref.load %reinterpret_cast_60[%158, %arg15, %159, %195] : memref<64x12x1x64xf32>
                  %197 = vector.broadcast %196 : f32 to vector<8xf32>
                  %198 = affine.apply #map14(%arg15, %arg17, %arg18)
                  %199 = vector.load %arg6[%arg14, %198] : memref<4x196608xf32>, vector<8xf32>
                  %200 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %201 = vector.fma %197, %199, %200 : vector<8xf32>
                  affine.store %201, %alloca[0] : memref<1xvector<8xf32>>
                  %202 = arith.addi %arg18, %c6 : index
                  %203 = memref.load %reinterpret_cast_60[%158, %arg15, %159, %202] : memref<64x12x1x64xf32>
                  %204 = vector.broadcast %203 : f32 to vector<8xf32>
                  %205 = affine.apply #map15(%arg15, %arg17, %arg18)
                  %206 = vector.load %arg6[%arg14, %205] : memref<4x196608xf32>, vector<8xf32>
                  %207 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %208 = vector.fma %204, %206, %207 : vector<8xf32>
                  affine.store %208, %alloca[0] : memref<1xvector<8xf32>>
                  %209 = arith.addi %arg18, %c7 : index
                  %210 = memref.load %reinterpret_cast_60[%158, %arg15, %159, %209] : memref<64x12x1x64xf32>
                  %211 = vector.broadcast %210 : f32 to vector<8xf32>
                  %212 = affine.apply #map16(%arg15, %arg17, %arg18)
                  %213 = vector.load %arg6[%arg14, %212] : memref<4x196608xf32>, vector<8xf32>
                  %214 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %215 = vector.fma %211, %213, %214 : vector<8xf32>
                  affine.store %215, %alloca[0] : memref<1xvector<8xf32>>
                  %216 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  vector.store %216, %alloc_63[%158, %arg15, %159, %arg17] : memref<64x12x1x256xf32>, vector<8xf32>
                }
              }
            }
          }
        }
      }
      affine.yield %153, %154, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %157, %156 : index, index, memref<4x196608xf32>, index, memref<4x196608xf32>, index, memref<4x196608xf32>, index, memref<4x196608xf32>, index
    }
    %alloc_64 = memref.alloc() : memref<f32>
    %cast_65 = memref.cast %alloc_64 : memref<f32> to memref<*xf32>
    %93 = llvm.mlir.addressof @constant_27 : !llvm.ptr<array<12 x i8>>
    %94 = llvm.getelementptr %93[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%94, %cast_65) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_66 = memref.alloc() : memref<f32>
    %cast_67 = memref.cast %alloc_66 : memref<f32> to memref<*xf32>
    %95 = llvm.mlir.addressof @constant_28 : !llvm.ptr<array<12 x i8>>
    %96 = llvm.getelementptr %95[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%96, %cast_67) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_68 = memref.alloc() : memref<f32>
    %97 = affine.load %alloc_64[] : memref<f32>
    %98 = affine.load %alloc_66[] : memref<f32>
    %99 = math.powf %97, %98 : f32
    affine.store %99, %alloc_68[] : memref<f32>
    %alloc_69 = memref.alloc() : memref<f32>
    affine.store %cst, %alloc_69[] : memref<f32>
    %alloc_70 = memref.alloc() : memref<f32>
    %100 = affine.load %alloc_69[] : memref<f32>
    %101 = affine.load %alloc_68[] : memref<f32>
    %102 = arith.addf %100, %101 : f32
    affine.store %102, %alloc_70[] : memref<f32>
    %alloc_71 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %153 = affine.load %alloc_63[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %154 = affine.load %alloc_70[] : memref<f32>
            %155 = arith.divf %153, %154 : f32
            affine.store %155, %alloc_71[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_72 = memref.alloc() : memref<f32>
    %cast_73 = memref.cast %alloc_72 : memref<f32> to memref<*xf32>
    %103 = llvm.mlir.addressof @constant_30 : !llvm.ptr<array<12 x i8>>
    %104 = llvm.getelementptr %103[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%104, %cast_73) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_74 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %153 = affine.load %alloc_31[0, 0, %arg5, %arg6] : memref<1x1x1x256xi1>
            %154 = affine.load %alloc_71[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %155 = affine.load %alloc_72[] : memref<f32>
            %156 = arith.select %153, %154, %155 : f32
            affine.store %156, %alloc_74[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_75 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    %alloc_76 = memref.alloc() : memref<f32>
    %alloc_77 = memref.alloc() : memref<f32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst, %alloc_76[] : memref<f32>
          affine.store %cst_0, %alloc_77[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %155 = affine.load %alloc_77[] : memref<f32>
            %156 = affine.load %alloc_74[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %157 = arith.cmpf ogt, %155, %156 : f32
            %158 = arith.select %157, %155, %156 : f32
            affine.store %158, %alloc_77[] : memref<f32>
          }
          %153 = affine.load %alloc_77[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %155 = affine.load %alloc_76[] : memref<f32>
            %156 = affine.load %alloc_74[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %157 = arith.subf %156, %153 : f32
            %158 = math.exp %157 : f32
            %159 = arith.addf %155, %158 : f32
            affine.store %159, %alloc_76[] : memref<f32>
            affine.store %158, %alloc_75[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
          %154 = affine.load %alloc_76[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %155 = affine.load %alloc_75[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %156 = arith.divf %155, %154 : f32
            affine.store %156, %alloc_75[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_78 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x64xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 64 {
            affine.store %cst, %alloc_78[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
          }
        }
      }
    }
    %105 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %105 : !llvm.ptr<i64>
    %106 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %106 : !llvm.ptr<i64>
    %107 = rmem.wrid : index
    %108 = rmem.rdma %c0, %55[%c0] %c786432 4 %107 {map = #map7, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<4x196608xf32>
    %109 = rmem.wrid : index
    %110 = rmem.rdma %c1, %55[%c4] %c786432 4 %109 {map = #map7, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<4x196608xf32>
    %111 = rmem.wrid : index
    %112 = rmem.rdma %c2, %55[%c8] %c786432 4 %111 {map = #map7, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<4x196608xf32>
    %113 = rmem.wrid : index
    %114 = rmem.rdma %c3, %55[%c12] %c786432 4 %113 {map = #map7, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<4x196608xf32>
    %115:10 = affine.for %arg3 = 0 to 64 step 4 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %108, %arg7 = %107, %arg8 = %110, %arg9 = %109, %arg10 = %112, %arg11 = %111, %arg12 = %114, %arg13 = %113) -> (index, index, memref<4x196608xf32>, index, memref<4x196608xf32>, index, memref<4x196608xf32>, index, memref<4x196608xf32>, index) {
      %153 = arith.addi %arg4, %c1 : index
      %154 = arith.addi %arg5, %c1 : index
      %155 = arith.addi %arg3, %c16 : index
      %156 = rmem.wrid : index
      %157 = rmem.rdma %arg4, %55[%155] %c786432 4 %156 {map = #map7, mem = "t3"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<4x196608xf32>
      rmem.sync %105 -> %arg7 : <i64>, index
      affine.for %arg14 = 0 to 4 {
        %158 = affine.apply #map8(%arg3, %arg14)
        affine.for %arg15 = 0 to 12 {
          affine.for %arg16 = 0 to 1 {
            affine.for %arg17 = 0 to 64 step 8 {
              affine.for %arg18 = 0 to 256 step 8 {
                %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
                affine.for %arg19 = 0 to 1 {
                  %159 = arith.addi %arg19, %arg16 : index
                  %160 = vector.load %alloc_78[%158, %arg15, %159, %arg17] : memref<64x12x1x64xf32>, vector<8xf32>
                  affine.store %160, %alloca[0] : memref<1xvector<8xf32>>
                  %161 = memref.load %alloc_75[%158, %arg15, %159, %arg18] : memref<64x12x1x256xf32>
                  %162 = vector.broadcast %161 : f32 to vector<8xf32>
                  %163 = affine.apply #map17(%arg15, %arg17, %arg18)
                  %164 = vector.load %arg6[%arg14, %163] : memref<4x196608xf32>, vector<8xf32>
                  %165 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %166 = vector.fma %162, %164, %165 : vector<8xf32>
                  affine.store %166, %alloca[0] : memref<1xvector<8xf32>>
                  %167 = arith.addi %arg18, %c1 : index
                  %168 = memref.load %alloc_75[%158, %arg15, %159, %167] : memref<64x12x1x256xf32>
                  %169 = vector.broadcast %168 : f32 to vector<8xf32>
                  %170 = affine.apply #map18(%arg15, %arg17, %arg18)
                  %171 = vector.load %arg6[%arg14, %170] : memref<4x196608xf32>, vector<8xf32>
                  %172 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %173 = vector.fma %169, %171, %172 : vector<8xf32>
                  affine.store %173, %alloca[0] : memref<1xvector<8xf32>>
                  %174 = arith.addi %arg18, %c2 : index
                  %175 = memref.load %alloc_75[%158, %arg15, %159, %174] : memref<64x12x1x256xf32>
                  %176 = vector.broadcast %175 : f32 to vector<8xf32>
                  %177 = affine.apply #map19(%arg15, %arg17, %arg18)
                  %178 = vector.load %arg6[%arg14, %177] : memref<4x196608xf32>, vector<8xf32>
                  %179 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %180 = vector.fma %176, %178, %179 : vector<8xf32>
                  affine.store %180, %alloca[0] : memref<1xvector<8xf32>>
                  %181 = arith.addi %arg18, %c3 : index
                  %182 = memref.load %alloc_75[%158, %arg15, %159, %181] : memref<64x12x1x256xf32>
                  %183 = vector.broadcast %182 : f32 to vector<8xf32>
                  %184 = affine.apply #map20(%arg15, %arg17, %arg18)
                  %185 = vector.load %arg6[%arg14, %184] : memref<4x196608xf32>, vector<8xf32>
                  %186 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %187 = vector.fma %183, %185, %186 : vector<8xf32>
                  affine.store %187, %alloca[0] : memref<1xvector<8xf32>>
                  %188 = arith.addi %arg18, %c4 : index
                  %189 = memref.load %alloc_75[%158, %arg15, %159, %188] : memref<64x12x1x256xf32>
                  %190 = vector.broadcast %189 : f32 to vector<8xf32>
                  %191 = affine.apply #map21(%arg15, %arg17, %arg18)
                  %192 = vector.load %arg6[%arg14, %191] : memref<4x196608xf32>, vector<8xf32>
                  %193 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %194 = vector.fma %190, %192, %193 : vector<8xf32>
                  affine.store %194, %alloca[0] : memref<1xvector<8xf32>>
                  %195 = arith.addi %arg18, %c5 : index
                  %196 = memref.load %alloc_75[%158, %arg15, %159, %195] : memref<64x12x1x256xf32>
                  %197 = vector.broadcast %196 : f32 to vector<8xf32>
                  %198 = affine.apply #map22(%arg15, %arg17, %arg18)
                  %199 = vector.load %arg6[%arg14, %198] : memref<4x196608xf32>, vector<8xf32>
                  %200 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %201 = vector.fma %197, %199, %200 : vector<8xf32>
                  affine.store %201, %alloca[0] : memref<1xvector<8xf32>>
                  %202 = arith.addi %arg18, %c6 : index
                  %203 = memref.load %alloc_75[%158, %arg15, %159, %202] : memref<64x12x1x256xf32>
                  %204 = vector.broadcast %203 : f32 to vector<8xf32>
                  %205 = affine.apply #map23(%arg15, %arg17, %arg18)
                  %206 = vector.load %arg6[%arg14, %205] : memref<4x196608xf32>, vector<8xf32>
                  %207 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %208 = vector.fma %204, %206, %207 : vector<8xf32>
                  affine.store %208, %alloca[0] : memref<1xvector<8xf32>>
                  %209 = arith.addi %arg18, %c7 : index
                  %210 = memref.load %alloc_75[%158, %arg15, %159, %209] : memref<64x12x1x256xf32>
                  %211 = vector.broadcast %210 : f32 to vector<8xf32>
                  %212 = affine.apply #map24(%arg15, %arg17, %arg18)
                  %213 = vector.load %arg6[%arg14, %212] : memref<4x196608xf32>, vector<8xf32>
                  %214 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %215 = vector.fma %211, %213, %214 : vector<8xf32>
                  affine.store %215, %alloca[0] : memref<1xvector<8xf32>>
                  %216 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  vector.store %216, %alloc_78[%158, %arg15, %159, %arg17] : memref<64x12x1x64xf32>, vector<8xf32>
                }
              }
            }
          }
        }
      }
      affine.yield %153, %154, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %157, %156 : index, index, memref<4x196608xf32>, index, memref<4x196608xf32>, index, memref<4x196608xf32>, index, memref<4x196608xf32>, index
    }
    %reinterpret_cast_79 = memref.reinterpret_cast %alloc_78 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x12x1x64xf32> to memref<64x768xf32>
    %alloc_80 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        affine.store %cst, %alloc_80[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_81 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_82 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 768 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %153 = affine.load %alloc_11[%arg4 + %arg5, %arg3 + %arg6] : memref<768x768xf32>
            affine.store %153, %alloc_82[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %153 = affine.load %reinterpret_cast_79[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %153, %alloc_81[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %153 = affine.apply #map3(%arg5, %arg7)
              %154 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %155 = vector.load %alloc_80[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %155, %alloca[0] : memref<4xvector<16xf32>>
              %156 = arith.addi %arg7, %c1 : index
              %157 = vector.load %alloc_80[%156, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %157, %alloca[1] : memref<4xvector<16xf32>>
              %158 = arith.addi %arg7, %c2 : index
              %159 = vector.load %alloc_80[%158, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %159, %alloca[2] : memref<4xvector<16xf32>>
              %160 = arith.addi %arg7, %c3 : index
              %161 = vector.load %alloc_80[%160, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %161, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %166 = memref.load %alloc_81[%153, %arg8] : memref<32x256xf32>
                %167 = vector.broadcast %166 : f32 to vector<16xf32>
                %168 = vector.load %alloc_82[%arg8, %154] : memref<256x64xf32>, vector<16xf32>
                %169 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %170 = vector.fma %167, %168, %169 : vector<16xf32>
                affine.store %170, %alloca[0] : memref<4xvector<16xf32>>
                %171 = affine.apply #map4(%arg8)
                %172 = memref.load %alloc_81[%153, %171] : memref<32x256xf32>
                %173 = vector.broadcast %172 : f32 to vector<16xf32>
                %174 = vector.load %alloc_82[%171, %154] : memref<256x64xf32>, vector<16xf32>
                %175 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %176 = vector.fma %173, %174, %175 : vector<16xf32>
                affine.store %176, %alloca[0] : memref<4xvector<16xf32>>
                %177 = affine.apply #map5(%arg8)
                %178 = memref.load %alloc_81[%153, %177] : memref<32x256xf32>
                %179 = vector.broadcast %178 : f32 to vector<16xf32>
                %180 = vector.load %alloc_82[%177, %154] : memref<256x64xf32>, vector<16xf32>
                %181 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %182 = vector.fma %179, %180, %181 : vector<16xf32>
                affine.store %182, %alloca[0] : memref<4xvector<16xf32>>
                %183 = affine.apply #map6(%arg8)
                %184 = memref.load %alloc_81[%153, %183] : memref<32x256xf32>
                %185 = vector.broadcast %184 : f32 to vector<16xf32>
                %186 = vector.load %alloc_82[%183, %154] : memref<256x64xf32>, vector<16xf32>
                %187 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %188 = vector.fma %185, %186, %187 : vector<16xf32>
                affine.store %188, %alloca[0] : memref<4xvector<16xf32>>
                %189 = arith.addi %153, %c1 : index
                %190 = memref.load %alloc_81[%189, %arg8] : memref<32x256xf32>
                %191 = vector.broadcast %190 : f32 to vector<16xf32>
                %192 = vector.load %alloc_82[%arg8, %154] : memref<256x64xf32>, vector<16xf32>
                %193 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %194 = vector.fma %191, %192, %193 : vector<16xf32>
                affine.store %194, %alloca[1] : memref<4xvector<16xf32>>
                %195 = memref.load %alloc_81[%189, %171] : memref<32x256xf32>
                %196 = vector.broadcast %195 : f32 to vector<16xf32>
                %197 = vector.load %alloc_82[%171, %154] : memref<256x64xf32>, vector<16xf32>
                %198 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %199 = vector.fma %196, %197, %198 : vector<16xf32>
                affine.store %199, %alloca[1] : memref<4xvector<16xf32>>
                %200 = memref.load %alloc_81[%189, %177] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_82[%177, %154] : memref<256x64xf32>, vector<16xf32>
                %203 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                affine.store %204, %alloca[1] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_81[%189, %183] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_82[%183, %154] : memref<256x64xf32>, vector<16xf32>
                %208 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                affine.store %209, %alloca[1] : memref<4xvector<16xf32>>
                %210 = arith.addi %153, %c2 : index
                %211 = memref.load %alloc_81[%210, %arg8] : memref<32x256xf32>
                %212 = vector.broadcast %211 : f32 to vector<16xf32>
                %213 = vector.load %alloc_82[%arg8, %154] : memref<256x64xf32>, vector<16xf32>
                %214 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %215 = vector.fma %212, %213, %214 : vector<16xf32>
                affine.store %215, %alloca[2] : memref<4xvector<16xf32>>
                %216 = memref.load %alloc_81[%210, %171] : memref<32x256xf32>
                %217 = vector.broadcast %216 : f32 to vector<16xf32>
                %218 = vector.load %alloc_82[%171, %154] : memref<256x64xf32>, vector<16xf32>
                %219 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %220 = vector.fma %217, %218, %219 : vector<16xf32>
                affine.store %220, %alloca[2] : memref<4xvector<16xf32>>
                %221 = memref.load %alloc_81[%210, %177] : memref<32x256xf32>
                %222 = vector.broadcast %221 : f32 to vector<16xf32>
                %223 = vector.load %alloc_82[%177, %154] : memref<256x64xf32>, vector<16xf32>
                %224 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %225 = vector.fma %222, %223, %224 : vector<16xf32>
                affine.store %225, %alloca[2] : memref<4xvector<16xf32>>
                %226 = memref.load %alloc_81[%210, %183] : memref<32x256xf32>
                %227 = vector.broadcast %226 : f32 to vector<16xf32>
                %228 = vector.load %alloc_82[%183, %154] : memref<256x64xf32>, vector<16xf32>
                %229 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %230 = vector.fma %227, %228, %229 : vector<16xf32>
                affine.store %230, %alloca[2] : memref<4xvector<16xf32>>
                %231 = arith.addi %153, %c3 : index
                %232 = memref.load %alloc_81[%231, %arg8] : memref<32x256xf32>
                %233 = vector.broadcast %232 : f32 to vector<16xf32>
                %234 = vector.load %alloc_82[%arg8, %154] : memref<256x64xf32>, vector<16xf32>
                %235 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %236 = vector.fma %233, %234, %235 : vector<16xf32>
                affine.store %236, %alloca[3] : memref<4xvector<16xf32>>
                %237 = memref.load %alloc_81[%231, %171] : memref<32x256xf32>
                %238 = vector.broadcast %237 : f32 to vector<16xf32>
                %239 = vector.load %alloc_82[%171, %154] : memref<256x64xf32>, vector<16xf32>
                %240 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %241 = vector.fma %238, %239, %240 : vector<16xf32>
                affine.store %241, %alloca[3] : memref<4xvector<16xf32>>
                %242 = memref.load %alloc_81[%231, %177] : memref<32x256xf32>
                %243 = vector.broadcast %242 : f32 to vector<16xf32>
                %244 = vector.load %alloc_82[%177, %154] : memref<256x64xf32>, vector<16xf32>
                %245 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %246 = vector.fma %243, %244, %245 : vector<16xf32>
                affine.store %246, %alloca[3] : memref<4xvector<16xf32>>
                %247 = memref.load %alloc_81[%231, %183] : memref<32x256xf32>
                %248 = vector.broadcast %247 : f32 to vector<16xf32>
                %249 = vector.load %alloc_82[%183, %154] : memref<256x64xf32>, vector<16xf32>
                %250 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %251 = vector.fma %248, %249, %250 : vector<16xf32>
                affine.store %251, %alloca[3] : memref<4xvector<16xf32>>
              }
              %162 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %162, %alloc_80[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %163 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %163, %alloc_80[%156, %arg6] : memref<64x768xf32>, vector<16xf32>
              %164 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %164, %alloc_80[%158, %arg6] : memref<64x768xf32>, vector<16xf32>
              %165 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %165, %alloc_80[%160, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %153 = affine.load %alloc_80[%arg3, %arg4] : memref<64x768xf32>
        %154 = affine.load %alloc_13[%arg4] : memref<768xf32>
        %155 = arith.addf %153, %154 : f32
        affine.store %155, %alloc_80[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_83 = memref.reinterpret_cast %alloc_80 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_84 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %reinterpret_cast_83[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_35[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %155 = arith.addf %153, %154 : f32
          affine.store %155, %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_85 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_36[0, %arg4, %arg5] : memref<1x1x768xf32>
          %155 = arith.addf %153, %154 : f32
          affine.store %155, %alloc_85[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_86 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst, %alloc_86[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_85[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_86[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %155 = arith.addf %154, %153 : f32
          affine.store %155, %alloc_86[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %153 = affine.load %alloc_86[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %154 = arith.divf %153, %cst_1 : f32
          affine.store %154, %alloc_86[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_87 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_85[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_86[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %155 = arith.subf %153, %154 : f32
          affine.store %155, %alloc_87[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_88 = memref.alloc() : memref<f32>
    %cast_89 = memref.cast %alloc_88 : memref<f32> to memref<*xf32>
    %116 = llvm.mlir.addressof @constant_33 : !llvm.ptr<array<12 x i8>>
    %117 = llvm.getelementptr %116[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%117, %cast_89) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_90 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_87[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_88[] : memref<f32>
          %155 = math.powf %153, %154 : f32
          affine.store %155, %alloc_90[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_91 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst, %alloc_91[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_90[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_91[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %155 = arith.addf %154, %153 : f32
          affine.store %155, %alloc_91[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %153 = affine.load %alloc_91[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %154 = arith.divf %153, %cst_1 : f32
          affine.store %154, %alloc_91[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_92 = memref.alloc() : memref<f32>
    %cast_93 = memref.cast %alloc_92 : memref<f32> to memref<*xf32>
    %118 = llvm.mlir.addressof @constant_34 : !llvm.ptr<array<12 x i8>>
    %119 = llvm.getelementptr %118[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%119, %cast_93) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_94 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %153 = affine.load %alloc_91[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %154 = affine.load %alloc_92[] : memref<f32>
          %155 = arith.addf %153, %154 : f32
          affine.store %155, %alloc_94[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_95 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %153 = affine.load %alloc_94[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %154 = math.sqrt %153 : f32
          affine.store %154, %alloc_95[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_96 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_87[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_95[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %155 = arith.divf %153, %154 : f32
          affine.store %155, %alloc_96[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_97 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_96[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_15[%arg5] : memref<768xf32>
          %155 = arith.mulf %153, %154 : f32
          affine.store %155, %alloc_97[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_98 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_97[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_17[%arg5] : memref<768xf32>
          %155 = arith.addf %153, %154 : f32
          affine.store %155, %alloc_98[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_99 = memref.reinterpret_cast %alloc_98 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_100 = memref.alloc() {alignment = 128 : i64} : memref<64x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 3072 {
        affine.store %cst, %alloc_100[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %alloc_101 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_102 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 3072 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %153 = affine.load %alloc_19[%arg4 + %arg5, %arg3 + %arg6] : memref<768x3072xf32>
            affine.store %153, %alloc_102[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %153 = affine.load %reinterpret_cast_99[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %153, %alloc_101[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %153 = affine.apply #map3(%arg5, %arg7)
              %154 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %155 = vector.load %alloc_100[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %155, %alloca[0] : memref<4xvector<16xf32>>
              %156 = arith.addi %arg7, %c1 : index
              %157 = vector.load %alloc_100[%156, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %157, %alloca[1] : memref<4xvector<16xf32>>
              %158 = arith.addi %arg7, %c2 : index
              %159 = vector.load %alloc_100[%158, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %159, %alloca[2] : memref<4xvector<16xf32>>
              %160 = arith.addi %arg7, %c3 : index
              %161 = vector.load %alloc_100[%160, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %161, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %166 = memref.load %alloc_101[%153, %arg8] : memref<32x256xf32>
                %167 = vector.broadcast %166 : f32 to vector<16xf32>
                %168 = vector.load %alloc_102[%arg8, %154] : memref<256x64xf32>, vector<16xf32>
                %169 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %170 = vector.fma %167, %168, %169 : vector<16xf32>
                affine.store %170, %alloca[0] : memref<4xvector<16xf32>>
                %171 = affine.apply #map4(%arg8)
                %172 = memref.load %alloc_101[%153, %171] : memref<32x256xf32>
                %173 = vector.broadcast %172 : f32 to vector<16xf32>
                %174 = vector.load %alloc_102[%171, %154] : memref<256x64xf32>, vector<16xf32>
                %175 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %176 = vector.fma %173, %174, %175 : vector<16xf32>
                affine.store %176, %alloca[0] : memref<4xvector<16xf32>>
                %177 = affine.apply #map5(%arg8)
                %178 = memref.load %alloc_101[%153, %177] : memref<32x256xf32>
                %179 = vector.broadcast %178 : f32 to vector<16xf32>
                %180 = vector.load %alloc_102[%177, %154] : memref<256x64xf32>, vector<16xf32>
                %181 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %182 = vector.fma %179, %180, %181 : vector<16xf32>
                affine.store %182, %alloca[0] : memref<4xvector<16xf32>>
                %183 = affine.apply #map6(%arg8)
                %184 = memref.load %alloc_101[%153, %183] : memref<32x256xf32>
                %185 = vector.broadcast %184 : f32 to vector<16xf32>
                %186 = vector.load %alloc_102[%183, %154] : memref<256x64xf32>, vector<16xf32>
                %187 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %188 = vector.fma %185, %186, %187 : vector<16xf32>
                affine.store %188, %alloca[0] : memref<4xvector<16xf32>>
                %189 = arith.addi %153, %c1 : index
                %190 = memref.load %alloc_101[%189, %arg8] : memref<32x256xf32>
                %191 = vector.broadcast %190 : f32 to vector<16xf32>
                %192 = vector.load %alloc_102[%arg8, %154] : memref<256x64xf32>, vector<16xf32>
                %193 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %194 = vector.fma %191, %192, %193 : vector<16xf32>
                affine.store %194, %alloca[1] : memref<4xvector<16xf32>>
                %195 = memref.load %alloc_101[%189, %171] : memref<32x256xf32>
                %196 = vector.broadcast %195 : f32 to vector<16xf32>
                %197 = vector.load %alloc_102[%171, %154] : memref<256x64xf32>, vector<16xf32>
                %198 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %199 = vector.fma %196, %197, %198 : vector<16xf32>
                affine.store %199, %alloca[1] : memref<4xvector<16xf32>>
                %200 = memref.load %alloc_101[%189, %177] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_102[%177, %154] : memref<256x64xf32>, vector<16xf32>
                %203 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                affine.store %204, %alloca[1] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_101[%189, %183] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_102[%183, %154] : memref<256x64xf32>, vector<16xf32>
                %208 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                affine.store %209, %alloca[1] : memref<4xvector<16xf32>>
                %210 = arith.addi %153, %c2 : index
                %211 = memref.load %alloc_101[%210, %arg8] : memref<32x256xf32>
                %212 = vector.broadcast %211 : f32 to vector<16xf32>
                %213 = vector.load %alloc_102[%arg8, %154] : memref<256x64xf32>, vector<16xf32>
                %214 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %215 = vector.fma %212, %213, %214 : vector<16xf32>
                affine.store %215, %alloca[2] : memref<4xvector<16xf32>>
                %216 = memref.load %alloc_101[%210, %171] : memref<32x256xf32>
                %217 = vector.broadcast %216 : f32 to vector<16xf32>
                %218 = vector.load %alloc_102[%171, %154] : memref<256x64xf32>, vector<16xf32>
                %219 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %220 = vector.fma %217, %218, %219 : vector<16xf32>
                affine.store %220, %alloca[2] : memref<4xvector<16xf32>>
                %221 = memref.load %alloc_101[%210, %177] : memref<32x256xf32>
                %222 = vector.broadcast %221 : f32 to vector<16xf32>
                %223 = vector.load %alloc_102[%177, %154] : memref<256x64xf32>, vector<16xf32>
                %224 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %225 = vector.fma %222, %223, %224 : vector<16xf32>
                affine.store %225, %alloca[2] : memref<4xvector<16xf32>>
                %226 = memref.load %alloc_101[%210, %183] : memref<32x256xf32>
                %227 = vector.broadcast %226 : f32 to vector<16xf32>
                %228 = vector.load %alloc_102[%183, %154] : memref<256x64xf32>, vector<16xf32>
                %229 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %230 = vector.fma %227, %228, %229 : vector<16xf32>
                affine.store %230, %alloca[2] : memref<4xvector<16xf32>>
                %231 = arith.addi %153, %c3 : index
                %232 = memref.load %alloc_101[%231, %arg8] : memref<32x256xf32>
                %233 = vector.broadcast %232 : f32 to vector<16xf32>
                %234 = vector.load %alloc_102[%arg8, %154] : memref<256x64xf32>, vector<16xf32>
                %235 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %236 = vector.fma %233, %234, %235 : vector<16xf32>
                affine.store %236, %alloca[3] : memref<4xvector<16xf32>>
                %237 = memref.load %alloc_101[%231, %171] : memref<32x256xf32>
                %238 = vector.broadcast %237 : f32 to vector<16xf32>
                %239 = vector.load %alloc_102[%171, %154] : memref<256x64xf32>, vector<16xf32>
                %240 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %241 = vector.fma %238, %239, %240 : vector<16xf32>
                affine.store %241, %alloca[3] : memref<4xvector<16xf32>>
                %242 = memref.load %alloc_101[%231, %177] : memref<32x256xf32>
                %243 = vector.broadcast %242 : f32 to vector<16xf32>
                %244 = vector.load %alloc_102[%177, %154] : memref<256x64xf32>, vector<16xf32>
                %245 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %246 = vector.fma %243, %244, %245 : vector<16xf32>
                affine.store %246, %alloca[3] : memref<4xvector<16xf32>>
                %247 = memref.load %alloc_101[%231, %183] : memref<32x256xf32>
                %248 = vector.broadcast %247 : f32 to vector<16xf32>
                %249 = vector.load %alloc_102[%183, %154] : memref<256x64xf32>, vector<16xf32>
                %250 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %251 = vector.fma %248, %249, %250 : vector<16xf32>
                affine.store %251, %alloca[3] : memref<4xvector<16xf32>>
              }
              %162 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %162, %alloc_100[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %163 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %163, %alloc_100[%156, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %164 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %164, %alloc_100[%158, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %165 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %165, %alloc_100[%160, %arg6] : memref<64x3072xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 3072 {
        %153 = affine.load %alloc_100[%arg3, %arg4] : memref<64x3072xf32>
        %154 = affine.load %alloc_21[%arg4] : memref<3072xf32>
        %155 = arith.addf %153, %154 : f32
        affine.store %155, %alloc_100[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %reinterpret_cast_103 = memref.reinterpret_cast %alloc_100 to offset: [0], sizes: [64, 1, 3072], strides: [3072, 3072, 1] : memref<64x3072xf32> to memref<64x1x3072xf32>
    %alloc_104 = memref.alloc() : memref<f32>
    %cast_105 = memref.cast %alloc_104 : memref<f32> to memref<*xf32>
    %120 = llvm.mlir.addressof @constant_37 : !llvm.ptr<array<12 x i8>>
    %121 = llvm.getelementptr %120[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%121, %cast_105) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_106 = memref.alloc() : memref<f32>
    %cast_107 = memref.cast %alloc_106 : memref<f32> to memref<*xf32>
    %122 = llvm.mlir.addressof @constant_38 : !llvm.ptr<array<12 x i8>>
    %123 = llvm.getelementptr %122[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%123, %cast_107) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_108 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %153 = affine.load %reinterpret_cast_103[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %154 = affine.load %alloc_106[] : memref<f32>
          %155 = math.powf %153, %154 : f32
          affine.store %155, %alloc_108[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_109 = memref.alloc() : memref<f32>
    %cast_110 = memref.cast %alloc_109 : memref<f32> to memref<*xf32>
    %124 = llvm.mlir.addressof @constant_39 : !llvm.ptr<array<12 x i8>>
    %125 = llvm.getelementptr %124[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%125, %cast_110) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_111 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %153 = affine.load %alloc_108[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %154 = affine.load %alloc_109[] : memref<f32>
          %155 = arith.mulf %153, %154 : f32
          affine.store %155, %alloc_111[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_112 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %153 = affine.load %reinterpret_cast_103[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %154 = affine.load %alloc_111[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %155 = arith.addf %153, %154 : f32
          affine.store %155, %alloc_112[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_113 = memref.alloc() : memref<f32>
    %cast_114 = memref.cast %alloc_113 : memref<f32> to memref<*xf32>
    %126 = llvm.mlir.addressof @constant_40 : !llvm.ptr<array<12 x i8>>
    %127 = llvm.getelementptr %126[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%127, %cast_114) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_115 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %153 = affine.load %alloc_112[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %154 = affine.load %alloc_113[] : memref<f32>
          %155 = arith.mulf %153, %154 : f32
          affine.store %155, %alloc_115[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_116 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %153 = affine.load %alloc_115[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %154 = math.tanh %153 : f32
          affine.store %154, %alloc_116[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_117 = memref.alloc() : memref<f32>
    %cast_118 = memref.cast %alloc_117 : memref<f32> to memref<*xf32>
    %128 = llvm.mlir.addressof @constant_41 : !llvm.ptr<array<12 x i8>>
    %129 = llvm.getelementptr %128[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%129, %cast_118) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_119 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %153 = affine.load %alloc_116[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %154 = affine.load %alloc_117[] : memref<f32>
          %155 = arith.addf %153, %154 : f32
          affine.store %155, %alloc_119[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_120 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %153 = affine.load %reinterpret_cast_103[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %154 = affine.load %alloc_119[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %155 = arith.mulf %153, %154 : f32
          affine.store %155, %alloc_120[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_121 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %153 = affine.load %alloc_120[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %154 = affine.load %alloc_104[] : memref<f32>
          %155 = arith.mulf %153, %154 : f32
          affine.store %155, %alloc_121[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %reinterpret_cast_122 = memref.reinterpret_cast %alloc_121 to offset: [0], sizes: [64, 3072], strides: [3072, 1] : memref<64x1x3072xf32> to memref<64x3072xf32>
    %alloc_123 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        affine.store %cst, %alloc_123[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_124 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_125 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 768 step 64 {
      affine.for %arg4 = 0 to 3072 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %153 = affine.load %alloc_23[%arg4 + %arg5, %arg3 + %arg6] : memref<3072x768xf32>
            affine.store %153, %alloc_125[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %153 = affine.load %reinterpret_cast_122[%arg5 + %arg6, %arg4 + %arg7] : memref<64x3072xf32>
              affine.store %153, %alloc_124[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %153 = affine.apply #map3(%arg5, %arg7)
              %154 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %155 = vector.load %alloc_123[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %155, %alloca[0] : memref<4xvector<16xf32>>
              %156 = arith.addi %arg7, %c1 : index
              %157 = vector.load %alloc_123[%156, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %157, %alloca[1] : memref<4xvector<16xf32>>
              %158 = arith.addi %arg7, %c2 : index
              %159 = vector.load %alloc_123[%158, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %159, %alloca[2] : memref<4xvector<16xf32>>
              %160 = arith.addi %arg7, %c3 : index
              %161 = vector.load %alloc_123[%160, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %161, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %166 = memref.load %alloc_124[%153, %arg8] : memref<32x256xf32>
                %167 = vector.broadcast %166 : f32 to vector<16xf32>
                %168 = vector.load %alloc_125[%arg8, %154] : memref<256x64xf32>, vector<16xf32>
                %169 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %170 = vector.fma %167, %168, %169 : vector<16xf32>
                affine.store %170, %alloca[0] : memref<4xvector<16xf32>>
                %171 = affine.apply #map4(%arg8)
                %172 = memref.load %alloc_124[%153, %171] : memref<32x256xf32>
                %173 = vector.broadcast %172 : f32 to vector<16xf32>
                %174 = vector.load %alloc_125[%171, %154] : memref<256x64xf32>, vector<16xf32>
                %175 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %176 = vector.fma %173, %174, %175 : vector<16xf32>
                affine.store %176, %alloca[0] : memref<4xvector<16xf32>>
                %177 = affine.apply #map5(%arg8)
                %178 = memref.load %alloc_124[%153, %177] : memref<32x256xf32>
                %179 = vector.broadcast %178 : f32 to vector<16xf32>
                %180 = vector.load %alloc_125[%177, %154] : memref<256x64xf32>, vector<16xf32>
                %181 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %182 = vector.fma %179, %180, %181 : vector<16xf32>
                affine.store %182, %alloca[0] : memref<4xvector<16xf32>>
                %183 = affine.apply #map6(%arg8)
                %184 = memref.load %alloc_124[%153, %183] : memref<32x256xf32>
                %185 = vector.broadcast %184 : f32 to vector<16xf32>
                %186 = vector.load %alloc_125[%183, %154] : memref<256x64xf32>, vector<16xf32>
                %187 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %188 = vector.fma %185, %186, %187 : vector<16xf32>
                affine.store %188, %alloca[0] : memref<4xvector<16xf32>>
                %189 = arith.addi %153, %c1 : index
                %190 = memref.load %alloc_124[%189, %arg8] : memref<32x256xf32>
                %191 = vector.broadcast %190 : f32 to vector<16xf32>
                %192 = vector.load %alloc_125[%arg8, %154] : memref<256x64xf32>, vector<16xf32>
                %193 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %194 = vector.fma %191, %192, %193 : vector<16xf32>
                affine.store %194, %alloca[1] : memref<4xvector<16xf32>>
                %195 = memref.load %alloc_124[%189, %171] : memref<32x256xf32>
                %196 = vector.broadcast %195 : f32 to vector<16xf32>
                %197 = vector.load %alloc_125[%171, %154] : memref<256x64xf32>, vector<16xf32>
                %198 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %199 = vector.fma %196, %197, %198 : vector<16xf32>
                affine.store %199, %alloca[1] : memref<4xvector<16xf32>>
                %200 = memref.load %alloc_124[%189, %177] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_125[%177, %154] : memref<256x64xf32>, vector<16xf32>
                %203 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                affine.store %204, %alloca[1] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_124[%189, %183] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_125[%183, %154] : memref<256x64xf32>, vector<16xf32>
                %208 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                affine.store %209, %alloca[1] : memref<4xvector<16xf32>>
                %210 = arith.addi %153, %c2 : index
                %211 = memref.load %alloc_124[%210, %arg8] : memref<32x256xf32>
                %212 = vector.broadcast %211 : f32 to vector<16xf32>
                %213 = vector.load %alloc_125[%arg8, %154] : memref<256x64xf32>, vector<16xf32>
                %214 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %215 = vector.fma %212, %213, %214 : vector<16xf32>
                affine.store %215, %alloca[2] : memref<4xvector<16xf32>>
                %216 = memref.load %alloc_124[%210, %171] : memref<32x256xf32>
                %217 = vector.broadcast %216 : f32 to vector<16xf32>
                %218 = vector.load %alloc_125[%171, %154] : memref<256x64xf32>, vector<16xf32>
                %219 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %220 = vector.fma %217, %218, %219 : vector<16xf32>
                affine.store %220, %alloca[2] : memref<4xvector<16xf32>>
                %221 = memref.load %alloc_124[%210, %177] : memref<32x256xf32>
                %222 = vector.broadcast %221 : f32 to vector<16xf32>
                %223 = vector.load %alloc_125[%177, %154] : memref<256x64xf32>, vector<16xf32>
                %224 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %225 = vector.fma %222, %223, %224 : vector<16xf32>
                affine.store %225, %alloca[2] : memref<4xvector<16xf32>>
                %226 = memref.load %alloc_124[%210, %183] : memref<32x256xf32>
                %227 = vector.broadcast %226 : f32 to vector<16xf32>
                %228 = vector.load %alloc_125[%183, %154] : memref<256x64xf32>, vector<16xf32>
                %229 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %230 = vector.fma %227, %228, %229 : vector<16xf32>
                affine.store %230, %alloca[2] : memref<4xvector<16xf32>>
                %231 = arith.addi %153, %c3 : index
                %232 = memref.load %alloc_124[%231, %arg8] : memref<32x256xf32>
                %233 = vector.broadcast %232 : f32 to vector<16xf32>
                %234 = vector.load %alloc_125[%arg8, %154] : memref<256x64xf32>, vector<16xf32>
                %235 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %236 = vector.fma %233, %234, %235 : vector<16xf32>
                affine.store %236, %alloca[3] : memref<4xvector<16xf32>>
                %237 = memref.load %alloc_124[%231, %171] : memref<32x256xf32>
                %238 = vector.broadcast %237 : f32 to vector<16xf32>
                %239 = vector.load %alloc_125[%171, %154] : memref<256x64xf32>, vector<16xf32>
                %240 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %241 = vector.fma %238, %239, %240 : vector<16xf32>
                affine.store %241, %alloca[3] : memref<4xvector<16xf32>>
                %242 = memref.load %alloc_124[%231, %177] : memref<32x256xf32>
                %243 = vector.broadcast %242 : f32 to vector<16xf32>
                %244 = vector.load %alloc_125[%177, %154] : memref<256x64xf32>, vector<16xf32>
                %245 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %246 = vector.fma %243, %244, %245 : vector<16xf32>
                affine.store %246, %alloca[3] : memref<4xvector<16xf32>>
                %247 = memref.load %alloc_124[%231, %183] : memref<32x256xf32>
                %248 = vector.broadcast %247 : f32 to vector<16xf32>
                %249 = vector.load %alloc_125[%183, %154] : memref<256x64xf32>, vector<16xf32>
                %250 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %251 = vector.fma %248, %249, %250 : vector<16xf32>
                affine.store %251, %alloca[3] : memref<4xvector<16xf32>>
              }
              %162 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %162, %alloc_123[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %163 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %163, %alloc_123[%156, %arg6] : memref<64x768xf32>, vector<16xf32>
              %164 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %164, %alloc_123[%158, %arg6] : memref<64x768xf32>, vector<16xf32>
              %165 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %165, %alloc_123[%160, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %153 = affine.load %alloc_123[%arg3, %arg4] : memref<64x768xf32>
        %154 = affine.load %alloc_25[%arg4] : memref<768xf32>
        %155 = arith.addf %153, %154 : f32
        affine.store %155, %alloc_123[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_126 = memref.reinterpret_cast %alloc_123 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_127 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %reinterpret_cast_126[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %155 = arith.addf %153, %154 : f32
          affine.store %155, %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_128 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_36[0, %arg4, %arg5] : memref<1x1x768xf32>
          %155 = arith.addf %153, %154 : f32
          affine.store %155, %alloc_128[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_129 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst, %alloc_129[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_128[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_129[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %155 = arith.addf %154, %153 : f32
          affine.store %155, %alloc_129[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %153 = affine.load %alloc_129[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %154 = arith.divf %153, %cst_1 : f32
          affine.store %154, %alloc_129[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_130 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_128[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_129[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %155 = arith.subf %153, %154 : f32
          affine.store %155, %alloc_130[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_131 = memref.alloc() : memref<f32>
    %cast_132 = memref.cast %alloc_131 : memref<f32> to memref<*xf32>
    %130 = llvm.mlir.addressof @constant_44 : !llvm.ptr<array<12 x i8>>
    %131 = llvm.getelementptr %130[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%131, %cast_132) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_133 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_130[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_131[] : memref<f32>
          %155 = math.powf %153, %154 : f32
          affine.store %155, %alloc_133[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_134 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst, %alloc_134[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_133[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_134[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %155 = arith.addf %154, %153 : f32
          affine.store %155, %alloc_134[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %153 = affine.load %alloc_134[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %154 = arith.divf %153, %cst_1 : f32
          affine.store %154, %alloc_134[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_135 = memref.alloc() : memref<f32>
    %cast_136 = memref.cast %alloc_135 : memref<f32> to memref<*xf32>
    %132 = llvm.mlir.addressof @constant_45 : !llvm.ptr<array<12 x i8>>
    %133 = llvm.getelementptr %132[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%133, %cast_136) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_137 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %153 = affine.load %alloc_134[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %154 = affine.load %alloc_135[] : memref<f32>
          %155 = arith.addf %153, %154 : f32
          affine.store %155, %alloc_137[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_138 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %153 = affine.load %alloc_137[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %154 = math.sqrt %153 : f32
          affine.store %154, %alloc_138[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_139 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_130[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_138[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %155 = arith.divf %153, %154 : f32
          affine.store %155, %alloc_139[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_140 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_139[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_27[%arg5] : memref<768xf32>
          %155 = arith.mulf %153, %154 : f32
          affine.store %155, %alloc_140[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_141 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %153 = affine.load %alloc_140[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %154 = affine.load %alloc_29[%arg5] : memref<768xf32>
          %155 = arith.addf %153, %154 : f32
          affine.store %155, %alloc_141[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %134 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref5", 0]], alignment = 16 : i64} : <1, memref<64x1x50264xf32>>
    %135 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %135 : !llvm.ptr<i64>
    %136 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %136 : !llvm.ptr<i64>
    %137 = rmem.slot %c0 {mem = "t5"} : (index) -> memref<1x50264xf32>
    %138 = rmem.slot %c1 {mem = "t5"} : (index) -> memref<1x50264xf32>
    %139 = rmem.slot %c2 {mem = "t5"} : (index) -> memref<1x50264xf32>
    %140 = rmem.slot %c3 {mem = "t5"} : (index) -> memref<1x50264xf32>
    %141:6 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %137, %arg7 = %138, %arg8 = %139, %arg9 = %140) -> (index, index, memref<1x50264xf32>, memref<1x50264xf32>, memref<1x50264xf32>, memref<1x50264xf32>) {
      %153 = arith.addi %arg4, %c1 : index
      %154 = arith.addi %arg5, %c1 : index
      %155 = rmem.slot %arg4 {mem = "t5"} : (index) -> memref<1x50264xf32>
      affine.for %arg10 = 0 to 1 {
        affine.for %arg11 = 0 to 1 {
          affine.for %arg12 = 0 to 50264 {
            affine.store %cst, %arg6[%arg10, %arg11 * 50264 + %arg12] : memref<1x50264xf32>
          }
        }
      }
      %156 = rmem.wrid : index
      %157 = rmem.rdma %arg5, %134[%arg3] %c50264 0 %156 {map = #map25, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %136 -> %156 : <i64>, index
      affine.yield %153, %154, %arg7, %arg8, %arg9, %155 : index, index, memref<1x50264xf32>, memref<1x50264xf32>, memref<1x50264xf32>, memref<1x50264xf32>
    }
    %142 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %142 : !llvm.ptr<i64>
    %143 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %143 : !llvm.ptr<i64>
    %144 = rmem.wrid : index
    %145 = rmem.rdma %c0, %134[%c0] %c50264 4 %144 {map = #map25, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %146 = rmem.wrid : index
    %147 = rmem.rdma %c1, %134[%c1] %c50264 4 %146 {map = #map25, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %148 = rmem.wrid : index
    %149 = rmem.rdma %c2, %134[%c2] %c50264 4 %148 {map = #map25, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %150 = rmem.wrid : index
    %151 = rmem.rdma %c3, %134[%c3] %c50264 4 %150 {map = #map25, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %152:10 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c4, %arg5 = %c0, %arg6 = %145, %arg7 = %144, %arg8 = %147, %arg9 = %146, %arg10 = %149, %arg11 = %148, %arg12 = %151, %arg13 = %150) -> (index, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index) {
      %153 = arith.addi %arg4, %c1 : index
      %154 = arith.addi %arg5, %c1 : index
      %155 = arith.addi %arg3, %c4 : index
      %156 = rmem.wrid : index
      %157 = rmem.rdma %arg4, %134[%155] %c50264 4 %156 {map = #map25, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %142 -> %arg7 : <i64>, index
      affine.for %arg14 = 0 to 1 {
        %160 = affine.apply #map8(%arg3, %arg14)
        affine.for %arg15 = 0 to 1 {
          affine.for %arg16 = 0 to 50264 step 8 {
            affine.for %arg17 = 0 to 768 step 8 {
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
              affine.for %arg18 = 0 to 1 {
                %161 = arith.addi %arg18, %arg15 : index
                %162 = affine.apply #map26(%arg15, %arg16, %arg18)
                %163 = vector.load %arg6[%arg14, %162] : memref<1x50264xf32>, vector<8xf32>
                affine.store %163, %alloca[0] : memref<1xvector<8xf32>>
                %164 = memref.load %alloc_141[%160, %161, %arg17] : memref<64x1x768xf32>
                %165 = vector.broadcast %164 : f32 to vector<8xf32>
                %166 = vector.load %alloc_33[%arg17, %arg16] : memref<768x50264xf32>, vector<8xf32>
                %167 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %168 = vector.fma %165, %166, %167 : vector<8xf32>
                affine.store %168, %alloca[0] : memref<1xvector<8xf32>>
                %169 = arith.addi %arg17, %c1 : index
                %170 = memref.load %alloc_141[%160, %161, %169] : memref<64x1x768xf32>
                %171 = vector.broadcast %170 : f32 to vector<8xf32>
                %172 = vector.load %alloc_33[%169, %arg16] : memref<768x50264xf32>, vector<8xf32>
                %173 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %174 = vector.fma %171, %172, %173 : vector<8xf32>
                affine.store %174, %alloca[0] : memref<1xvector<8xf32>>
                %175 = arith.addi %arg17, %c2 : index
                %176 = memref.load %alloc_141[%160, %161, %175] : memref<64x1x768xf32>
                %177 = vector.broadcast %176 : f32 to vector<8xf32>
                %178 = vector.load %alloc_33[%175, %arg16] : memref<768x50264xf32>, vector<8xf32>
                %179 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %180 = vector.fma %177, %178, %179 : vector<8xf32>
                affine.store %180, %alloca[0] : memref<1xvector<8xf32>>
                %181 = arith.addi %arg17, %c3 : index
                %182 = memref.load %alloc_141[%160, %161, %181] : memref<64x1x768xf32>
                %183 = vector.broadcast %182 : f32 to vector<8xf32>
                %184 = vector.load %alloc_33[%181, %arg16] : memref<768x50264xf32>, vector<8xf32>
                %185 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %186 = vector.fma %183, %184, %185 : vector<8xf32>
                affine.store %186, %alloca[0] : memref<1xvector<8xf32>>
                %187 = arith.addi %arg17, %c4 : index
                %188 = memref.load %alloc_141[%160, %161, %187] : memref<64x1x768xf32>
                %189 = vector.broadcast %188 : f32 to vector<8xf32>
                %190 = vector.load %alloc_33[%187, %arg16] : memref<768x50264xf32>, vector<8xf32>
                %191 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %192 = vector.fma %189, %190, %191 : vector<8xf32>
                affine.store %192, %alloca[0] : memref<1xvector<8xf32>>
                %193 = arith.addi %arg17, %c5 : index
                %194 = memref.load %alloc_141[%160, %161, %193] : memref<64x1x768xf32>
                %195 = vector.broadcast %194 : f32 to vector<8xf32>
                %196 = vector.load %alloc_33[%193, %arg16] : memref<768x50264xf32>, vector<8xf32>
                %197 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %198 = vector.fma %195, %196, %197 : vector<8xf32>
                affine.store %198, %alloca[0] : memref<1xvector<8xf32>>
                %199 = arith.addi %arg17, %c6 : index
                %200 = memref.load %alloc_141[%160, %161, %199] : memref<64x1x768xf32>
                %201 = vector.broadcast %200 : f32 to vector<8xf32>
                %202 = vector.load %alloc_33[%199, %arg16] : memref<768x50264xf32>, vector<8xf32>
                %203 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %204 = vector.fma %201, %202, %203 : vector<8xf32>
                affine.store %204, %alloca[0] : memref<1xvector<8xf32>>
                %205 = arith.addi %arg17, %c7 : index
                %206 = memref.load %alloc_141[%160, %161, %205] : memref<64x1x768xf32>
                %207 = vector.broadcast %206 : f32 to vector<8xf32>
                %208 = vector.load %alloc_33[%205, %arg16] : memref<768x50264xf32>, vector<8xf32>
                %209 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %210 = vector.fma %207, %208, %209 : vector<8xf32>
                affine.store %210, %alloca[0] : memref<1xvector<8xf32>>
                %211 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                vector.store %211, %arg6[%arg14, %162] : memref<1x50264xf32>, vector<8xf32>
              }
            }
          }
        }
      }
      %158 = rmem.wrid : index
      %159 = rmem.rdma %arg5, %134[%arg3] %c50264 0 %158 {map = #map25, mem = "t5"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %143 -> %158 : <i64>, index
      affine.yield %153, %154, %arg8, %arg9, %arg10, %arg11, %arg12, %arg13, %157, %156 : index, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index, memref<1x50264xf32>, index
    }
    return %alloc : memref<64x1x50264xf32>
  }
}


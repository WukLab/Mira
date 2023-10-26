#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 64)>
#map2 = affine_map<(d0) -> (d0 + 32)>
#map3 = affine_map<(d0, d1) -> (-d0 + d1)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> (d0 * 195840)>
#map8 = affine_map<(d0) -> (d0 * 196608)>
#map9 = affine_map<(d0) -> (d0 * 196608 + 16320)>
#map10 = affine_map<(d0, d1) -> (d0 + d1)>
#map11 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256)>
#map12 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 256)>
#map13 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 512)>
#map14 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 768)>
#map15 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1024)>
#map16 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1280)>
#map17 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1536)>
#map18 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1792)>
#map19 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64)>
#map20 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 64)>
#map21 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 128)>
#map22 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 192)>
#map23 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 256)>
#map24 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 320)>
#map25 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 384)>
#map26 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 448)>
#map27 = affine_map<(d0) -> (d0 * 50264)>
#map28 = affine_map<(d0, d1, d2) -> (d0 * 50264 + d1 + d2 * 50264)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 987488, 0, 12582912, f32, 196608, 1, 1 : i32], t1 = ["ref1", 0, 0, 12582912, f32, 196608, 1, 1 : i32], t2 = ["ref2", 2557280, 0, 12582912, f32, 196608, 1, 1 : i32], t3 = ["ref3", 786432, 0, 3216896, f32, 50264, 1, 1 : i32], t4 = ["ref4", 3343712, 0, 12533760, f32, 195840, 1, 1 : i32], t5 = ["ref5", 1773920, 0, 12533760, f32, 195840, 1, 1 : i32]}} {
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
  func.func @main_graph(%arg0: memref<64x1xi64>, %arg1: !rmem.rmref<1, memref<64x12x255x64xf32>>, %arg2: !rmem.rmref<1, memref<64x12x255x64xf32>>) -> !rmem.rmref<1, memref<64x1x50264xf32>> attributes {access_mem_catcher = [["ref4", 1 : i32], ["ref5", 2 : i32]], input_names = ["input_ids", "past.0.key", "past.0.value"], llvm.emit_c_interface, output_names = ["logits"]} {
    %c196608 = arith.constant 196608 : index
    %c195840 = arith.constant 195840 : index
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
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
    %alloc_32 = memref.alloc() {alignment = 16 : i64} : memref<768x50264xf32>
    %cast_33 = memref.cast %alloc_32 : memref<768x50264xf32> to memref<*xf32>
    %32 = llvm.mlir.addressof @constant_16 : !llvm.ptr<array<12 x i8>>
    %33 = llvm.getelementptr %32[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%33, %cast_33) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %reinterpret_cast = memref.reinterpret_cast %arg0 to offset: [0], sizes: [64, 1], strides: [1, 1] : memref<64x1xi64> to memref<64x1xi64>
    %alloc_34 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %reinterpret_cast[%arg3, %arg4] : memref<64x1xi64>
          %118 = arith.index_cast %117 : i64 to index
          %119 = arith.addi %118, %c50264 : index
          %120 = arith.cmpi slt, %118, %c0 : index
          %121 = arith.select %120, %119, %118 : index
          %122 = memref.load %alloc[%121, %arg5] : memref<50264x768xf32>
          affine.store %122, %alloc_34[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_35 = memref.alloc() {alignment = 16 : i64} : memref<1x1x768xf32>
    %cast_36 = memref.cast %alloc_35 : memref<1x1x768xf32> to memref<*xf32>
    %34 = llvm.mlir.addressof @constant_18 : !llvm.ptr<array<12 x i8>>
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%35, %cast_36) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_37 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_34[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_35[0, %arg4, %arg5] : memref<1x1x768xf32>
          %119 = arith.addf %117, %118 : f32
          affine.store %119, %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_38 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_38[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %119 = arith.addf %118, %117 : f32
          affine.store %119, %alloc_38[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %117 = affine.load %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = arith.divf %117, %cst : f32
          affine.store %118, %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_39 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_38[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %119 = arith.subf %117, %118 : f32
          affine.store %119, %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_40 = memref.alloc() : memref<f32>
    %cast_41 = memref.cast %alloc_40 : memref<f32> to memref<*xf32>
    %36 = llvm.mlir.addressof @constant_19 : !llvm.ptr<array<12 x i8>>
    %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%37, %cast_41) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_42 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_40[] : memref<f32>
          %119 = math.powf %117, %118 : f32
          affine.store %119, %alloc_42[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_43 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_42[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_43[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %119 = arith.addf %118, %117 : f32
          affine.store %119, %alloc_43[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %117 = affine.load %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = arith.divf %117, %cst : f32
          affine.store %118, %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_44 = memref.alloc() : memref<f32>
    %cast_45 = memref.cast %alloc_44 : memref<f32> to memref<*xf32>
    %38 = llvm.mlir.addressof @constant_20 : !llvm.ptr<array<12 x i8>>
    %39 = llvm.getelementptr %38[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%39, %cast_45) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_46 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %117 = affine.load %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = affine.load %alloc_44[] : memref<f32>
          %119 = arith.addf %117, %118 : f32
          affine.store %119, %alloc_46[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_47 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %117 = affine.load %alloc_46[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = math.sqrt %117 : f32
          affine.store %118, %alloc_47[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_48 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_47[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %119 = arith.divf %117, %118 : f32
          affine.store %119, %alloc_48[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_49 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_48[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_2[%arg5] : memref<768xf32>
          %119 = arith.mulf %117, %118 : f32
          affine.store %119, %alloc_49[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_50 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_49[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_4[%arg5] : memref<768xf32>
          %119 = arith.addf %117, %118 : f32
          affine.store %119, %alloc_50[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_51 = memref.reinterpret_cast %alloc_50 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_52 = memref.alloc() {alignment = 128 : i64} : memref<64x2304xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 2304 {
        affine.store %cst_1, %alloc_52[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %alloc_53 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_54 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 2304 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %117 = affine.load %alloc_6[%arg4 + %arg5, %arg3 + %arg6] : memref<768x2304xf32>
            affine.store %117, %alloc_54[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %117 = affine.load %reinterpret_cast_51[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %117, %alloc_53[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %117 = affine.apply #map3(%arg5, %arg7)
              %118 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %119 = vector.load %alloc_52[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %119, %alloca[0] : memref<4xvector<16xf32>>
              %120 = arith.addi %arg7, %c1 : index
              %121 = vector.load %alloc_52[%120, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %121, %alloca[1] : memref<4xvector<16xf32>>
              %122 = arith.addi %arg7, %c2 : index
              %123 = vector.load %alloc_52[%122, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %123, %alloca[2] : memref<4xvector<16xf32>>
              %124 = arith.addi %arg7, %c3 : index
              %125 = vector.load %alloc_52[%124, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %125, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %130 = memref.load %alloc_53[%117, %arg8] : memref<32x256xf32>
                %131 = vector.broadcast %130 : f32 to vector<16xf32>
                %132 = vector.load %alloc_54[%arg8, %118] : memref<256x64xf32>, vector<16xf32>
                %133 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %134 = vector.fma %131, %132, %133 : vector<16xf32>
                affine.store %134, %alloca[0] : memref<4xvector<16xf32>>
                %135 = affine.apply #map4(%arg8)
                %136 = memref.load %alloc_53[%117, %135] : memref<32x256xf32>
                %137 = vector.broadcast %136 : f32 to vector<16xf32>
                %138 = vector.load %alloc_54[%135, %118] : memref<256x64xf32>, vector<16xf32>
                %139 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %140 = vector.fma %137, %138, %139 : vector<16xf32>
                affine.store %140, %alloca[0] : memref<4xvector<16xf32>>
                %141 = affine.apply #map5(%arg8)
                %142 = memref.load %alloc_53[%117, %141] : memref<32x256xf32>
                %143 = vector.broadcast %142 : f32 to vector<16xf32>
                %144 = vector.load %alloc_54[%141, %118] : memref<256x64xf32>, vector<16xf32>
                %145 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %146 = vector.fma %143, %144, %145 : vector<16xf32>
                affine.store %146, %alloca[0] : memref<4xvector<16xf32>>
                %147 = affine.apply #map6(%arg8)
                %148 = memref.load %alloc_53[%117, %147] : memref<32x256xf32>
                %149 = vector.broadcast %148 : f32 to vector<16xf32>
                %150 = vector.load %alloc_54[%147, %118] : memref<256x64xf32>, vector<16xf32>
                %151 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %152 = vector.fma %149, %150, %151 : vector<16xf32>
                affine.store %152, %alloca[0] : memref<4xvector<16xf32>>
                %153 = arith.addi %117, %c1 : index
                %154 = memref.load %alloc_53[%153, %arg8] : memref<32x256xf32>
                %155 = vector.broadcast %154 : f32 to vector<16xf32>
                %156 = vector.load %alloc_54[%arg8, %118] : memref<256x64xf32>, vector<16xf32>
                %157 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %158 = vector.fma %155, %156, %157 : vector<16xf32>
                affine.store %158, %alloca[1] : memref<4xvector<16xf32>>
                %159 = memref.load %alloc_53[%153, %135] : memref<32x256xf32>
                %160 = vector.broadcast %159 : f32 to vector<16xf32>
                %161 = vector.load %alloc_54[%135, %118] : memref<256x64xf32>, vector<16xf32>
                %162 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %163 = vector.fma %160, %161, %162 : vector<16xf32>
                affine.store %163, %alloca[1] : memref<4xvector<16xf32>>
                %164 = memref.load %alloc_53[%153, %141] : memref<32x256xf32>
                %165 = vector.broadcast %164 : f32 to vector<16xf32>
                %166 = vector.load %alloc_54[%141, %118] : memref<256x64xf32>, vector<16xf32>
                %167 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %168 = vector.fma %165, %166, %167 : vector<16xf32>
                affine.store %168, %alloca[1] : memref<4xvector<16xf32>>
                %169 = memref.load %alloc_53[%153, %147] : memref<32x256xf32>
                %170 = vector.broadcast %169 : f32 to vector<16xf32>
                %171 = vector.load %alloc_54[%147, %118] : memref<256x64xf32>, vector<16xf32>
                %172 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %173 = vector.fma %170, %171, %172 : vector<16xf32>
                affine.store %173, %alloca[1] : memref<4xvector<16xf32>>
                %174 = arith.addi %117, %c2 : index
                %175 = memref.load %alloc_53[%174, %arg8] : memref<32x256xf32>
                %176 = vector.broadcast %175 : f32 to vector<16xf32>
                %177 = vector.load %alloc_54[%arg8, %118] : memref<256x64xf32>, vector<16xf32>
                %178 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %179 = vector.fma %176, %177, %178 : vector<16xf32>
                affine.store %179, %alloca[2] : memref<4xvector<16xf32>>
                %180 = memref.load %alloc_53[%174, %135] : memref<32x256xf32>
                %181 = vector.broadcast %180 : f32 to vector<16xf32>
                %182 = vector.load %alloc_54[%135, %118] : memref<256x64xf32>, vector<16xf32>
                %183 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %184 = vector.fma %181, %182, %183 : vector<16xf32>
                affine.store %184, %alloca[2] : memref<4xvector<16xf32>>
                %185 = memref.load %alloc_53[%174, %141] : memref<32x256xf32>
                %186 = vector.broadcast %185 : f32 to vector<16xf32>
                %187 = vector.load %alloc_54[%141, %118] : memref<256x64xf32>, vector<16xf32>
                %188 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %189 = vector.fma %186, %187, %188 : vector<16xf32>
                affine.store %189, %alloca[2] : memref<4xvector<16xf32>>
                %190 = memref.load %alloc_53[%174, %147] : memref<32x256xf32>
                %191 = vector.broadcast %190 : f32 to vector<16xf32>
                %192 = vector.load %alloc_54[%147, %118] : memref<256x64xf32>, vector<16xf32>
                %193 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %194 = vector.fma %191, %192, %193 : vector<16xf32>
                affine.store %194, %alloca[2] : memref<4xvector<16xf32>>
                %195 = arith.addi %117, %c3 : index
                %196 = memref.load %alloc_53[%195, %arg8] : memref<32x256xf32>
                %197 = vector.broadcast %196 : f32 to vector<16xf32>
                %198 = vector.load %alloc_54[%arg8, %118] : memref<256x64xf32>, vector<16xf32>
                %199 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %200 = vector.fma %197, %198, %199 : vector<16xf32>
                affine.store %200, %alloca[3] : memref<4xvector<16xf32>>
                %201 = memref.load %alloc_53[%195, %135] : memref<32x256xf32>
                %202 = vector.broadcast %201 : f32 to vector<16xf32>
                %203 = vector.load %alloc_54[%135, %118] : memref<256x64xf32>, vector<16xf32>
                %204 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %205 = vector.fma %202, %203, %204 : vector<16xf32>
                affine.store %205, %alloca[3] : memref<4xvector<16xf32>>
                %206 = memref.load %alloc_53[%195, %141] : memref<32x256xf32>
                %207 = vector.broadcast %206 : f32 to vector<16xf32>
                %208 = vector.load %alloc_54[%141, %118] : memref<256x64xf32>, vector<16xf32>
                %209 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %210 = vector.fma %207, %208, %209 : vector<16xf32>
                affine.store %210, %alloca[3] : memref<4xvector<16xf32>>
                %211 = memref.load %alloc_53[%195, %147] : memref<32x256xf32>
                %212 = vector.broadcast %211 : f32 to vector<16xf32>
                %213 = vector.load %alloc_54[%147, %118] : memref<256x64xf32>, vector<16xf32>
                %214 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %215 = vector.fma %212, %213, %214 : vector<16xf32>
                affine.store %215, %alloca[3] : memref<4xvector<16xf32>>
              }
              %126 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %126, %alloc_52[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %127 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %127, %alloc_52[%120, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %128 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %128, %alloc_52[%122, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %129 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %129, %alloc_52[%124, %arg6] : memref<64x2304xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 2304 {
        %117 = affine.load %alloc_52[%arg3, %arg4] : memref<64x2304xf32>
        %118 = affine.load %alloc_8[%arg4] : memref<2304xf32>
        %119 = arith.addf %117, %118 : f32
        affine.store %119, %alloc_52[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %reinterpret_cast_55 = memref.reinterpret_cast %alloc_52 to offset: [0], sizes: [64, 1, 2304], strides: [2304, 2304, 1] : memref<64x2304xf32> to memref<64x1x2304xf32>
    %alloc_56 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_57 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_58 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %reinterpret_cast_55[%arg3, %arg4, %arg5] : memref<64x1x2304xf32>
          affine.store %117, %alloc_56[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %reinterpret_cast_55[%arg3, %arg4, %arg5 + 768] : memref<64x1x2304xf32>
          affine.store %117, %alloc_57[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %reinterpret_cast_55[%arg3, %arg4, %arg5 + 1536] : memref<64x1x2304xf32>
          affine.store %117, %alloc_58[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_59 = memref.reinterpret_cast %alloc_56 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_60 = memref.reinterpret_cast %alloc_57 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_61 = memref.reinterpret_cast %alloc_58 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %40 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref0", 0 : i32]], alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
    %41 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %41 : !llvm.ptr<i64>
    %42 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %42 : !llvm.ptr<i64>
    %43 = rmem.rdma %c0, %arg1[%c0] %c195840 4 %c0 {map = #map7, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %44 = rmem.slot %c0 {mem = "t0"} : (index) -> memref<1x196608xf32>
    %45:5 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %43, %arg7 = %44, %arg8 = %c0) -> (index, index, memref<1x195840xf32>, memref<1x196608xf32>, index) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = arith.addi %arg3, %c1 : index
      %120 = rmem.rdma %arg4, %arg1[%119] %c195840 4 %c0 {map = #map7, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
      %121 = rmem.slot %arg4 {mem = "t0"} : (index) -> memref<1x196608xf32>
      rmem.sync %41 -> %arg8 : <i64>, index
      affine.for %arg9 = 0 to 1 {
        affine.for %arg10 = 0 to 12 {
          affine.for %arg11 = 0 to 255 {
            affine.for %arg12 = 0 to 64 {
              %124 = affine.load %arg6[%arg9, %arg10 * 16320 + %arg11 * 64 + %arg12] : memref<1x195840xf32>
              affine.store %124, %arg7[%arg9, %arg10 * 16384 + %arg11 * 64 + %arg12] : memref<1x196608xf32>
            }
          }
        }
      }
      %122 = rmem.wrid : index
      %123 = rmem.rdma %arg5, %40[%arg3] %c196608 0 %122 {map = #map8, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %42 -> %122 : <i64>, index
      affine.yield %117, %118, %120, %121, %c0 : index, index, memref<1x195840xf32>, memref<1x196608xf32>, index
    }
    %46 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %46 : !llvm.ptr<i64>
    %47 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %47 : !llvm.ptr<i64>
    %48 = rmem.slot %c0 {mem = "t0"} : (index) -> memref<1x196608xf32>
    %49:3 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %48) -> (index, index, memref<1x196608xf32>) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = rmem.slot %arg4 {mem = "t0"} : (index) -> memref<1x196608xf32>
      affine.for %arg7 = 0 to 1 {
        affine.for %arg8 = 0 to 12 {
          affine.for %arg9 = 0 to 1 {
            affine.for %arg10 = 0 to 64 {
              %122 = affine.load %reinterpret_cast_60[%arg3 + %arg7, %arg8, %arg9, %arg10] : memref<64x12x1x64xf32>
              affine.store %122, %arg6[%arg7, %arg8 * 16384 + %arg9 * 64 + %arg10] : memref<1x196608xf32>
            }
          }
        }
      }
      %120 = rmem.wrid : index
      %121 = rmem.rdma %arg5, %40[%arg3] %c196608 0 %120 {map = #map9, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %47 -> %120 : <i64>, index
      affine.yield %117, %118, %119 : index, index, memref<1x196608xf32>
    }
    %50 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref1", 0 : i32]], alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
    %51 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %51 : !llvm.ptr<i64>
    %52 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %52 : !llvm.ptr<i64>
    %53 = rmem.rdma %c0, %arg2[%c0] %c195840 4 %c0 {map = #map7, mem = "t5"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %54 = rmem.slot %c0 {mem = "t1"} : (index) -> memref<1x196608xf32>
    %55:5 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %53, %arg7 = %54, %arg8 = %c0) -> (index, index, memref<1x195840xf32>, memref<1x196608xf32>, index) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = arith.addi %arg3, %c1 : index
      %120 = rmem.rdma %arg4, %arg2[%119] %c195840 4 %c0 {map = #map7, mem = "t5"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
      %121 = rmem.slot %arg4 {mem = "t1"} : (index) -> memref<1x196608xf32>
      rmem.sync %51 -> %arg8 : <i64>, index
      affine.for %arg9 = 0 to 1 {
        affine.for %arg10 = 0 to 12 {
          affine.for %arg11 = 0 to 255 {
            affine.for %arg12 = 0 to 64 {
              %124 = affine.load %arg6[%arg9, %arg10 * 16320 + %arg11 * 64 + %arg12] : memref<1x195840xf32>
              affine.store %124, %arg7[%arg9, %arg10 * 16384 + %arg11 * 64 + %arg12] : memref<1x196608xf32>
            }
          }
        }
      }
      %122 = rmem.wrid : index
      %123 = rmem.rdma %arg5, %50[%arg3] %c196608 0 %122 {map = #map8, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %52 -> %122 : <i64>, index
      affine.yield %117, %118, %120, %121, %c0 : index, index, memref<1x195840xf32>, memref<1x196608xf32>, index
    }
    %56 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %56 : !llvm.ptr<i64>
    %57 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %57 : !llvm.ptr<i64>
    %58 = rmem.slot %c0 {mem = "t1"} : (index) -> memref<1x196608xf32>
    %59:3 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %58) -> (index, index, memref<1x196608xf32>) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = rmem.slot %arg4 {mem = "t1"} : (index) -> memref<1x196608xf32>
      affine.for %arg7 = 0 to 1 {
        affine.for %arg8 = 0 to 12 {
          affine.for %arg9 = 0 to 1 {
            affine.for %arg10 = 0 to 64 {
              %122 = affine.load %reinterpret_cast_61[%arg3 + %arg7, %arg8, %arg9, %arg10] : memref<64x12x1x64xf32>
              affine.store %122, %arg6[%arg7, %arg8 * 16384 + %arg9 * 64 + %arg10] : memref<1x196608xf32>
            }
          }
        }
      }
      %120 = rmem.wrid : index
      %121 = rmem.rdma %arg5, %50[%arg3] %c196608 0 %120 {map = #map9, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %57 -> %120 : <i64>, index
      affine.yield %117, %118, %119 : index, index, memref<1x196608xf32>
    }
    %60 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref2", 0 : i32]], alignment = 16 : i64} : <1, memref<64x12x64x256xf32>>
    %61 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %61 : !llvm.ptr<i64>
    %62 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %62 : !llvm.ptr<i64>
    %63 = rmem.slot %c0 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %64 = rmem.wrid : index
    %65 = rmem.rdma %c0, %40[%c0] %c196608 4 %64 {map = #map8, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %66:5 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %63, %arg7 = %65, %arg8 = %64) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, index) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = arith.addi %arg3, %c1 : index
      %120 = rmem.slot %arg4 {mem = "t2"} : (index) -> memref<1x196608xf32>
      %121 = rmem.wrid : index
      %122 = rmem.rdma %arg4, %40[%119] %c196608 4 %121 {map = #map8, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %61 -> %arg8 : <i64>, index
      affine.for %arg9 = 0 to 1 {
        affine.for %arg10 = 0 to 12 {
          affine.for %arg11 = 0 to 256 {
            affine.for %arg12 = 0 to 64 {
              %124 = affine.load %arg7[%arg9, %arg10 * 16384 + %arg11 * 64 + %arg12] : memref<1x196608xf32>
              affine.store %124, %arg6[%arg9, %arg10 * 16384 + %arg11 + %arg12 * 256] : memref<1x196608xf32>
            }
          }
        }
      }
      %123 = rmem.rdma %arg5, %60[%arg3] %c196608 0 %c0 {map = #map8, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %62 -> %c0 : <i64>, index
      affine.yield %117, %118, %120, %122, %121 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, index
    }
    %alloc_62 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            affine.store %cst_1, %alloc_62[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %67 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %67 : !llvm.ptr<i64>
    %68 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %68 : !llvm.ptr<i64>
    %69 = rmem.wrid : index
    %70 = rmem.rdma %c0, %60[%c0] %c196608 4 %69 {map = #map8, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
    %71:4 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %70, %arg7 = %69) -> (index, index, memref<1x196608xf32>, index) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = arith.addi %arg3, %c1 : index
      %120 = rmem.wrid : index
      %121 = rmem.rdma %arg4, %60[%119] %c196608 4 %120 {map = #map8, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %67 -> %arg7 : <i64>, index
      affine.for %arg8 = 0 to 1 {
        %122 = affine.apply #map10(%arg3, %arg8)
        affine.for %arg9 = 0 to 12 {
          affine.for %arg10 = 0 to 1 {
            affine.for %arg11 = 0 to 256 step 8 {
              affine.for %arg12 = 0 to 64 step 8 {
                %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
                affine.for %arg13 = 0 to 1 {
                  %123 = arith.addi %arg13, %arg10 : index
                  %124 = vector.load %alloc_62[%122, %arg9, %123, %arg11] : memref<64x12x1x256xf32>, vector<8xf32>
                  affine.store %124, %alloca[0] : memref<1xvector<8xf32>>
                  %125 = memref.load %reinterpret_cast_59[%122, %arg9, %123, %arg12] : memref<64x12x1x64xf32>
                  %126 = vector.broadcast %125 : f32 to vector<8xf32>
                  %127 = affine.apply #map11(%arg9, %arg11, %arg12)
                  %128 = vector.load %arg6[%arg8, %127] : memref<1x196608xf32>, vector<8xf32>
                  %129 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %130 = vector.fma %126, %128, %129 : vector<8xf32>
                  affine.store %130, %alloca[0] : memref<1xvector<8xf32>>
                  %131 = arith.addi %arg12, %c1 : index
                  %132 = memref.load %reinterpret_cast_59[%122, %arg9, %123, %131] : memref<64x12x1x64xf32>
                  %133 = vector.broadcast %132 : f32 to vector<8xf32>
                  %134 = affine.apply #map12(%arg9, %arg11, %arg12)
                  %135 = vector.load %arg6[%arg8, %134] : memref<1x196608xf32>, vector<8xf32>
                  %136 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %137 = vector.fma %133, %135, %136 : vector<8xf32>
                  affine.store %137, %alloca[0] : memref<1xvector<8xf32>>
                  %138 = arith.addi %arg12, %c2 : index
                  %139 = memref.load %reinterpret_cast_59[%122, %arg9, %123, %138] : memref<64x12x1x64xf32>
                  %140 = vector.broadcast %139 : f32 to vector<8xf32>
                  %141 = affine.apply #map13(%arg9, %arg11, %arg12)
                  %142 = vector.load %arg6[%arg8, %141] : memref<1x196608xf32>, vector<8xf32>
                  %143 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %144 = vector.fma %140, %142, %143 : vector<8xf32>
                  affine.store %144, %alloca[0] : memref<1xvector<8xf32>>
                  %145 = arith.addi %arg12, %c3 : index
                  %146 = memref.load %reinterpret_cast_59[%122, %arg9, %123, %145] : memref<64x12x1x64xf32>
                  %147 = vector.broadcast %146 : f32 to vector<8xf32>
                  %148 = affine.apply #map14(%arg9, %arg11, %arg12)
                  %149 = vector.load %arg6[%arg8, %148] : memref<1x196608xf32>, vector<8xf32>
                  %150 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %151 = vector.fma %147, %149, %150 : vector<8xf32>
                  affine.store %151, %alloca[0] : memref<1xvector<8xf32>>
                  %152 = arith.addi %arg12, %c4 : index
                  %153 = memref.load %reinterpret_cast_59[%122, %arg9, %123, %152] : memref<64x12x1x64xf32>
                  %154 = vector.broadcast %153 : f32 to vector<8xf32>
                  %155 = affine.apply #map15(%arg9, %arg11, %arg12)
                  %156 = vector.load %arg6[%arg8, %155] : memref<1x196608xf32>, vector<8xf32>
                  %157 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %158 = vector.fma %154, %156, %157 : vector<8xf32>
                  affine.store %158, %alloca[0] : memref<1xvector<8xf32>>
                  %159 = arith.addi %arg12, %c5 : index
                  %160 = memref.load %reinterpret_cast_59[%122, %arg9, %123, %159] : memref<64x12x1x64xf32>
                  %161 = vector.broadcast %160 : f32 to vector<8xf32>
                  %162 = affine.apply #map16(%arg9, %arg11, %arg12)
                  %163 = vector.load %arg6[%arg8, %162] : memref<1x196608xf32>, vector<8xf32>
                  %164 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %165 = vector.fma %161, %163, %164 : vector<8xf32>
                  affine.store %165, %alloca[0] : memref<1xvector<8xf32>>
                  %166 = arith.addi %arg12, %c6 : index
                  %167 = memref.load %reinterpret_cast_59[%122, %arg9, %123, %166] : memref<64x12x1x64xf32>
                  %168 = vector.broadcast %167 : f32 to vector<8xf32>
                  %169 = affine.apply #map17(%arg9, %arg11, %arg12)
                  %170 = vector.load %arg6[%arg8, %169] : memref<1x196608xf32>, vector<8xf32>
                  %171 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %172 = vector.fma %168, %170, %171 : vector<8xf32>
                  affine.store %172, %alloca[0] : memref<1xvector<8xf32>>
                  %173 = arith.addi %arg12, %c7 : index
                  %174 = memref.load %reinterpret_cast_59[%122, %arg9, %123, %173] : memref<64x12x1x64xf32>
                  %175 = vector.broadcast %174 : f32 to vector<8xf32>
                  %176 = affine.apply #map18(%arg9, %arg11, %arg12)
                  %177 = vector.load %arg6[%arg8, %176] : memref<1x196608xf32>, vector<8xf32>
                  %178 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %179 = vector.fma %175, %177, %178 : vector<8xf32>
                  affine.store %179, %alloca[0] : memref<1xvector<8xf32>>
                  %180 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  vector.store %180, %alloc_62[%122, %arg9, %123, %arg11] : memref<64x12x1x256xf32>, vector<8xf32>
                }
              }
            }
          }
        }
      }
      affine.yield %117, %118, %121, %120 : index, index, memref<1x196608xf32>, index
    }
    %alloc_63 = memref.alloc() : memref<f32>
    %cast_64 = memref.cast %alloc_63 : memref<f32> to memref<*xf32>
    %72 = llvm.mlir.addressof @constant_27 : !llvm.ptr<array<12 x i8>>
    %73 = llvm.getelementptr %72[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%73, %cast_64) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_65 = memref.alloc() : memref<f32>
    %cast_66 = memref.cast %alloc_65 : memref<f32> to memref<*xf32>
    %74 = llvm.mlir.addressof @constant_28 : !llvm.ptr<array<12 x i8>>
    %75 = llvm.getelementptr %74[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%75, %cast_66) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_67 = memref.alloc() : memref<f32>
    %76 = affine.load %alloc_63[] : memref<f32>
    %77 = affine.load %alloc_65[] : memref<f32>
    %78 = math.powf %76, %77 : f32
    affine.store %78, %alloc_67[] : memref<f32>
    %alloc_68 = memref.alloc() : memref<f32>
    affine.store %cst_1, %alloc_68[] : memref<f32>
    %alloc_69 = memref.alloc() : memref<f32>
    %79 = affine.load %alloc_68[] : memref<f32>
    %80 = affine.load %alloc_67[] : memref<f32>
    %81 = arith.addf %79, %80 : f32
    affine.store %81, %alloc_69[] : memref<f32>
    %alloc_70 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %117 = affine.load %alloc_62[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %118 = affine.load %alloc_69[] : memref<f32>
            %119 = arith.divf %117, %118 : f32
            affine.store %119, %alloc_70[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_71 = memref.alloc() : memref<f32>
    %cast_72 = memref.cast %alloc_71 : memref<f32> to memref<*xf32>
    %82 = llvm.mlir.addressof @constant_30 : !llvm.ptr<array<12 x i8>>
    %83 = llvm.getelementptr %82[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%83, %cast_72) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_73 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %117 = affine.load %alloc_30[0, 0, %arg5, %arg6] : memref<1x1x1x256xi1>
            %118 = affine.load %alloc_70[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %119 = affine.load %alloc_71[] : memref<f32>
            %120 = arith.select %117, %118, %119 : f32
            affine.store %120, %alloc_73[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_74 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    %alloc_75 = memref.alloc() : memref<f32>
    %alloc_76 = memref.alloc() : memref<f32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_75[] : memref<f32>
          affine.store %cst_0, %alloc_76[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %119 = affine.load %alloc_76[] : memref<f32>
            %120 = affine.load %alloc_73[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %121 = arith.cmpf ogt, %119, %120 : f32
            %122 = arith.select %121, %119, %120 : f32
            affine.store %122, %alloc_76[] : memref<f32>
          }
          %117 = affine.load %alloc_76[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %119 = affine.load %alloc_75[] : memref<f32>
            %120 = affine.load %alloc_73[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %121 = arith.subf %120, %117 : f32
            %122 = math.exp %121 : f32
            %123 = arith.addf %119, %122 : f32
            affine.store %123, %alloc_75[] : memref<f32>
            affine.store %122, %alloc_74[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
          %118 = affine.load %alloc_75[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %119 = affine.load %alloc_74[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %120 = arith.divf %119, %118 : f32
            affine.store %120, %alloc_74[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_77 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x64xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 64 {
            affine.store %cst_1, %alloc_77[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
          }
        }
      }
    }
    %84 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %84 : !llvm.ptr<i64>
    %85 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %85 : !llvm.ptr<i64>
    %86 = rmem.wrid : index
    %87 = rmem.rdma %c0, %50[%c0] %c196608 4 %86 {map = #map8, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %88:4 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %87, %arg7 = %86) -> (index, index, memref<1x196608xf32>, index) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = arith.addi %arg3, %c1 : index
      %120 = rmem.wrid : index
      %121 = rmem.rdma %arg4, %50[%119] %c196608 4 %120 {map = #map8, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %84 -> %arg7 : <i64>, index
      affine.for %arg8 = 0 to 1 {
        %122 = affine.apply #map10(%arg3, %arg8)
        affine.for %arg9 = 0 to 12 {
          affine.for %arg10 = 0 to 1 {
            affine.for %arg11 = 0 to 64 step 8 {
              affine.for %arg12 = 0 to 256 step 8 {
                %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
                affine.for %arg13 = 0 to 1 {
                  %123 = arith.addi %arg13, %arg10 : index
                  %124 = vector.load %alloc_77[%122, %arg9, %123, %arg11] : memref<64x12x1x64xf32>, vector<8xf32>
                  affine.store %124, %alloca[0] : memref<1xvector<8xf32>>
                  %125 = memref.load %alloc_74[%122, %arg9, %123, %arg12] : memref<64x12x1x256xf32>
                  %126 = vector.broadcast %125 : f32 to vector<8xf32>
                  %127 = affine.apply #map19(%arg9, %arg11, %arg12)
                  %128 = vector.load %arg6[%arg8, %127] : memref<1x196608xf32>, vector<8xf32>
                  %129 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %130 = vector.fma %126, %128, %129 : vector<8xf32>
                  affine.store %130, %alloca[0] : memref<1xvector<8xf32>>
                  %131 = arith.addi %arg12, %c1 : index
                  %132 = memref.load %alloc_74[%122, %arg9, %123, %131] : memref<64x12x1x256xf32>
                  %133 = vector.broadcast %132 : f32 to vector<8xf32>
                  %134 = affine.apply #map20(%arg9, %arg11, %arg12)
                  %135 = vector.load %arg6[%arg8, %134] : memref<1x196608xf32>, vector<8xf32>
                  %136 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %137 = vector.fma %133, %135, %136 : vector<8xf32>
                  affine.store %137, %alloca[0] : memref<1xvector<8xf32>>
                  %138 = arith.addi %arg12, %c2 : index
                  %139 = memref.load %alloc_74[%122, %arg9, %123, %138] : memref<64x12x1x256xf32>
                  %140 = vector.broadcast %139 : f32 to vector<8xf32>
                  %141 = affine.apply #map21(%arg9, %arg11, %arg12)
                  %142 = vector.load %arg6[%arg8, %141] : memref<1x196608xf32>, vector<8xf32>
                  %143 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %144 = vector.fma %140, %142, %143 : vector<8xf32>
                  affine.store %144, %alloca[0] : memref<1xvector<8xf32>>
                  %145 = arith.addi %arg12, %c3 : index
                  %146 = memref.load %alloc_74[%122, %arg9, %123, %145] : memref<64x12x1x256xf32>
                  %147 = vector.broadcast %146 : f32 to vector<8xf32>
                  %148 = affine.apply #map22(%arg9, %arg11, %arg12)
                  %149 = vector.load %arg6[%arg8, %148] : memref<1x196608xf32>, vector<8xf32>
                  %150 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %151 = vector.fma %147, %149, %150 : vector<8xf32>
                  affine.store %151, %alloca[0] : memref<1xvector<8xf32>>
                  %152 = arith.addi %arg12, %c4 : index
                  %153 = memref.load %alloc_74[%122, %arg9, %123, %152] : memref<64x12x1x256xf32>
                  %154 = vector.broadcast %153 : f32 to vector<8xf32>
                  %155 = affine.apply #map23(%arg9, %arg11, %arg12)
                  %156 = vector.load %arg6[%arg8, %155] : memref<1x196608xf32>, vector<8xf32>
                  %157 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %158 = vector.fma %154, %156, %157 : vector<8xf32>
                  affine.store %158, %alloca[0] : memref<1xvector<8xf32>>
                  %159 = arith.addi %arg12, %c5 : index
                  %160 = memref.load %alloc_74[%122, %arg9, %123, %159] : memref<64x12x1x256xf32>
                  %161 = vector.broadcast %160 : f32 to vector<8xf32>
                  %162 = affine.apply #map24(%arg9, %arg11, %arg12)
                  %163 = vector.load %arg6[%arg8, %162] : memref<1x196608xf32>, vector<8xf32>
                  %164 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %165 = vector.fma %161, %163, %164 : vector<8xf32>
                  affine.store %165, %alloca[0] : memref<1xvector<8xf32>>
                  %166 = arith.addi %arg12, %c6 : index
                  %167 = memref.load %alloc_74[%122, %arg9, %123, %166] : memref<64x12x1x256xf32>
                  %168 = vector.broadcast %167 : f32 to vector<8xf32>
                  %169 = affine.apply #map25(%arg9, %arg11, %arg12)
                  %170 = vector.load %arg6[%arg8, %169] : memref<1x196608xf32>, vector<8xf32>
                  %171 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %172 = vector.fma %168, %170, %171 : vector<8xf32>
                  affine.store %172, %alloca[0] : memref<1xvector<8xf32>>
                  %173 = arith.addi %arg12, %c7 : index
                  %174 = memref.load %alloc_74[%122, %arg9, %123, %173] : memref<64x12x1x256xf32>
                  %175 = vector.broadcast %174 : f32 to vector<8xf32>
                  %176 = affine.apply #map26(%arg9, %arg11, %arg12)
                  %177 = vector.load %arg6[%arg8, %176] : memref<1x196608xf32>, vector<8xf32>
                  %178 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %179 = vector.fma %175, %177, %178 : vector<8xf32>
                  affine.store %179, %alloca[0] : memref<1xvector<8xf32>>
                  %180 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  vector.store %180, %alloc_77[%122, %arg9, %123, %arg11] : memref<64x12x1x64xf32>, vector<8xf32>
                }
              }
            }
          }
        }
      }
      affine.yield %117, %118, %121, %120 : index, index, memref<1x196608xf32>, index
    }
    %reinterpret_cast_78 = memref.reinterpret_cast %alloc_77 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x12x1x64xf32> to memref<64x768xf32>
    %alloc_79 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        affine.store %cst_1, %alloc_79[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_80 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_81 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 768 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %117 = affine.load %alloc_10[%arg4 + %arg5, %arg3 + %arg6] : memref<768x768xf32>
            affine.store %117, %alloc_81[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %117 = affine.load %reinterpret_cast_78[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %117, %alloc_80[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %117 = affine.apply #map3(%arg5, %arg7)
              %118 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %119 = vector.load %alloc_79[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %119, %alloca[0] : memref<4xvector<16xf32>>
              %120 = arith.addi %arg7, %c1 : index
              %121 = vector.load %alloc_79[%120, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %121, %alloca[1] : memref<4xvector<16xf32>>
              %122 = arith.addi %arg7, %c2 : index
              %123 = vector.load %alloc_79[%122, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %123, %alloca[2] : memref<4xvector<16xf32>>
              %124 = arith.addi %arg7, %c3 : index
              %125 = vector.load %alloc_79[%124, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %125, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %130 = memref.load %alloc_80[%117, %arg8] : memref<32x256xf32>
                %131 = vector.broadcast %130 : f32 to vector<16xf32>
                %132 = vector.load %alloc_81[%arg8, %118] : memref<256x64xf32>, vector<16xf32>
                %133 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %134 = vector.fma %131, %132, %133 : vector<16xf32>
                affine.store %134, %alloca[0] : memref<4xvector<16xf32>>
                %135 = affine.apply #map4(%arg8)
                %136 = memref.load %alloc_80[%117, %135] : memref<32x256xf32>
                %137 = vector.broadcast %136 : f32 to vector<16xf32>
                %138 = vector.load %alloc_81[%135, %118] : memref<256x64xf32>, vector<16xf32>
                %139 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %140 = vector.fma %137, %138, %139 : vector<16xf32>
                affine.store %140, %alloca[0] : memref<4xvector<16xf32>>
                %141 = affine.apply #map5(%arg8)
                %142 = memref.load %alloc_80[%117, %141] : memref<32x256xf32>
                %143 = vector.broadcast %142 : f32 to vector<16xf32>
                %144 = vector.load %alloc_81[%141, %118] : memref<256x64xf32>, vector<16xf32>
                %145 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %146 = vector.fma %143, %144, %145 : vector<16xf32>
                affine.store %146, %alloca[0] : memref<4xvector<16xf32>>
                %147 = affine.apply #map6(%arg8)
                %148 = memref.load %alloc_80[%117, %147] : memref<32x256xf32>
                %149 = vector.broadcast %148 : f32 to vector<16xf32>
                %150 = vector.load %alloc_81[%147, %118] : memref<256x64xf32>, vector<16xf32>
                %151 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %152 = vector.fma %149, %150, %151 : vector<16xf32>
                affine.store %152, %alloca[0] : memref<4xvector<16xf32>>
                %153 = arith.addi %117, %c1 : index
                %154 = memref.load %alloc_80[%153, %arg8] : memref<32x256xf32>
                %155 = vector.broadcast %154 : f32 to vector<16xf32>
                %156 = vector.load %alloc_81[%arg8, %118] : memref<256x64xf32>, vector<16xf32>
                %157 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %158 = vector.fma %155, %156, %157 : vector<16xf32>
                affine.store %158, %alloca[1] : memref<4xvector<16xf32>>
                %159 = memref.load %alloc_80[%153, %135] : memref<32x256xf32>
                %160 = vector.broadcast %159 : f32 to vector<16xf32>
                %161 = vector.load %alloc_81[%135, %118] : memref<256x64xf32>, vector<16xf32>
                %162 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %163 = vector.fma %160, %161, %162 : vector<16xf32>
                affine.store %163, %alloca[1] : memref<4xvector<16xf32>>
                %164 = memref.load %alloc_80[%153, %141] : memref<32x256xf32>
                %165 = vector.broadcast %164 : f32 to vector<16xf32>
                %166 = vector.load %alloc_81[%141, %118] : memref<256x64xf32>, vector<16xf32>
                %167 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %168 = vector.fma %165, %166, %167 : vector<16xf32>
                affine.store %168, %alloca[1] : memref<4xvector<16xf32>>
                %169 = memref.load %alloc_80[%153, %147] : memref<32x256xf32>
                %170 = vector.broadcast %169 : f32 to vector<16xf32>
                %171 = vector.load %alloc_81[%147, %118] : memref<256x64xf32>, vector<16xf32>
                %172 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %173 = vector.fma %170, %171, %172 : vector<16xf32>
                affine.store %173, %alloca[1] : memref<4xvector<16xf32>>
                %174 = arith.addi %117, %c2 : index
                %175 = memref.load %alloc_80[%174, %arg8] : memref<32x256xf32>
                %176 = vector.broadcast %175 : f32 to vector<16xf32>
                %177 = vector.load %alloc_81[%arg8, %118] : memref<256x64xf32>, vector<16xf32>
                %178 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %179 = vector.fma %176, %177, %178 : vector<16xf32>
                affine.store %179, %alloca[2] : memref<4xvector<16xf32>>
                %180 = memref.load %alloc_80[%174, %135] : memref<32x256xf32>
                %181 = vector.broadcast %180 : f32 to vector<16xf32>
                %182 = vector.load %alloc_81[%135, %118] : memref<256x64xf32>, vector<16xf32>
                %183 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %184 = vector.fma %181, %182, %183 : vector<16xf32>
                affine.store %184, %alloca[2] : memref<4xvector<16xf32>>
                %185 = memref.load %alloc_80[%174, %141] : memref<32x256xf32>
                %186 = vector.broadcast %185 : f32 to vector<16xf32>
                %187 = vector.load %alloc_81[%141, %118] : memref<256x64xf32>, vector<16xf32>
                %188 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %189 = vector.fma %186, %187, %188 : vector<16xf32>
                affine.store %189, %alloca[2] : memref<4xvector<16xf32>>
                %190 = memref.load %alloc_80[%174, %147] : memref<32x256xf32>
                %191 = vector.broadcast %190 : f32 to vector<16xf32>
                %192 = vector.load %alloc_81[%147, %118] : memref<256x64xf32>, vector<16xf32>
                %193 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %194 = vector.fma %191, %192, %193 : vector<16xf32>
                affine.store %194, %alloca[2] : memref<4xvector<16xf32>>
                %195 = arith.addi %117, %c3 : index
                %196 = memref.load %alloc_80[%195, %arg8] : memref<32x256xf32>
                %197 = vector.broadcast %196 : f32 to vector<16xf32>
                %198 = vector.load %alloc_81[%arg8, %118] : memref<256x64xf32>, vector<16xf32>
                %199 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %200 = vector.fma %197, %198, %199 : vector<16xf32>
                affine.store %200, %alloca[3] : memref<4xvector<16xf32>>
                %201 = memref.load %alloc_80[%195, %135] : memref<32x256xf32>
                %202 = vector.broadcast %201 : f32 to vector<16xf32>
                %203 = vector.load %alloc_81[%135, %118] : memref<256x64xf32>, vector<16xf32>
                %204 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %205 = vector.fma %202, %203, %204 : vector<16xf32>
                affine.store %205, %alloca[3] : memref<4xvector<16xf32>>
                %206 = memref.load %alloc_80[%195, %141] : memref<32x256xf32>
                %207 = vector.broadcast %206 : f32 to vector<16xf32>
                %208 = vector.load %alloc_81[%141, %118] : memref<256x64xf32>, vector<16xf32>
                %209 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %210 = vector.fma %207, %208, %209 : vector<16xf32>
                affine.store %210, %alloca[3] : memref<4xvector<16xf32>>
                %211 = memref.load %alloc_80[%195, %147] : memref<32x256xf32>
                %212 = vector.broadcast %211 : f32 to vector<16xf32>
                %213 = vector.load %alloc_81[%147, %118] : memref<256x64xf32>, vector<16xf32>
                %214 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %215 = vector.fma %212, %213, %214 : vector<16xf32>
                affine.store %215, %alloca[3] : memref<4xvector<16xf32>>
              }
              %126 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %126, %alloc_79[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %127 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %127, %alloc_79[%120, %arg6] : memref<64x768xf32>, vector<16xf32>
              %128 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %128, %alloc_79[%122, %arg6] : memref<64x768xf32>, vector<16xf32>
              %129 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %129, %alloc_79[%124, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %117 = affine.load %alloc_79[%arg3, %arg4] : memref<64x768xf32>
        %118 = affine.load %alloc_12[%arg4] : memref<768xf32>
        %119 = arith.addf %117, %118 : f32
        affine.store %119, %alloc_79[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_82 = memref.reinterpret_cast %alloc_79 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_83 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %reinterpret_cast_82[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_34[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = arith.addf %117, %118 : f32
          affine.store %119, %alloc_83[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_84 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_83[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_35[0, %arg4, %arg5] : memref<1x1x768xf32>
          %119 = arith.addf %117, %118 : f32
          affine.store %119, %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_85 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_85[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_85[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %119 = arith.addf %118, %117 : f32
          affine.store %119, %alloc_85[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %117 = affine.load %alloc_85[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = arith.divf %117, %cst : f32
          affine.store %118, %alloc_85[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_86 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_85[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %119 = arith.subf %117, %118 : f32
          affine.store %119, %alloc_86[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_87 = memref.alloc() : memref<f32>
    %cast_88 = memref.cast %alloc_87 : memref<f32> to memref<*xf32>
    %89 = llvm.mlir.addressof @constant_33 : !llvm.ptr<array<12 x i8>>
    %90 = llvm.getelementptr %89[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%90, %cast_88) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_89 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_86[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_87[] : memref<f32>
          %119 = math.powf %117, %118 : f32
          affine.store %119, %alloc_89[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_90 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_90[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_89[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_90[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %119 = arith.addf %118, %117 : f32
          affine.store %119, %alloc_90[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %117 = affine.load %alloc_90[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = arith.divf %117, %cst : f32
          affine.store %118, %alloc_90[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_91 = memref.alloc() : memref<f32>
    %cast_92 = memref.cast %alloc_91 : memref<f32> to memref<*xf32>
    %91 = llvm.mlir.addressof @constant_34 : !llvm.ptr<array<12 x i8>>
    %92 = llvm.getelementptr %91[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%92, %cast_92) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_93 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %117 = affine.load %alloc_90[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = affine.load %alloc_91[] : memref<f32>
          %119 = arith.addf %117, %118 : f32
          affine.store %119, %alloc_93[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_94 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %117 = affine.load %alloc_93[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = math.sqrt %117 : f32
          affine.store %118, %alloc_94[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_95 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_86[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_94[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %119 = arith.divf %117, %118 : f32
          affine.store %119, %alloc_95[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_96 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_95[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_14[%arg5] : memref<768xf32>
          %119 = arith.mulf %117, %118 : f32
          affine.store %119, %alloc_96[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_97 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_96[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_16[%arg5] : memref<768xf32>
          %119 = arith.addf %117, %118 : f32
          affine.store %119, %alloc_97[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_98 = memref.reinterpret_cast %alloc_97 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_99 = memref.alloc() {alignment = 128 : i64} : memref<64x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 3072 {
        affine.store %cst_1, %alloc_99[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %alloc_100 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_101 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 3072 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %117 = affine.load %alloc_18[%arg4 + %arg5, %arg3 + %arg6] : memref<768x3072xf32>
            affine.store %117, %alloc_101[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %117 = affine.load %reinterpret_cast_98[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %117, %alloc_100[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %117 = affine.apply #map3(%arg5, %arg7)
              %118 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %119 = vector.load %alloc_99[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %119, %alloca[0] : memref<4xvector<16xf32>>
              %120 = arith.addi %arg7, %c1 : index
              %121 = vector.load %alloc_99[%120, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %121, %alloca[1] : memref<4xvector<16xf32>>
              %122 = arith.addi %arg7, %c2 : index
              %123 = vector.load %alloc_99[%122, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %123, %alloca[2] : memref<4xvector<16xf32>>
              %124 = arith.addi %arg7, %c3 : index
              %125 = vector.load %alloc_99[%124, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %125, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %130 = memref.load %alloc_100[%117, %arg8] : memref<32x256xf32>
                %131 = vector.broadcast %130 : f32 to vector<16xf32>
                %132 = vector.load %alloc_101[%arg8, %118] : memref<256x64xf32>, vector<16xf32>
                %133 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %134 = vector.fma %131, %132, %133 : vector<16xf32>
                affine.store %134, %alloca[0] : memref<4xvector<16xf32>>
                %135 = affine.apply #map4(%arg8)
                %136 = memref.load %alloc_100[%117, %135] : memref<32x256xf32>
                %137 = vector.broadcast %136 : f32 to vector<16xf32>
                %138 = vector.load %alloc_101[%135, %118] : memref<256x64xf32>, vector<16xf32>
                %139 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %140 = vector.fma %137, %138, %139 : vector<16xf32>
                affine.store %140, %alloca[0] : memref<4xvector<16xf32>>
                %141 = affine.apply #map5(%arg8)
                %142 = memref.load %alloc_100[%117, %141] : memref<32x256xf32>
                %143 = vector.broadcast %142 : f32 to vector<16xf32>
                %144 = vector.load %alloc_101[%141, %118] : memref<256x64xf32>, vector<16xf32>
                %145 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %146 = vector.fma %143, %144, %145 : vector<16xf32>
                affine.store %146, %alloca[0] : memref<4xvector<16xf32>>
                %147 = affine.apply #map6(%arg8)
                %148 = memref.load %alloc_100[%117, %147] : memref<32x256xf32>
                %149 = vector.broadcast %148 : f32 to vector<16xf32>
                %150 = vector.load %alloc_101[%147, %118] : memref<256x64xf32>, vector<16xf32>
                %151 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %152 = vector.fma %149, %150, %151 : vector<16xf32>
                affine.store %152, %alloca[0] : memref<4xvector<16xf32>>
                %153 = arith.addi %117, %c1 : index
                %154 = memref.load %alloc_100[%153, %arg8] : memref<32x256xf32>
                %155 = vector.broadcast %154 : f32 to vector<16xf32>
                %156 = vector.load %alloc_101[%arg8, %118] : memref<256x64xf32>, vector<16xf32>
                %157 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %158 = vector.fma %155, %156, %157 : vector<16xf32>
                affine.store %158, %alloca[1] : memref<4xvector<16xf32>>
                %159 = memref.load %alloc_100[%153, %135] : memref<32x256xf32>
                %160 = vector.broadcast %159 : f32 to vector<16xf32>
                %161 = vector.load %alloc_101[%135, %118] : memref<256x64xf32>, vector<16xf32>
                %162 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %163 = vector.fma %160, %161, %162 : vector<16xf32>
                affine.store %163, %alloca[1] : memref<4xvector<16xf32>>
                %164 = memref.load %alloc_100[%153, %141] : memref<32x256xf32>
                %165 = vector.broadcast %164 : f32 to vector<16xf32>
                %166 = vector.load %alloc_101[%141, %118] : memref<256x64xf32>, vector<16xf32>
                %167 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %168 = vector.fma %165, %166, %167 : vector<16xf32>
                affine.store %168, %alloca[1] : memref<4xvector<16xf32>>
                %169 = memref.load %alloc_100[%153, %147] : memref<32x256xf32>
                %170 = vector.broadcast %169 : f32 to vector<16xf32>
                %171 = vector.load %alloc_101[%147, %118] : memref<256x64xf32>, vector<16xf32>
                %172 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %173 = vector.fma %170, %171, %172 : vector<16xf32>
                affine.store %173, %alloca[1] : memref<4xvector<16xf32>>
                %174 = arith.addi %117, %c2 : index
                %175 = memref.load %alloc_100[%174, %arg8] : memref<32x256xf32>
                %176 = vector.broadcast %175 : f32 to vector<16xf32>
                %177 = vector.load %alloc_101[%arg8, %118] : memref<256x64xf32>, vector<16xf32>
                %178 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %179 = vector.fma %176, %177, %178 : vector<16xf32>
                affine.store %179, %alloca[2] : memref<4xvector<16xf32>>
                %180 = memref.load %alloc_100[%174, %135] : memref<32x256xf32>
                %181 = vector.broadcast %180 : f32 to vector<16xf32>
                %182 = vector.load %alloc_101[%135, %118] : memref<256x64xf32>, vector<16xf32>
                %183 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %184 = vector.fma %181, %182, %183 : vector<16xf32>
                affine.store %184, %alloca[2] : memref<4xvector<16xf32>>
                %185 = memref.load %alloc_100[%174, %141] : memref<32x256xf32>
                %186 = vector.broadcast %185 : f32 to vector<16xf32>
                %187 = vector.load %alloc_101[%141, %118] : memref<256x64xf32>, vector<16xf32>
                %188 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %189 = vector.fma %186, %187, %188 : vector<16xf32>
                affine.store %189, %alloca[2] : memref<4xvector<16xf32>>
                %190 = memref.load %alloc_100[%174, %147] : memref<32x256xf32>
                %191 = vector.broadcast %190 : f32 to vector<16xf32>
                %192 = vector.load %alloc_101[%147, %118] : memref<256x64xf32>, vector<16xf32>
                %193 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %194 = vector.fma %191, %192, %193 : vector<16xf32>
                affine.store %194, %alloca[2] : memref<4xvector<16xf32>>
                %195 = arith.addi %117, %c3 : index
                %196 = memref.load %alloc_100[%195, %arg8] : memref<32x256xf32>
                %197 = vector.broadcast %196 : f32 to vector<16xf32>
                %198 = vector.load %alloc_101[%arg8, %118] : memref<256x64xf32>, vector<16xf32>
                %199 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %200 = vector.fma %197, %198, %199 : vector<16xf32>
                affine.store %200, %alloca[3] : memref<4xvector<16xf32>>
                %201 = memref.load %alloc_100[%195, %135] : memref<32x256xf32>
                %202 = vector.broadcast %201 : f32 to vector<16xf32>
                %203 = vector.load %alloc_101[%135, %118] : memref<256x64xf32>, vector<16xf32>
                %204 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %205 = vector.fma %202, %203, %204 : vector<16xf32>
                affine.store %205, %alloca[3] : memref<4xvector<16xf32>>
                %206 = memref.load %alloc_100[%195, %141] : memref<32x256xf32>
                %207 = vector.broadcast %206 : f32 to vector<16xf32>
                %208 = vector.load %alloc_101[%141, %118] : memref<256x64xf32>, vector<16xf32>
                %209 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %210 = vector.fma %207, %208, %209 : vector<16xf32>
                affine.store %210, %alloca[3] : memref<4xvector<16xf32>>
                %211 = memref.load %alloc_100[%195, %147] : memref<32x256xf32>
                %212 = vector.broadcast %211 : f32 to vector<16xf32>
                %213 = vector.load %alloc_101[%147, %118] : memref<256x64xf32>, vector<16xf32>
                %214 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %215 = vector.fma %212, %213, %214 : vector<16xf32>
                affine.store %215, %alloca[3] : memref<4xvector<16xf32>>
              }
              %126 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %126, %alloc_99[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %127 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %127, %alloc_99[%120, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %128 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %128, %alloc_99[%122, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %129 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %129, %alloc_99[%124, %arg6] : memref<64x3072xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 3072 {
        %117 = affine.load %alloc_99[%arg3, %arg4] : memref<64x3072xf32>
        %118 = affine.load %alloc_20[%arg4] : memref<3072xf32>
        %119 = arith.addf %117, %118 : f32
        affine.store %119, %alloc_99[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %reinterpret_cast_102 = memref.reinterpret_cast %alloc_99 to offset: [0], sizes: [64, 1, 3072], strides: [3072, 3072, 1] : memref<64x3072xf32> to memref<64x1x3072xf32>
    %alloc_103 = memref.alloc() : memref<f32>
    %cast_104 = memref.cast %alloc_103 : memref<f32> to memref<*xf32>
    %93 = llvm.mlir.addressof @constant_37 : !llvm.ptr<array<12 x i8>>
    %94 = llvm.getelementptr %93[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%94, %cast_104) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_105 = memref.alloc() : memref<f32>
    %cast_106 = memref.cast %alloc_105 : memref<f32> to memref<*xf32>
    %95 = llvm.mlir.addressof @constant_38 : !llvm.ptr<array<12 x i8>>
    %96 = llvm.getelementptr %95[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%96, %cast_106) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_107 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %117 = affine.load %reinterpret_cast_102[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %118 = affine.load %alloc_105[] : memref<f32>
          %119 = math.powf %117, %118 : f32
          affine.store %119, %alloc_107[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_108 = memref.alloc() : memref<f32>
    %cast_109 = memref.cast %alloc_108 : memref<f32> to memref<*xf32>
    %97 = llvm.mlir.addressof @constant_39 : !llvm.ptr<array<12 x i8>>
    %98 = llvm.getelementptr %97[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%98, %cast_109) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_110 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %117 = affine.load %alloc_107[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %118 = affine.load %alloc_108[] : memref<f32>
          %119 = arith.mulf %117, %118 : f32
          affine.store %119, %alloc_110[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_111 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %117 = affine.load %reinterpret_cast_102[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %118 = affine.load %alloc_110[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %119 = arith.addf %117, %118 : f32
          affine.store %119, %alloc_111[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_112 = memref.alloc() : memref<f32>
    %cast_113 = memref.cast %alloc_112 : memref<f32> to memref<*xf32>
    %99 = llvm.mlir.addressof @constant_40 : !llvm.ptr<array<12 x i8>>
    %100 = llvm.getelementptr %99[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%100, %cast_113) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_114 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %117 = affine.load %alloc_111[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %118 = affine.load %alloc_112[] : memref<f32>
          %119 = arith.mulf %117, %118 : f32
          affine.store %119, %alloc_114[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_115 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %117 = affine.load %alloc_114[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %118 = math.tanh %117 : f32
          affine.store %118, %alloc_115[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_116 = memref.alloc() : memref<f32>
    %cast_117 = memref.cast %alloc_116 : memref<f32> to memref<*xf32>
    %101 = llvm.mlir.addressof @constant_41 : !llvm.ptr<array<12 x i8>>
    %102 = llvm.getelementptr %101[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%102, %cast_117) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_118 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %117 = affine.load %alloc_115[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %118 = affine.load %alloc_116[] : memref<f32>
          %119 = arith.addf %117, %118 : f32
          affine.store %119, %alloc_118[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_119 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %117 = affine.load %reinterpret_cast_102[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %118 = affine.load %alloc_118[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %119 = arith.mulf %117, %118 : f32
          affine.store %119, %alloc_119[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_120 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %117 = affine.load %alloc_119[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %118 = affine.load %alloc_103[] : memref<f32>
          %119 = arith.mulf %117, %118 : f32
          affine.store %119, %alloc_120[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %reinterpret_cast_121 = memref.reinterpret_cast %alloc_120 to offset: [0], sizes: [64, 3072], strides: [3072, 1] : memref<64x1x3072xf32> to memref<64x3072xf32>
    %alloc_122 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        affine.store %cst_1, %alloc_122[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_123 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_124 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 768 step 64 {
      affine.for %arg4 = 0 to 3072 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %117 = affine.load %alloc_22[%arg4 + %arg5, %arg3 + %arg6] : memref<3072x768xf32>
            affine.store %117, %alloc_124[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %117 = affine.load %reinterpret_cast_121[%arg5 + %arg6, %arg4 + %arg7] : memref<64x3072xf32>
              affine.store %117, %alloc_123[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %117 = affine.apply #map3(%arg5, %arg7)
              %118 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %119 = vector.load %alloc_122[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %119, %alloca[0] : memref<4xvector<16xf32>>
              %120 = arith.addi %arg7, %c1 : index
              %121 = vector.load %alloc_122[%120, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %121, %alloca[1] : memref<4xvector<16xf32>>
              %122 = arith.addi %arg7, %c2 : index
              %123 = vector.load %alloc_122[%122, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %123, %alloca[2] : memref<4xvector<16xf32>>
              %124 = arith.addi %arg7, %c3 : index
              %125 = vector.load %alloc_122[%124, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %125, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %130 = memref.load %alloc_123[%117, %arg8] : memref<32x256xf32>
                %131 = vector.broadcast %130 : f32 to vector<16xf32>
                %132 = vector.load %alloc_124[%arg8, %118] : memref<256x64xf32>, vector<16xf32>
                %133 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %134 = vector.fma %131, %132, %133 : vector<16xf32>
                affine.store %134, %alloca[0] : memref<4xvector<16xf32>>
                %135 = affine.apply #map4(%arg8)
                %136 = memref.load %alloc_123[%117, %135] : memref<32x256xf32>
                %137 = vector.broadcast %136 : f32 to vector<16xf32>
                %138 = vector.load %alloc_124[%135, %118] : memref<256x64xf32>, vector<16xf32>
                %139 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %140 = vector.fma %137, %138, %139 : vector<16xf32>
                affine.store %140, %alloca[0] : memref<4xvector<16xf32>>
                %141 = affine.apply #map5(%arg8)
                %142 = memref.load %alloc_123[%117, %141] : memref<32x256xf32>
                %143 = vector.broadcast %142 : f32 to vector<16xf32>
                %144 = vector.load %alloc_124[%141, %118] : memref<256x64xf32>, vector<16xf32>
                %145 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %146 = vector.fma %143, %144, %145 : vector<16xf32>
                affine.store %146, %alloca[0] : memref<4xvector<16xf32>>
                %147 = affine.apply #map6(%arg8)
                %148 = memref.load %alloc_123[%117, %147] : memref<32x256xf32>
                %149 = vector.broadcast %148 : f32 to vector<16xf32>
                %150 = vector.load %alloc_124[%147, %118] : memref<256x64xf32>, vector<16xf32>
                %151 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %152 = vector.fma %149, %150, %151 : vector<16xf32>
                affine.store %152, %alloca[0] : memref<4xvector<16xf32>>
                %153 = arith.addi %117, %c1 : index
                %154 = memref.load %alloc_123[%153, %arg8] : memref<32x256xf32>
                %155 = vector.broadcast %154 : f32 to vector<16xf32>
                %156 = vector.load %alloc_124[%arg8, %118] : memref<256x64xf32>, vector<16xf32>
                %157 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %158 = vector.fma %155, %156, %157 : vector<16xf32>
                affine.store %158, %alloca[1] : memref<4xvector<16xf32>>
                %159 = memref.load %alloc_123[%153, %135] : memref<32x256xf32>
                %160 = vector.broadcast %159 : f32 to vector<16xf32>
                %161 = vector.load %alloc_124[%135, %118] : memref<256x64xf32>, vector<16xf32>
                %162 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %163 = vector.fma %160, %161, %162 : vector<16xf32>
                affine.store %163, %alloca[1] : memref<4xvector<16xf32>>
                %164 = memref.load %alloc_123[%153, %141] : memref<32x256xf32>
                %165 = vector.broadcast %164 : f32 to vector<16xf32>
                %166 = vector.load %alloc_124[%141, %118] : memref<256x64xf32>, vector<16xf32>
                %167 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %168 = vector.fma %165, %166, %167 : vector<16xf32>
                affine.store %168, %alloca[1] : memref<4xvector<16xf32>>
                %169 = memref.load %alloc_123[%153, %147] : memref<32x256xf32>
                %170 = vector.broadcast %169 : f32 to vector<16xf32>
                %171 = vector.load %alloc_124[%147, %118] : memref<256x64xf32>, vector<16xf32>
                %172 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %173 = vector.fma %170, %171, %172 : vector<16xf32>
                affine.store %173, %alloca[1] : memref<4xvector<16xf32>>
                %174 = arith.addi %117, %c2 : index
                %175 = memref.load %alloc_123[%174, %arg8] : memref<32x256xf32>
                %176 = vector.broadcast %175 : f32 to vector<16xf32>
                %177 = vector.load %alloc_124[%arg8, %118] : memref<256x64xf32>, vector<16xf32>
                %178 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %179 = vector.fma %176, %177, %178 : vector<16xf32>
                affine.store %179, %alloca[2] : memref<4xvector<16xf32>>
                %180 = memref.load %alloc_123[%174, %135] : memref<32x256xf32>
                %181 = vector.broadcast %180 : f32 to vector<16xf32>
                %182 = vector.load %alloc_124[%135, %118] : memref<256x64xf32>, vector<16xf32>
                %183 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %184 = vector.fma %181, %182, %183 : vector<16xf32>
                affine.store %184, %alloca[2] : memref<4xvector<16xf32>>
                %185 = memref.load %alloc_123[%174, %141] : memref<32x256xf32>
                %186 = vector.broadcast %185 : f32 to vector<16xf32>
                %187 = vector.load %alloc_124[%141, %118] : memref<256x64xf32>, vector<16xf32>
                %188 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %189 = vector.fma %186, %187, %188 : vector<16xf32>
                affine.store %189, %alloca[2] : memref<4xvector<16xf32>>
                %190 = memref.load %alloc_123[%174, %147] : memref<32x256xf32>
                %191 = vector.broadcast %190 : f32 to vector<16xf32>
                %192 = vector.load %alloc_124[%147, %118] : memref<256x64xf32>, vector<16xf32>
                %193 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %194 = vector.fma %191, %192, %193 : vector<16xf32>
                affine.store %194, %alloca[2] : memref<4xvector<16xf32>>
                %195 = arith.addi %117, %c3 : index
                %196 = memref.load %alloc_123[%195, %arg8] : memref<32x256xf32>
                %197 = vector.broadcast %196 : f32 to vector<16xf32>
                %198 = vector.load %alloc_124[%arg8, %118] : memref<256x64xf32>, vector<16xf32>
                %199 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %200 = vector.fma %197, %198, %199 : vector<16xf32>
                affine.store %200, %alloca[3] : memref<4xvector<16xf32>>
                %201 = memref.load %alloc_123[%195, %135] : memref<32x256xf32>
                %202 = vector.broadcast %201 : f32 to vector<16xf32>
                %203 = vector.load %alloc_124[%135, %118] : memref<256x64xf32>, vector<16xf32>
                %204 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %205 = vector.fma %202, %203, %204 : vector<16xf32>
                affine.store %205, %alloca[3] : memref<4xvector<16xf32>>
                %206 = memref.load %alloc_123[%195, %141] : memref<32x256xf32>
                %207 = vector.broadcast %206 : f32 to vector<16xf32>
                %208 = vector.load %alloc_124[%141, %118] : memref<256x64xf32>, vector<16xf32>
                %209 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %210 = vector.fma %207, %208, %209 : vector<16xf32>
                affine.store %210, %alloca[3] : memref<4xvector<16xf32>>
                %211 = memref.load %alloc_123[%195, %147] : memref<32x256xf32>
                %212 = vector.broadcast %211 : f32 to vector<16xf32>
                %213 = vector.load %alloc_124[%147, %118] : memref<256x64xf32>, vector<16xf32>
                %214 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %215 = vector.fma %212, %213, %214 : vector<16xf32>
                affine.store %215, %alloca[3] : memref<4xvector<16xf32>>
              }
              %126 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %126, %alloc_122[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %127 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %127, %alloc_122[%120, %arg6] : memref<64x768xf32>, vector<16xf32>
              %128 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %128, %alloc_122[%122, %arg6] : memref<64x768xf32>, vector<16xf32>
              %129 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %129, %alloc_122[%124, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %117 = affine.load %alloc_122[%arg3, %arg4] : memref<64x768xf32>
        %118 = affine.load %alloc_24[%arg4] : memref<768xf32>
        %119 = arith.addf %117, %118 : f32
        affine.store %119, %alloc_122[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_125 = memref.reinterpret_cast %alloc_122 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_126 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_83[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %reinterpret_cast_125[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = arith.addf %117, %118 : f32
          affine.store %119, %alloc_126[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_127 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_126[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_35[0, %arg4, %arg5] : memref<1x1x768xf32>
          %119 = arith.addf %117, %118 : f32
          affine.store %119, %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_128 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_128[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_128[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %119 = arith.addf %118, %117 : f32
          affine.store %119, %alloc_128[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %117 = affine.load %alloc_128[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = arith.divf %117, %cst : f32
          affine.store %118, %alloc_128[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_129 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_128[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %119 = arith.subf %117, %118 : f32
          affine.store %119, %alloc_129[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_130 = memref.alloc() : memref<f32>
    %cast_131 = memref.cast %alloc_130 : memref<f32> to memref<*xf32>
    %103 = llvm.mlir.addressof @constant_44 : !llvm.ptr<array<12 x i8>>
    %104 = llvm.getelementptr %103[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%104, %cast_131) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_132 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_129[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_130[] : memref<f32>
          %119 = math.powf %117, %118 : f32
          affine.store %119, %alloc_132[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_133 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_133[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_132[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_133[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %119 = arith.addf %118, %117 : f32
          affine.store %119, %alloc_133[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %117 = affine.load %alloc_133[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = arith.divf %117, %cst : f32
          affine.store %118, %alloc_133[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_134 = memref.alloc() : memref<f32>
    %cast_135 = memref.cast %alloc_134 : memref<f32> to memref<*xf32>
    %105 = llvm.mlir.addressof @constant_45 : !llvm.ptr<array<12 x i8>>
    %106 = llvm.getelementptr %105[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%106, %cast_135) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_136 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %117 = affine.load %alloc_133[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = affine.load %alloc_134[] : memref<f32>
          %119 = arith.addf %117, %118 : f32
          affine.store %119, %alloc_136[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_137 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %117 = affine.load %alloc_136[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = math.sqrt %117 : f32
          affine.store %118, %alloc_137[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_138 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_129[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_137[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %119 = arith.divf %117, %118 : f32
          affine.store %119, %alloc_138[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_139 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_138[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_26[%arg5] : memref<768xf32>
          %119 = arith.mulf %117, %118 : f32
          affine.store %119, %alloc_139[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_140 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %117 = affine.load %alloc_139[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = affine.load %alloc_28[%arg5] : memref<768xf32>
          %119 = arith.addf %117, %118 : f32
          affine.store %119, %alloc_140[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %107 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref3", 0 : i32]], alignment = 16 : i64} : <1, memref<64x1x50264xf32>>
    %108 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %108 : !llvm.ptr<i64>
    %109 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %109 : !llvm.ptr<i64>
    %110 = rmem.slot %c0 {mem = "t3"} : (index) -> memref<1x50264xf32>
    %111:3 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %110) -> (index, index, memref<1x50264xf32>) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = rmem.slot %arg4 {mem = "t3"} : (index) -> memref<1x50264xf32>
      affine.for %arg7 = 0 to 1 {
        affine.for %arg8 = 0 to 1 {
          affine.for %arg9 = 0 to 50264 {
            affine.store %cst_1, %arg6[%arg7, %arg8 * 50264 + %arg9] : memref<1x50264xf32>
          }
        }
      }
      %120 = rmem.wrid : index
      %121 = rmem.rdma %arg5, %107[%arg3] %c50264 0 %120 {map = #map27, mem = "t3"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %109 -> %120 : <i64>, index
      affine.yield %117, %118, %119 : index, index, memref<1x50264xf32>
    }
    %112 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %112 : !llvm.ptr<i64>
    %113 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %113 : !llvm.ptr<i64>
    %114 = rmem.wrid : index
    %115 = rmem.rdma %c0, %107[%c0] %c50264 4 %114 {map = #map27, mem = "t3"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %116:4 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %115, %arg7 = %114) -> (index, index, memref<1x50264xf32>, index) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = arith.addi %arg3, %c1 : index
      %120 = rmem.wrid : index
      %121 = rmem.rdma %arg4, %107[%119] %c50264 4 %120 {map = #map27, mem = "t3"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %112 -> %arg7 : <i64>, index
      affine.for %arg8 = 0 to 1 {
        %124 = affine.apply #map10(%arg3, %arg8)
        affine.for %arg9 = 0 to 1 {
          affine.for %arg10 = 0 to 50264 step 8 {
            affine.for %arg11 = 0 to 768 step 8 {
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
              affine.for %arg12 = 0 to 1 {
                %125 = arith.addi %arg12, %arg9 : index
                %126 = affine.apply #map28(%arg9, %arg10, %arg12)
                %127 = vector.load %arg6[%arg8, %126] : memref<1x50264xf32>, vector<8xf32>
                affine.store %127, %alloca[0] : memref<1xvector<8xf32>>
                %128 = memref.load %alloc_140[%124, %125, %arg11] : memref<64x1x768xf32>
                %129 = vector.broadcast %128 : f32 to vector<8xf32>
                %130 = vector.load %alloc_32[%arg11, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %131 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %132 = vector.fma %129, %130, %131 : vector<8xf32>
                affine.store %132, %alloca[0] : memref<1xvector<8xf32>>
                %133 = arith.addi %arg11, %c1 : index
                %134 = memref.load %alloc_140[%124, %125, %133] : memref<64x1x768xf32>
                %135 = vector.broadcast %134 : f32 to vector<8xf32>
                %136 = vector.load %alloc_32[%133, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %137 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %138 = vector.fma %135, %136, %137 : vector<8xf32>
                affine.store %138, %alloca[0] : memref<1xvector<8xf32>>
                %139 = arith.addi %arg11, %c2 : index
                %140 = memref.load %alloc_140[%124, %125, %139] : memref<64x1x768xf32>
                %141 = vector.broadcast %140 : f32 to vector<8xf32>
                %142 = vector.load %alloc_32[%139, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %143 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %144 = vector.fma %141, %142, %143 : vector<8xf32>
                affine.store %144, %alloca[0] : memref<1xvector<8xf32>>
                %145 = arith.addi %arg11, %c3 : index
                %146 = memref.load %alloc_140[%124, %125, %145] : memref<64x1x768xf32>
                %147 = vector.broadcast %146 : f32 to vector<8xf32>
                %148 = vector.load %alloc_32[%145, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %149 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %150 = vector.fma %147, %148, %149 : vector<8xf32>
                affine.store %150, %alloca[0] : memref<1xvector<8xf32>>
                %151 = arith.addi %arg11, %c4 : index
                %152 = memref.load %alloc_140[%124, %125, %151] : memref<64x1x768xf32>
                %153 = vector.broadcast %152 : f32 to vector<8xf32>
                %154 = vector.load %alloc_32[%151, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %155 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %156 = vector.fma %153, %154, %155 : vector<8xf32>
                affine.store %156, %alloca[0] : memref<1xvector<8xf32>>
                %157 = arith.addi %arg11, %c5 : index
                %158 = memref.load %alloc_140[%124, %125, %157] : memref<64x1x768xf32>
                %159 = vector.broadcast %158 : f32 to vector<8xf32>
                %160 = vector.load %alloc_32[%157, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %161 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %162 = vector.fma %159, %160, %161 : vector<8xf32>
                affine.store %162, %alloca[0] : memref<1xvector<8xf32>>
                %163 = arith.addi %arg11, %c6 : index
                %164 = memref.load %alloc_140[%124, %125, %163] : memref<64x1x768xf32>
                %165 = vector.broadcast %164 : f32 to vector<8xf32>
                %166 = vector.load %alloc_32[%163, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %167 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %168 = vector.fma %165, %166, %167 : vector<8xf32>
                affine.store %168, %alloca[0] : memref<1xvector<8xf32>>
                %169 = arith.addi %arg11, %c7 : index
                %170 = memref.load %alloc_140[%124, %125, %169] : memref<64x1x768xf32>
                %171 = vector.broadcast %170 : f32 to vector<8xf32>
                %172 = vector.load %alloc_32[%169, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %173 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %174 = vector.fma %171, %172, %173 : vector<8xf32>
                affine.store %174, %alloca[0] : memref<1xvector<8xf32>>
                %175 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                vector.store %175, %arg6[%arg8, %126] : memref<1x50264xf32>, vector<8xf32>
              }
            }
          }
        }
      }
      %122 = rmem.wrid : index
      %123 = rmem.rdma %arg5, %107[%arg3] %c50264 0 %122 {map = #map27, mem = "t3"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %113 -> %122 : <i64>, index
      affine.yield %117, %118, %121, %120 : index, index, memref<1x50264xf32>, index
    }
    return %107 : !rmem.rmref<1, memref<64x1x50264xf32>>
  }
}


#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 64)>
#map2 = affine_map<(d0) -> (d0 + 32)>
#map3 = affine_map<(d0, d1) -> (-d0 + d1)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map8 = affine_map<(d0) -> (d0 * 195840)>
#map9 = affine_map<(d0) -> (d0 * 196608)>
#map10 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 + 255, d3)>
#map11 = affine_map<(d0) -> (d0 * 196608 + 16320)>
#map12 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map13 = affine_map<(d0) -> (d0 * 50264)>

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
          %74 = affine.load %reinterpret_cast[%arg3, %arg4] : memref<64x1xi64>
          %75 = arith.index_cast %74 : i64 to index
          %76 = arith.addi %75, %c50264 : index
          %77 = arith.cmpi slt, %75, %c0 : index
          %78 = arith.select %77, %76, %75 : index
          %79 = memref.load %alloc[%78, %arg5] : memref<50264x768xf32>
          affine.store %79, %alloc_34[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %74 = affine.load %alloc_34[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_35[0, %arg4, %arg5] : memref<1x1x768xf32>
          %76 = arith.addf %74, %75 : f32
          affine.store %76, %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %74 = affine.load %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_38[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %76 = arith.addf %75, %74 : f32
          affine.store %76, %alloc_38[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %74 = affine.load %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %75 = arith.divf %74, %cst : f32
          affine.store %75, %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_39 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_38[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %76 = arith.subf %74, %75 : f32
          affine.store %76, %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %74 = affine.load %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_40[] : memref<f32>
          %76 = math.powf %74, %75 : f32
          affine.store %76, %alloc_42[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %74 = affine.load %alloc_42[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_43[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %76 = arith.addf %75, %74 : f32
          affine.store %76, %alloc_43[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %74 = affine.load %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %75 = arith.divf %74, %cst : f32
          affine.store %75, %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
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
          %74 = affine.load %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %75 = affine.load %alloc_44[] : memref<f32>
          %76 = arith.addf %74, %75 : f32
          affine.store %76, %alloc_46[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_47 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %74 = affine.load %alloc_46[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %75 = math.sqrt %74 : f32
          affine.store %75, %alloc_47[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_48 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_47[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %76 = arith.divf %74, %75 : f32
          affine.store %76, %alloc_48[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_49 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_48[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_2[%arg5] : memref<768xf32>
          %76 = arith.mulf %74, %75 : f32
          affine.store %76, %alloc_49[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_50 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_49[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_4[%arg5] : memref<768xf32>
          %76 = arith.addf %74, %75 : f32
          affine.store %76, %alloc_50[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
            %74 = affine.load %alloc_6[%arg4 + %arg5, %arg3 + %arg6] : memref<768x2304xf32>
            affine.store %74, %alloc_54[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %74 = affine.load %reinterpret_cast_51[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %74, %alloc_53[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %74 = affine.apply #map3(%arg5, %arg7)
              %75 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %76 = vector.load %alloc_52[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %76, %alloca[0] : memref<4xvector<16xf32>>
              %77 = arith.addi %arg7, %c1 : index
              %78 = vector.load %alloc_52[%77, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %78, %alloca[1] : memref<4xvector<16xf32>>
              %79 = arith.addi %arg7, %c2 : index
              %80 = vector.load %alloc_52[%79, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %80, %alloca[2] : memref<4xvector<16xf32>>
              %81 = arith.addi %arg7, %c3 : index
              %82 = vector.load %alloc_52[%81, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %82, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %87 = memref.load %alloc_53[%74, %arg8] : memref<32x256xf32>
                %88 = vector.broadcast %87 : f32 to vector<16xf32>
                %89 = vector.load %alloc_54[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %90 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %91 = vector.fma %88, %89, %90 : vector<16xf32>
                affine.store %91, %alloca[0] : memref<4xvector<16xf32>>
                %92 = affine.apply #map4(%arg8)
                %93 = memref.load %alloc_53[%74, %92] : memref<32x256xf32>
                %94 = vector.broadcast %93 : f32 to vector<16xf32>
                %95 = vector.load %alloc_54[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %96 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %97 = vector.fma %94, %95, %96 : vector<16xf32>
                affine.store %97, %alloca[0] : memref<4xvector<16xf32>>
                %98 = affine.apply #map5(%arg8)
                %99 = memref.load %alloc_53[%74, %98] : memref<32x256xf32>
                %100 = vector.broadcast %99 : f32 to vector<16xf32>
                %101 = vector.load %alloc_54[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %102 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %103 = vector.fma %100, %101, %102 : vector<16xf32>
                affine.store %103, %alloca[0] : memref<4xvector<16xf32>>
                %104 = affine.apply #map6(%arg8)
                %105 = memref.load %alloc_53[%74, %104] : memref<32x256xf32>
                %106 = vector.broadcast %105 : f32 to vector<16xf32>
                %107 = vector.load %alloc_54[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %108 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %109 = vector.fma %106, %107, %108 : vector<16xf32>
                affine.store %109, %alloca[0] : memref<4xvector<16xf32>>
                %110 = arith.addi %74, %c1 : index
                %111 = memref.load %alloc_53[%110, %arg8] : memref<32x256xf32>
                %112 = vector.broadcast %111 : f32 to vector<16xf32>
                %113 = vector.load %alloc_54[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %114 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %115 = vector.fma %112, %113, %114 : vector<16xf32>
                affine.store %115, %alloca[1] : memref<4xvector<16xf32>>
                %116 = memref.load %alloc_53[%110, %92] : memref<32x256xf32>
                %117 = vector.broadcast %116 : f32 to vector<16xf32>
                %118 = vector.load %alloc_54[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %119 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %120 = vector.fma %117, %118, %119 : vector<16xf32>
                affine.store %120, %alloca[1] : memref<4xvector<16xf32>>
                %121 = memref.load %alloc_53[%110, %98] : memref<32x256xf32>
                %122 = vector.broadcast %121 : f32 to vector<16xf32>
                %123 = vector.load %alloc_54[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %124 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %125 = vector.fma %122, %123, %124 : vector<16xf32>
                affine.store %125, %alloca[1] : memref<4xvector<16xf32>>
                %126 = memref.load %alloc_53[%110, %104] : memref<32x256xf32>
                %127 = vector.broadcast %126 : f32 to vector<16xf32>
                %128 = vector.load %alloc_54[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %129 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %130 = vector.fma %127, %128, %129 : vector<16xf32>
                affine.store %130, %alloca[1] : memref<4xvector<16xf32>>
                %131 = arith.addi %74, %c2 : index
                %132 = memref.load %alloc_53[%131, %arg8] : memref<32x256xf32>
                %133 = vector.broadcast %132 : f32 to vector<16xf32>
                %134 = vector.load %alloc_54[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %135 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %136 = vector.fma %133, %134, %135 : vector<16xf32>
                affine.store %136, %alloca[2] : memref<4xvector<16xf32>>
                %137 = memref.load %alloc_53[%131, %92] : memref<32x256xf32>
                %138 = vector.broadcast %137 : f32 to vector<16xf32>
                %139 = vector.load %alloc_54[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %140 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %141 = vector.fma %138, %139, %140 : vector<16xf32>
                affine.store %141, %alloca[2] : memref<4xvector<16xf32>>
                %142 = memref.load %alloc_53[%131, %98] : memref<32x256xf32>
                %143 = vector.broadcast %142 : f32 to vector<16xf32>
                %144 = vector.load %alloc_54[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %145 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %146 = vector.fma %143, %144, %145 : vector<16xf32>
                affine.store %146, %alloca[2] : memref<4xvector<16xf32>>
                %147 = memref.load %alloc_53[%131, %104] : memref<32x256xf32>
                %148 = vector.broadcast %147 : f32 to vector<16xf32>
                %149 = vector.load %alloc_54[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %150 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %151 = vector.fma %148, %149, %150 : vector<16xf32>
                affine.store %151, %alloca[2] : memref<4xvector<16xf32>>
                %152 = arith.addi %74, %c3 : index
                %153 = memref.load %alloc_53[%152, %arg8] : memref<32x256xf32>
                %154 = vector.broadcast %153 : f32 to vector<16xf32>
                %155 = vector.load %alloc_54[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %156 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %157 = vector.fma %154, %155, %156 : vector<16xf32>
                affine.store %157, %alloca[3] : memref<4xvector<16xf32>>
                %158 = memref.load %alloc_53[%152, %92] : memref<32x256xf32>
                %159 = vector.broadcast %158 : f32 to vector<16xf32>
                %160 = vector.load %alloc_54[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %161 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %162 = vector.fma %159, %160, %161 : vector<16xf32>
                affine.store %162, %alloca[3] : memref<4xvector<16xf32>>
                %163 = memref.load %alloc_53[%152, %98] : memref<32x256xf32>
                %164 = vector.broadcast %163 : f32 to vector<16xf32>
                %165 = vector.load %alloc_54[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %166 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %167 = vector.fma %164, %165, %166 : vector<16xf32>
                affine.store %167, %alloca[3] : memref<4xvector<16xf32>>
                %168 = memref.load %alloc_53[%152, %104] : memref<32x256xf32>
                %169 = vector.broadcast %168 : f32 to vector<16xf32>
                %170 = vector.load %alloc_54[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %171 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %172 = vector.fma %169, %170, %171 : vector<16xf32>
                affine.store %172, %alloca[3] : memref<4xvector<16xf32>>
              }
              %83 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %83, %alloc_52[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %84 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %84, %alloc_52[%77, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %85 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %85, %alloc_52[%79, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %86 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %86, %alloc_52[%81, %arg6] : memref<64x2304xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 2304 {
        %74 = affine.load %alloc_52[%arg3, %arg4] : memref<64x2304xf32>
        %75 = affine.load %alloc_8[%arg4] : memref<2304xf32>
        %76 = arith.addf %74, %75 : f32
        affine.store %76, %alloc_52[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %reinterpret_cast_55 = memref.reinterpret_cast %alloc_52 to offset: [0], sizes: [64, 1, 2304], strides: [2304, 2304, 1] : memref<64x2304xf32> to memref<64x1x2304xf32>
    %alloc_56 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_57 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_58 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %reinterpret_cast_55[%arg3, %arg4, %arg5] : memref<64x1x2304xf32>
          affine.store %74, %alloc_56[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %reinterpret_cast_55[%arg3, %arg4, %arg5 + 768] : memref<64x1x2304xf32>
          affine.store %74, %alloc_57[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %reinterpret_cast_55[%arg3, %arg4, %arg5 + 1536] : memref<64x1x2304xf32>
          affine.store %74, %alloc_58[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_59 = memref.reinterpret_cast %alloc_56 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_60 = memref.reinterpret_cast %alloc_57 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_61 = memref.reinterpret_cast %alloc_58 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %40 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref0", 0 : i32]], alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 255 {
          affine.for %arg6 = 0 to 64 {
            %74 = rmem.affine.load %arg1[%arg3, %arg4, %arg5, %arg6] {map = #map7} : (!rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index, index) -> f32
            rmem.affine.store %74 -> %40[%arg3, %arg4, %arg5, %arg6] {map = #map7} : f32, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index, index
          }
        }
      }
    } {access_mem = [["ref4", #map8, 195840, "t4"], ["ref0", #map9, 196608, "t0"]], batch = 1 : i64, nahead = 1 : i64, pf_target = 1 : i64}
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 64 {
            %74 = affine.load %reinterpret_cast_60[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
            rmem.affine.store %74 -> %40[%arg3, %arg4, %arg5, %arg6] {map = #map10} : f32, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index, index
          }
        }
      }
    } {access_mem = [["ref0", #map11, 196608, "t0"]], batch = 1 : i64, nahead = 1 : i64, pf_target = 1 : i64}
    %41 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref1", 0 : i32]], alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 255 {
          affine.for %arg6 = 0 to 64 {
            %74 = rmem.affine.load %arg2[%arg3, %arg4, %arg5, %arg6] {map = #map7} : (!rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index, index) -> f32
            rmem.affine.store %74 -> %41[%arg3, %arg4, %arg5, %arg6] {map = #map7} : f32, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index, index
          }
        }
      }
    } {access_mem = [["ref5", #map8, 195840, "t5"], ["ref1", #map9, 196608, "t1"]], batch = 1 : i64, nahead = 1 : i64, pf_target = 1 : i64}
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 64 {
            %74 = affine.load %reinterpret_cast_61[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
            rmem.affine.store %74 -> %41[%arg3, %arg4, %arg5, %arg6] {map = #map10} : f32, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index, index
          }
        }
      }
    } {access_mem = [["ref1", #map11, 196608, "t1"]], batch = 1 : i64, nahead = 1 : i64, pf_target = 1 : i64}
    %42 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref2", 0 : i32]], alignment = 16 : i64} : <1, memref<64x12x64x256xf32>>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %74 = rmem.affine.load %40[%arg3, %arg4, %arg5, %arg6] {map = #map7} : (!rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index, index) -> f32
            rmem.affine.store %74 -> %42[%arg3, %arg4, %arg6, %arg5] {map = #map7} : f32, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index, index
          }
        }
      }
    } {access_mem = [["ref2", #map9, 196608, "t2"], ["ref0", #map9, 196608, "t0"]], batch = 1 : i64, nahead = 1 : i64, pf_target = 1 : i64}
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
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 step 8 {
            affine.for %arg7 = 0 to 64 step 8 {
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
              affine.for %arg8 = 0 to 1 {
                %74 = arith.addi %arg8, %arg5 : index
                %75 = vector.load %alloc_62[%arg3, %arg4, %74, %arg6] : memref<64x12x1x256xf32>, vector<8xf32>
                affine.store %75, %alloca[0] : memref<1xvector<8xf32>>
                %76 = memref.load %reinterpret_cast_59[%arg3, %arg4, %74, %arg7] : memref<64x12x1x64xf32>
                %77 = vector.broadcast %76 : f32 to vector<8xf32>
                %78 = rmem.vec.load %42[%arg3, %arg4, %arg7, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                %79 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %80 = vector.fma %77, %78, %79 : vector<8xf32>
                affine.store %80, %alloca[0] : memref<1xvector<8xf32>>
                %81 = arith.addi %arg7, %c1 : index
                %82 = memref.load %reinterpret_cast_59[%arg3, %arg4, %74, %81] : memref<64x12x1x64xf32>
                %83 = vector.broadcast %82 : f32 to vector<8xf32>
                %84 = rmem.vec.load %42[%arg3, %arg4, %81, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                %85 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %86 = vector.fma %83, %84, %85 : vector<8xf32>
                affine.store %86, %alloca[0] : memref<1xvector<8xf32>>
                %87 = arith.addi %arg7, %c2 : index
                %88 = memref.load %reinterpret_cast_59[%arg3, %arg4, %74, %87] : memref<64x12x1x64xf32>
                %89 = vector.broadcast %88 : f32 to vector<8xf32>
                %90 = rmem.vec.load %42[%arg3, %arg4, %87, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                %91 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %92 = vector.fma %89, %90, %91 : vector<8xf32>
                affine.store %92, %alloca[0] : memref<1xvector<8xf32>>
                %93 = arith.addi %arg7, %c3 : index
                %94 = memref.load %reinterpret_cast_59[%arg3, %arg4, %74, %93] : memref<64x12x1x64xf32>
                %95 = vector.broadcast %94 : f32 to vector<8xf32>
                %96 = rmem.vec.load %42[%arg3, %arg4, %93, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                %97 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %98 = vector.fma %95, %96, %97 : vector<8xf32>
                affine.store %98, %alloca[0] : memref<1xvector<8xf32>>
                %99 = arith.addi %arg7, %c4 : index
                %100 = memref.load %reinterpret_cast_59[%arg3, %arg4, %74, %99] : memref<64x12x1x64xf32>
                %101 = vector.broadcast %100 : f32 to vector<8xf32>
                %102 = rmem.vec.load %42[%arg3, %arg4, %99, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                %103 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %104 = vector.fma %101, %102, %103 : vector<8xf32>
                affine.store %104, %alloca[0] : memref<1xvector<8xf32>>
                %105 = arith.addi %arg7, %c5 : index
                %106 = memref.load %reinterpret_cast_59[%arg3, %arg4, %74, %105] : memref<64x12x1x64xf32>
                %107 = vector.broadcast %106 : f32 to vector<8xf32>
                %108 = rmem.vec.load %42[%arg3, %arg4, %105, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                %109 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %110 = vector.fma %107, %108, %109 : vector<8xf32>
                affine.store %110, %alloca[0] : memref<1xvector<8xf32>>
                %111 = arith.addi %arg7, %c6 : index
                %112 = memref.load %reinterpret_cast_59[%arg3, %arg4, %74, %111] : memref<64x12x1x64xf32>
                %113 = vector.broadcast %112 : f32 to vector<8xf32>
                %114 = rmem.vec.load %42[%arg3, %arg4, %111, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                %115 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %116 = vector.fma %113, %114, %115 : vector<8xf32>
                affine.store %116, %alloca[0] : memref<1xvector<8xf32>>
                %117 = arith.addi %arg7, %c7 : index
                %118 = memref.load %reinterpret_cast_59[%arg3, %arg4, %74, %117] : memref<64x12x1x64xf32>
                %119 = vector.broadcast %118 : f32 to vector<8xf32>
                %120 = rmem.vec.load %42[%arg3, %arg4, %117, %arg6] : !rmem.rmref<1, memref<64x12x64x256xf32>>, vector<8xf32>
                %121 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %122 = vector.fma %119, %120, %121 : vector<8xf32>
                affine.store %122, %alloca[0] : memref<1xvector<8xf32>>
                %123 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                vector.store %123, %alloc_62[%arg3, %arg4, %74, %arg6] : memref<64x12x1x256xf32>, vector<8xf32>
              }
            }
          }
        }
      }
    } {access_mem = [["ref2", #map9, 196608, "t2"]], batch = 1 : i64, nahead = 1 : i64, pf_target = 1 : i64}
    %alloc_63 = memref.alloc() : memref<f32>
    %cast_64 = memref.cast %alloc_63 : memref<f32> to memref<*xf32>
    %43 = llvm.mlir.addressof @constant_27 : !llvm.ptr<array<12 x i8>>
    %44 = llvm.getelementptr %43[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%44, %cast_64) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_65 = memref.alloc() : memref<f32>
    %cast_66 = memref.cast %alloc_65 : memref<f32> to memref<*xf32>
    %45 = llvm.mlir.addressof @constant_28 : !llvm.ptr<array<12 x i8>>
    %46 = llvm.getelementptr %45[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%46, %cast_66) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_67 = memref.alloc() : memref<f32>
    %47 = affine.load %alloc_63[] : memref<f32>
    %48 = affine.load %alloc_65[] : memref<f32>
    %49 = math.powf %47, %48 : f32
    affine.store %49, %alloc_67[] : memref<f32>
    %alloc_68 = memref.alloc() : memref<f32>
    affine.store %cst_1, %alloc_68[] : memref<f32>
    %alloc_69 = memref.alloc() : memref<f32>
    %50 = affine.load %alloc_68[] : memref<f32>
    %51 = affine.load %alloc_67[] : memref<f32>
    %52 = arith.addf %50, %51 : f32
    affine.store %52, %alloc_69[] : memref<f32>
    %alloc_70 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %74 = affine.load %alloc_62[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %75 = affine.load %alloc_69[] : memref<f32>
            %76 = arith.divf %74, %75 : f32
            affine.store %76, %alloc_70[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_71 = memref.alloc() : memref<f32>
    %cast_72 = memref.cast %alloc_71 : memref<f32> to memref<*xf32>
    %53 = llvm.mlir.addressof @constant_30 : !llvm.ptr<array<12 x i8>>
    %54 = llvm.getelementptr %53[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%54, %cast_72) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_73 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %74 = affine.load %alloc_30[0, 0, %arg5, %arg6] : memref<1x1x1x256xi1>
            %75 = affine.load %alloc_70[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %76 = affine.load %alloc_71[] : memref<f32>
            %77 = arith.select %74, %75, %76 : f32
            affine.store %77, %alloc_73[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
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
            %76 = affine.load %alloc_76[] : memref<f32>
            %77 = affine.load %alloc_73[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %78 = arith.cmpf ogt, %76, %77 : f32
            %79 = arith.select %78, %76, %77 : f32
            affine.store %79, %alloc_76[] : memref<f32>
          }
          %74 = affine.load %alloc_76[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %76 = affine.load %alloc_75[] : memref<f32>
            %77 = affine.load %alloc_73[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %78 = arith.subf %77, %74 : f32
            %79 = math.exp %78 : f32
            %80 = arith.addf %76, %79 : f32
            affine.store %80, %alloc_75[] : memref<f32>
            affine.store %79, %alloc_74[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
          %75 = affine.load %alloc_75[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %76 = affine.load %alloc_74[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %77 = arith.divf %76, %75 : f32
            affine.store %77, %alloc_74[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
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
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 64 step 8 {
            affine.for %arg7 = 0 to 256 step 8 {
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
              affine.for %arg8 = 0 to 1 {
                %74 = arith.addi %arg8, %arg5 : index
                %75 = vector.load %alloc_77[%arg3, %arg4, %74, %arg6] : memref<64x12x1x64xf32>, vector<8xf32>
                affine.store %75, %alloca[0] : memref<1xvector<8xf32>>
                %76 = memref.load %alloc_74[%arg3, %arg4, %74, %arg7] : memref<64x12x1x256xf32>
                %77 = vector.broadcast %76 : f32 to vector<8xf32>
                %78 = rmem.vec.load %41[%arg3, %arg4, %arg7, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %79 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %80 = vector.fma %77, %78, %79 : vector<8xf32>
                affine.store %80, %alloca[0] : memref<1xvector<8xf32>>
                %81 = arith.addi %arg7, %c1 : index
                %82 = memref.load %alloc_74[%arg3, %arg4, %74, %81] : memref<64x12x1x256xf32>
                %83 = vector.broadcast %82 : f32 to vector<8xf32>
                %84 = rmem.vec.load %41[%arg3, %arg4, %81, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %85 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %86 = vector.fma %83, %84, %85 : vector<8xf32>
                affine.store %86, %alloca[0] : memref<1xvector<8xf32>>
                %87 = arith.addi %arg7, %c2 : index
                %88 = memref.load %alloc_74[%arg3, %arg4, %74, %87] : memref<64x12x1x256xf32>
                %89 = vector.broadcast %88 : f32 to vector<8xf32>
                %90 = rmem.vec.load %41[%arg3, %arg4, %87, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %91 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %92 = vector.fma %89, %90, %91 : vector<8xf32>
                affine.store %92, %alloca[0] : memref<1xvector<8xf32>>
                %93 = arith.addi %arg7, %c3 : index
                %94 = memref.load %alloc_74[%arg3, %arg4, %74, %93] : memref<64x12x1x256xf32>
                %95 = vector.broadcast %94 : f32 to vector<8xf32>
                %96 = rmem.vec.load %41[%arg3, %arg4, %93, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %97 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %98 = vector.fma %95, %96, %97 : vector<8xf32>
                affine.store %98, %alloca[0] : memref<1xvector<8xf32>>
                %99 = arith.addi %arg7, %c4 : index
                %100 = memref.load %alloc_74[%arg3, %arg4, %74, %99] : memref<64x12x1x256xf32>
                %101 = vector.broadcast %100 : f32 to vector<8xf32>
                %102 = rmem.vec.load %41[%arg3, %arg4, %99, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %103 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %104 = vector.fma %101, %102, %103 : vector<8xf32>
                affine.store %104, %alloca[0] : memref<1xvector<8xf32>>
                %105 = arith.addi %arg7, %c5 : index
                %106 = memref.load %alloc_74[%arg3, %arg4, %74, %105] : memref<64x12x1x256xf32>
                %107 = vector.broadcast %106 : f32 to vector<8xf32>
                %108 = rmem.vec.load %41[%arg3, %arg4, %105, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %109 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %110 = vector.fma %107, %108, %109 : vector<8xf32>
                affine.store %110, %alloca[0] : memref<1xvector<8xf32>>
                %111 = arith.addi %arg7, %c6 : index
                %112 = memref.load %alloc_74[%arg3, %arg4, %74, %111] : memref<64x12x1x256xf32>
                %113 = vector.broadcast %112 : f32 to vector<8xf32>
                %114 = rmem.vec.load %41[%arg3, %arg4, %111, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %115 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %116 = vector.fma %113, %114, %115 : vector<8xf32>
                affine.store %116, %alloca[0] : memref<1xvector<8xf32>>
                %117 = arith.addi %arg7, %c7 : index
                %118 = memref.load %alloc_74[%arg3, %arg4, %74, %117] : memref<64x12x1x256xf32>
                %119 = vector.broadcast %118 : f32 to vector<8xf32>
                %120 = rmem.vec.load %41[%arg3, %arg4, %117, %arg6] : !rmem.rmref<1, memref<64x12x256x64xf32>>, vector<8xf32>
                %121 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %122 = vector.fma %119, %120, %121 : vector<8xf32>
                affine.store %122, %alloca[0] : memref<1xvector<8xf32>>
                %123 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                vector.store %123, %alloc_77[%arg3, %arg4, %74, %arg6] : memref<64x12x1x64xf32>, vector<8xf32>
              }
            }
          }
        }
      }
    } {access_mem = [["ref1", #map9, 196608, "t1"]], batch = 1 : i64, nahead = 1 : i64, pf_target = 1 : i64}
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
            %74 = affine.load %alloc_10[%arg4 + %arg5, %arg3 + %arg6] : memref<768x768xf32>
            affine.store %74, %alloc_81[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %74 = affine.load %reinterpret_cast_78[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %74, %alloc_80[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %74 = affine.apply #map3(%arg5, %arg7)
              %75 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %76 = vector.load %alloc_79[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %76, %alloca[0] : memref<4xvector<16xf32>>
              %77 = arith.addi %arg7, %c1 : index
              %78 = vector.load %alloc_79[%77, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %78, %alloca[1] : memref<4xvector<16xf32>>
              %79 = arith.addi %arg7, %c2 : index
              %80 = vector.load %alloc_79[%79, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %80, %alloca[2] : memref<4xvector<16xf32>>
              %81 = arith.addi %arg7, %c3 : index
              %82 = vector.load %alloc_79[%81, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %82, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %87 = memref.load %alloc_80[%74, %arg8] : memref<32x256xf32>
                %88 = vector.broadcast %87 : f32 to vector<16xf32>
                %89 = vector.load %alloc_81[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %90 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %91 = vector.fma %88, %89, %90 : vector<16xf32>
                affine.store %91, %alloca[0] : memref<4xvector<16xf32>>
                %92 = affine.apply #map4(%arg8)
                %93 = memref.load %alloc_80[%74, %92] : memref<32x256xf32>
                %94 = vector.broadcast %93 : f32 to vector<16xf32>
                %95 = vector.load %alloc_81[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %96 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %97 = vector.fma %94, %95, %96 : vector<16xf32>
                affine.store %97, %alloca[0] : memref<4xvector<16xf32>>
                %98 = affine.apply #map5(%arg8)
                %99 = memref.load %alloc_80[%74, %98] : memref<32x256xf32>
                %100 = vector.broadcast %99 : f32 to vector<16xf32>
                %101 = vector.load %alloc_81[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %102 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %103 = vector.fma %100, %101, %102 : vector<16xf32>
                affine.store %103, %alloca[0] : memref<4xvector<16xf32>>
                %104 = affine.apply #map6(%arg8)
                %105 = memref.load %alloc_80[%74, %104] : memref<32x256xf32>
                %106 = vector.broadcast %105 : f32 to vector<16xf32>
                %107 = vector.load %alloc_81[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %108 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %109 = vector.fma %106, %107, %108 : vector<16xf32>
                affine.store %109, %alloca[0] : memref<4xvector<16xf32>>
                %110 = arith.addi %74, %c1 : index
                %111 = memref.load %alloc_80[%110, %arg8] : memref<32x256xf32>
                %112 = vector.broadcast %111 : f32 to vector<16xf32>
                %113 = vector.load %alloc_81[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %114 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %115 = vector.fma %112, %113, %114 : vector<16xf32>
                affine.store %115, %alloca[1] : memref<4xvector<16xf32>>
                %116 = memref.load %alloc_80[%110, %92] : memref<32x256xf32>
                %117 = vector.broadcast %116 : f32 to vector<16xf32>
                %118 = vector.load %alloc_81[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %119 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %120 = vector.fma %117, %118, %119 : vector<16xf32>
                affine.store %120, %alloca[1] : memref<4xvector<16xf32>>
                %121 = memref.load %alloc_80[%110, %98] : memref<32x256xf32>
                %122 = vector.broadcast %121 : f32 to vector<16xf32>
                %123 = vector.load %alloc_81[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %124 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %125 = vector.fma %122, %123, %124 : vector<16xf32>
                affine.store %125, %alloca[1] : memref<4xvector<16xf32>>
                %126 = memref.load %alloc_80[%110, %104] : memref<32x256xf32>
                %127 = vector.broadcast %126 : f32 to vector<16xf32>
                %128 = vector.load %alloc_81[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %129 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %130 = vector.fma %127, %128, %129 : vector<16xf32>
                affine.store %130, %alloca[1] : memref<4xvector<16xf32>>
                %131 = arith.addi %74, %c2 : index
                %132 = memref.load %alloc_80[%131, %arg8] : memref<32x256xf32>
                %133 = vector.broadcast %132 : f32 to vector<16xf32>
                %134 = vector.load %alloc_81[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %135 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %136 = vector.fma %133, %134, %135 : vector<16xf32>
                affine.store %136, %alloca[2] : memref<4xvector<16xf32>>
                %137 = memref.load %alloc_80[%131, %92] : memref<32x256xf32>
                %138 = vector.broadcast %137 : f32 to vector<16xf32>
                %139 = vector.load %alloc_81[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %140 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %141 = vector.fma %138, %139, %140 : vector<16xf32>
                affine.store %141, %alloca[2] : memref<4xvector<16xf32>>
                %142 = memref.load %alloc_80[%131, %98] : memref<32x256xf32>
                %143 = vector.broadcast %142 : f32 to vector<16xf32>
                %144 = vector.load %alloc_81[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %145 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %146 = vector.fma %143, %144, %145 : vector<16xf32>
                affine.store %146, %alloca[2] : memref<4xvector<16xf32>>
                %147 = memref.load %alloc_80[%131, %104] : memref<32x256xf32>
                %148 = vector.broadcast %147 : f32 to vector<16xf32>
                %149 = vector.load %alloc_81[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %150 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %151 = vector.fma %148, %149, %150 : vector<16xf32>
                affine.store %151, %alloca[2] : memref<4xvector<16xf32>>
                %152 = arith.addi %74, %c3 : index
                %153 = memref.load %alloc_80[%152, %arg8] : memref<32x256xf32>
                %154 = vector.broadcast %153 : f32 to vector<16xf32>
                %155 = vector.load %alloc_81[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %156 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %157 = vector.fma %154, %155, %156 : vector<16xf32>
                affine.store %157, %alloca[3] : memref<4xvector<16xf32>>
                %158 = memref.load %alloc_80[%152, %92] : memref<32x256xf32>
                %159 = vector.broadcast %158 : f32 to vector<16xf32>
                %160 = vector.load %alloc_81[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %161 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %162 = vector.fma %159, %160, %161 : vector<16xf32>
                affine.store %162, %alloca[3] : memref<4xvector<16xf32>>
                %163 = memref.load %alloc_80[%152, %98] : memref<32x256xf32>
                %164 = vector.broadcast %163 : f32 to vector<16xf32>
                %165 = vector.load %alloc_81[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %166 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %167 = vector.fma %164, %165, %166 : vector<16xf32>
                affine.store %167, %alloca[3] : memref<4xvector<16xf32>>
                %168 = memref.load %alloc_80[%152, %104] : memref<32x256xf32>
                %169 = vector.broadcast %168 : f32 to vector<16xf32>
                %170 = vector.load %alloc_81[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %171 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %172 = vector.fma %169, %170, %171 : vector<16xf32>
                affine.store %172, %alloca[3] : memref<4xvector<16xf32>>
              }
              %83 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %83, %alloc_79[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %84 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %84, %alloc_79[%77, %arg6] : memref<64x768xf32>, vector<16xf32>
              %85 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %85, %alloc_79[%79, %arg6] : memref<64x768xf32>, vector<16xf32>
              %86 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %86, %alloc_79[%81, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %74 = affine.load %alloc_79[%arg3, %arg4] : memref<64x768xf32>
        %75 = affine.load %alloc_12[%arg4] : memref<768xf32>
        %76 = arith.addf %74, %75 : f32
        affine.store %76, %alloc_79[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_82 = memref.reinterpret_cast %alloc_79 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_83 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %reinterpret_cast_82[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_34[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %76 = arith.addf %74, %75 : f32
          affine.store %76, %alloc_83[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_84 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_83[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_35[0, %arg4, %arg5] : memref<1x1x768xf32>
          %76 = arith.addf %74, %75 : f32
          affine.store %76, %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %74 = affine.load %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_85[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %76 = arith.addf %75, %74 : f32
          affine.store %76, %alloc_85[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %74 = affine.load %alloc_85[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %75 = arith.divf %74, %cst : f32
          affine.store %75, %alloc_85[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_86 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_85[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %76 = arith.subf %74, %75 : f32
          affine.store %76, %alloc_86[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_87 = memref.alloc() : memref<f32>
    %cast_88 = memref.cast %alloc_87 : memref<f32> to memref<*xf32>
    %55 = llvm.mlir.addressof @constant_33 : !llvm.ptr<array<12 x i8>>
    %56 = llvm.getelementptr %55[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%56, %cast_88) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_89 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_86[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_87[] : memref<f32>
          %76 = math.powf %74, %75 : f32
          affine.store %76, %alloc_89[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %74 = affine.load %alloc_89[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_90[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %76 = arith.addf %75, %74 : f32
          affine.store %76, %alloc_90[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %74 = affine.load %alloc_90[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %75 = arith.divf %74, %cst : f32
          affine.store %75, %alloc_90[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_91 = memref.alloc() : memref<f32>
    %cast_92 = memref.cast %alloc_91 : memref<f32> to memref<*xf32>
    %57 = llvm.mlir.addressof @constant_34 : !llvm.ptr<array<12 x i8>>
    %58 = llvm.getelementptr %57[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%58, %cast_92) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_93 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %74 = affine.load %alloc_90[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %75 = affine.load %alloc_91[] : memref<f32>
          %76 = arith.addf %74, %75 : f32
          affine.store %76, %alloc_93[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_94 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %74 = affine.load %alloc_93[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %75 = math.sqrt %74 : f32
          affine.store %75, %alloc_94[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_95 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_86[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_94[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %76 = arith.divf %74, %75 : f32
          affine.store %76, %alloc_95[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_96 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_95[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_14[%arg5] : memref<768xf32>
          %76 = arith.mulf %74, %75 : f32
          affine.store %76, %alloc_96[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_97 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_96[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_16[%arg5] : memref<768xf32>
          %76 = arith.addf %74, %75 : f32
          affine.store %76, %alloc_97[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
            %74 = affine.load %alloc_18[%arg4 + %arg5, %arg3 + %arg6] : memref<768x3072xf32>
            affine.store %74, %alloc_101[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %74 = affine.load %reinterpret_cast_98[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %74, %alloc_100[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %74 = affine.apply #map3(%arg5, %arg7)
              %75 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %76 = vector.load %alloc_99[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %76, %alloca[0] : memref<4xvector<16xf32>>
              %77 = arith.addi %arg7, %c1 : index
              %78 = vector.load %alloc_99[%77, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %78, %alloca[1] : memref<4xvector<16xf32>>
              %79 = arith.addi %arg7, %c2 : index
              %80 = vector.load %alloc_99[%79, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %80, %alloca[2] : memref<4xvector<16xf32>>
              %81 = arith.addi %arg7, %c3 : index
              %82 = vector.load %alloc_99[%81, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %82, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %87 = memref.load %alloc_100[%74, %arg8] : memref<32x256xf32>
                %88 = vector.broadcast %87 : f32 to vector<16xf32>
                %89 = vector.load %alloc_101[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %90 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %91 = vector.fma %88, %89, %90 : vector<16xf32>
                affine.store %91, %alloca[0] : memref<4xvector<16xf32>>
                %92 = affine.apply #map4(%arg8)
                %93 = memref.load %alloc_100[%74, %92] : memref<32x256xf32>
                %94 = vector.broadcast %93 : f32 to vector<16xf32>
                %95 = vector.load %alloc_101[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %96 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %97 = vector.fma %94, %95, %96 : vector<16xf32>
                affine.store %97, %alloca[0] : memref<4xvector<16xf32>>
                %98 = affine.apply #map5(%arg8)
                %99 = memref.load %alloc_100[%74, %98] : memref<32x256xf32>
                %100 = vector.broadcast %99 : f32 to vector<16xf32>
                %101 = vector.load %alloc_101[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %102 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %103 = vector.fma %100, %101, %102 : vector<16xf32>
                affine.store %103, %alloca[0] : memref<4xvector<16xf32>>
                %104 = affine.apply #map6(%arg8)
                %105 = memref.load %alloc_100[%74, %104] : memref<32x256xf32>
                %106 = vector.broadcast %105 : f32 to vector<16xf32>
                %107 = vector.load %alloc_101[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %108 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %109 = vector.fma %106, %107, %108 : vector<16xf32>
                affine.store %109, %alloca[0] : memref<4xvector<16xf32>>
                %110 = arith.addi %74, %c1 : index
                %111 = memref.load %alloc_100[%110, %arg8] : memref<32x256xf32>
                %112 = vector.broadcast %111 : f32 to vector<16xf32>
                %113 = vector.load %alloc_101[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %114 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %115 = vector.fma %112, %113, %114 : vector<16xf32>
                affine.store %115, %alloca[1] : memref<4xvector<16xf32>>
                %116 = memref.load %alloc_100[%110, %92] : memref<32x256xf32>
                %117 = vector.broadcast %116 : f32 to vector<16xf32>
                %118 = vector.load %alloc_101[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %119 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %120 = vector.fma %117, %118, %119 : vector<16xf32>
                affine.store %120, %alloca[1] : memref<4xvector<16xf32>>
                %121 = memref.load %alloc_100[%110, %98] : memref<32x256xf32>
                %122 = vector.broadcast %121 : f32 to vector<16xf32>
                %123 = vector.load %alloc_101[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %124 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %125 = vector.fma %122, %123, %124 : vector<16xf32>
                affine.store %125, %alloca[1] : memref<4xvector<16xf32>>
                %126 = memref.load %alloc_100[%110, %104] : memref<32x256xf32>
                %127 = vector.broadcast %126 : f32 to vector<16xf32>
                %128 = vector.load %alloc_101[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %129 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %130 = vector.fma %127, %128, %129 : vector<16xf32>
                affine.store %130, %alloca[1] : memref<4xvector<16xf32>>
                %131 = arith.addi %74, %c2 : index
                %132 = memref.load %alloc_100[%131, %arg8] : memref<32x256xf32>
                %133 = vector.broadcast %132 : f32 to vector<16xf32>
                %134 = vector.load %alloc_101[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %135 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %136 = vector.fma %133, %134, %135 : vector<16xf32>
                affine.store %136, %alloca[2] : memref<4xvector<16xf32>>
                %137 = memref.load %alloc_100[%131, %92] : memref<32x256xf32>
                %138 = vector.broadcast %137 : f32 to vector<16xf32>
                %139 = vector.load %alloc_101[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %140 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %141 = vector.fma %138, %139, %140 : vector<16xf32>
                affine.store %141, %alloca[2] : memref<4xvector<16xf32>>
                %142 = memref.load %alloc_100[%131, %98] : memref<32x256xf32>
                %143 = vector.broadcast %142 : f32 to vector<16xf32>
                %144 = vector.load %alloc_101[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %145 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %146 = vector.fma %143, %144, %145 : vector<16xf32>
                affine.store %146, %alloca[2] : memref<4xvector<16xf32>>
                %147 = memref.load %alloc_100[%131, %104] : memref<32x256xf32>
                %148 = vector.broadcast %147 : f32 to vector<16xf32>
                %149 = vector.load %alloc_101[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %150 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %151 = vector.fma %148, %149, %150 : vector<16xf32>
                affine.store %151, %alloca[2] : memref<4xvector<16xf32>>
                %152 = arith.addi %74, %c3 : index
                %153 = memref.load %alloc_100[%152, %arg8] : memref<32x256xf32>
                %154 = vector.broadcast %153 : f32 to vector<16xf32>
                %155 = vector.load %alloc_101[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %156 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %157 = vector.fma %154, %155, %156 : vector<16xf32>
                affine.store %157, %alloca[3] : memref<4xvector<16xf32>>
                %158 = memref.load %alloc_100[%152, %92] : memref<32x256xf32>
                %159 = vector.broadcast %158 : f32 to vector<16xf32>
                %160 = vector.load %alloc_101[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %161 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %162 = vector.fma %159, %160, %161 : vector<16xf32>
                affine.store %162, %alloca[3] : memref<4xvector<16xf32>>
                %163 = memref.load %alloc_100[%152, %98] : memref<32x256xf32>
                %164 = vector.broadcast %163 : f32 to vector<16xf32>
                %165 = vector.load %alloc_101[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %166 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %167 = vector.fma %164, %165, %166 : vector<16xf32>
                affine.store %167, %alloca[3] : memref<4xvector<16xf32>>
                %168 = memref.load %alloc_100[%152, %104] : memref<32x256xf32>
                %169 = vector.broadcast %168 : f32 to vector<16xf32>
                %170 = vector.load %alloc_101[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %171 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %172 = vector.fma %169, %170, %171 : vector<16xf32>
                affine.store %172, %alloca[3] : memref<4xvector<16xf32>>
              }
              %83 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %83, %alloc_99[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %84 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %84, %alloc_99[%77, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %85 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %85, %alloc_99[%79, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %86 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %86, %alloc_99[%81, %arg6] : memref<64x3072xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 3072 {
        %74 = affine.load %alloc_99[%arg3, %arg4] : memref<64x3072xf32>
        %75 = affine.load %alloc_20[%arg4] : memref<3072xf32>
        %76 = arith.addf %74, %75 : f32
        affine.store %76, %alloc_99[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %reinterpret_cast_102 = memref.reinterpret_cast %alloc_99 to offset: [0], sizes: [64, 1, 3072], strides: [3072, 3072, 1] : memref<64x3072xf32> to memref<64x1x3072xf32>
    %alloc_103 = memref.alloc() : memref<f32>
    %cast_104 = memref.cast %alloc_103 : memref<f32> to memref<*xf32>
    %59 = llvm.mlir.addressof @constant_37 : !llvm.ptr<array<12 x i8>>
    %60 = llvm.getelementptr %59[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%60, %cast_104) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_105 = memref.alloc() : memref<f32>
    %cast_106 = memref.cast %alloc_105 : memref<f32> to memref<*xf32>
    %61 = llvm.mlir.addressof @constant_38 : !llvm.ptr<array<12 x i8>>
    %62 = llvm.getelementptr %61[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%62, %cast_106) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_107 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %74 = affine.load %reinterpret_cast_102[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %75 = affine.load %alloc_105[] : memref<f32>
          %76 = math.powf %74, %75 : f32
          affine.store %76, %alloc_107[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_108 = memref.alloc() : memref<f32>
    %cast_109 = memref.cast %alloc_108 : memref<f32> to memref<*xf32>
    %63 = llvm.mlir.addressof @constant_39 : !llvm.ptr<array<12 x i8>>
    %64 = llvm.getelementptr %63[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%64, %cast_109) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_110 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %74 = affine.load %alloc_107[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %75 = affine.load %alloc_108[] : memref<f32>
          %76 = arith.mulf %74, %75 : f32
          affine.store %76, %alloc_110[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_111 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %74 = affine.load %reinterpret_cast_102[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %75 = affine.load %alloc_110[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %76 = arith.addf %74, %75 : f32
          affine.store %76, %alloc_111[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_112 = memref.alloc() : memref<f32>
    %cast_113 = memref.cast %alloc_112 : memref<f32> to memref<*xf32>
    %65 = llvm.mlir.addressof @constant_40 : !llvm.ptr<array<12 x i8>>
    %66 = llvm.getelementptr %65[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%66, %cast_113) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_114 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %74 = affine.load %alloc_111[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %75 = affine.load %alloc_112[] : memref<f32>
          %76 = arith.mulf %74, %75 : f32
          affine.store %76, %alloc_114[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_115 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %74 = affine.load %alloc_114[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %75 = math.tanh %74 : f32
          affine.store %75, %alloc_115[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_116 = memref.alloc() : memref<f32>
    %cast_117 = memref.cast %alloc_116 : memref<f32> to memref<*xf32>
    %67 = llvm.mlir.addressof @constant_41 : !llvm.ptr<array<12 x i8>>
    %68 = llvm.getelementptr %67[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%68, %cast_117) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_118 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %74 = affine.load %alloc_115[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %75 = affine.load %alloc_116[] : memref<f32>
          %76 = arith.addf %74, %75 : f32
          affine.store %76, %alloc_118[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_119 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %74 = affine.load %reinterpret_cast_102[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %75 = affine.load %alloc_118[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %76 = arith.mulf %74, %75 : f32
          affine.store %76, %alloc_119[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_120 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %74 = affine.load %alloc_119[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %75 = affine.load %alloc_103[] : memref<f32>
          %76 = arith.mulf %74, %75 : f32
          affine.store %76, %alloc_120[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
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
            %74 = affine.load %alloc_22[%arg4 + %arg5, %arg3 + %arg6] : memref<3072x768xf32>
            affine.store %74, %alloc_124[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %74 = affine.load %reinterpret_cast_121[%arg5 + %arg6, %arg4 + %arg7] : memref<64x3072xf32>
              affine.store %74, %alloc_123[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %74 = affine.apply #map3(%arg5, %arg7)
              %75 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %76 = vector.load %alloc_122[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %76, %alloca[0] : memref<4xvector<16xf32>>
              %77 = arith.addi %arg7, %c1 : index
              %78 = vector.load %alloc_122[%77, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %78, %alloca[1] : memref<4xvector<16xf32>>
              %79 = arith.addi %arg7, %c2 : index
              %80 = vector.load %alloc_122[%79, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %80, %alloca[2] : memref<4xvector<16xf32>>
              %81 = arith.addi %arg7, %c3 : index
              %82 = vector.load %alloc_122[%81, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %82, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %87 = memref.load %alloc_123[%74, %arg8] : memref<32x256xf32>
                %88 = vector.broadcast %87 : f32 to vector<16xf32>
                %89 = vector.load %alloc_124[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %90 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %91 = vector.fma %88, %89, %90 : vector<16xf32>
                affine.store %91, %alloca[0] : memref<4xvector<16xf32>>
                %92 = affine.apply #map4(%arg8)
                %93 = memref.load %alloc_123[%74, %92] : memref<32x256xf32>
                %94 = vector.broadcast %93 : f32 to vector<16xf32>
                %95 = vector.load %alloc_124[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %96 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %97 = vector.fma %94, %95, %96 : vector<16xf32>
                affine.store %97, %alloca[0] : memref<4xvector<16xf32>>
                %98 = affine.apply #map5(%arg8)
                %99 = memref.load %alloc_123[%74, %98] : memref<32x256xf32>
                %100 = vector.broadcast %99 : f32 to vector<16xf32>
                %101 = vector.load %alloc_124[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %102 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %103 = vector.fma %100, %101, %102 : vector<16xf32>
                affine.store %103, %alloca[0] : memref<4xvector<16xf32>>
                %104 = affine.apply #map6(%arg8)
                %105 = memref.load %alloc_123[%74, %104] : memref<32x256xf32>
                %106 = vector.broadcast %105 : f32 to vector<16xf32>
                %107 = vector.load %alloc_124[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %108 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %109 = vector.fma %106, %107, %108 : vector<16xf32>
                affine.store %109, %alloca[0] : memref<4xvector<16xf32>>
                %110 = arith.addi %74, %c1 : index
                %111 = memref.load %alloc_123[%110, %arg8] : memref<32x256xf32>
                %112 = vector.broadcast %111 : f32 to vector<16xf32>
                %113 = vector.load %alloc_124[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %114 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %115 = vector.fma %112, %113, %114 : vector<16xf32>
                affine.store %115, %alloca[1] : memref<4xvector<16xf32>>
                %116 = memref.load %alloc_123[%110, %92] : memref<32x256xf32>
                %117 = vector.broadcast %116 : f32 to vector<16xf32>
                %118 = vector.load %alloc_124[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %119 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %120 = vector.fma %117, %118, %119 : vector<16xf32>
                affine.store %120, %alloca[1] : memref<4xvector<16xf32>>
                %121 = memref.load %alloc_123[%110, %98] : memref<32x256xf32>
                %122 = vector.broadcast %121 : f32 to vector<16xf32>
                %123 = vector.load %alloc_124[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %124 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %125 = vector.fma %122, %123, %124 : vector<16xf32>
                affine.store %125, %alloca[1] : memref<4xvector<16xf32>>
                %126 = memref.load %alloc_123[%110, %104] : memref<32x256xf32>
                %127 = vector.broadcast %126 : f32 to vector<16xf32>
                %128 = vector.load %alloc_124[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %129 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %130 = vector.fma %127, %128, %129 : vector<16xf32>
                affine.store %130, %alloca[1] : memref<4xvector<16xf32>>
                %131 = arith.addi %74, %c2 : index
                %132 = memref.load %alloc_123[%131, %arg8] : memref<32x256xf32>
                %133 = vector.broadcast %132 : f32 to vector<16xf32>
                %134 = vector.load %alloc_124[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %135 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %136 = vector.fma %133, %134, %135 : vector<16xf32>
                affine.store %136, %alloca[2] : memref<4xvector<16xf32>>
                %137 = memref.load %alloc_123[%131, %92] : memref<32x256xf32>
                %138 = vector.broadcast %137 : f32 to vector<16xf32>
                %139 = vector.load %alloc_124[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %140 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %141 = vector.fma %138, %139, %140 : vector<16xf32>
                affine.store %141, %alloca[2] : memref<4xvector<16xf32>>
                %142 = memref.load %alloc_123[%131, %98] : memref<32x256xf32>
                %143 = vector.broadcast %142 : f32 to vector<16xf32>
                %144 = vector.load %alloc_124[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %145 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %146 = vector.fma %143, %144, %145 : vector<16xf32>
                affine.store %146, %alloca[2] : memref<4xvector<16xf32>>
                %147 = memref.load %alloc_123[%131, %104] : memref<32x256xf32>
                %148 = vector.broadcast %147 : f32 to vector<16xf32>
                %149 = vector.load %alloc_124[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %150 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %151 = vector.fma %148, %149, %150 : vector<16xf32>
                affine.store %151, %alloca[2] : memref<4xvector<16xf32>>
                %152 = arith.addi %74, %c3 : index
                %153 = memref.load %alloc_123[%152, %arg8] : memref<32x256xf32>
                %154 = vector.broadcast %153 : f32 to vector<16xf32>
                %155 = vector.load %alloc_124[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %156 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %157 = vector.fma %154, %155, %156 : vector<16xf32>
                affine.store %157, %alloca[3] : memref<4xvector<16xf32>>
                %158 = memref.load %alloc_123[%152, %92] : memref<32x256xf32>
                %159 = vector.broadcast %158 : f32 to vector<16xf32>
                %160 = vector.load %alloc_124[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %161 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %162 = vector.fma %159, %160, %161 : vector<16xf32>
                affine.store %162, %alloca[3] : memref<4xvector<16xf32>>
                %163 = memref.load %alloc_123[%152, %98] : memref<32x256xf32>
                %164 = vector.broadcast %163 : f32 to vector<16xf32>
                %165 = vector.load %alloc_124[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %166 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %167 = vector.fma %164, %165, %166 : vector<16xf32>
                affine.store %167, %alloca[3] : memref<4xvector<16xf32>>
                %168 = memref.load %alloc_123[%152, %104] : memref<32x256xf32>
                %169 = vector.broadcast %168 : f32 to vector<16xf32>
                %170 = vector.load %alloc_124[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %171 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %172 = vector.fma %169, %170, %171 : vector<16xf32>
                affine.store %172, %alloca[3] : memref<4xvector<16xf32>>
              }
              %83 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %83, %alloc_122[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %84 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %84, %alloc_122[%77, %arg6] : memref<64x768xf32>, vector<16xf32>
              %85 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %85, %alloc_122[%79, %arg6] : memref<64x768xf32>, vector<16xf32>
              %86 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %86, %alloc_122[%81, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %74 = affine.load %alloc_122[%arg3, %arg4] : memref<64x768xf32>
        %75 = affine.load %alloc_24[%arg4] : memref<768xf32>
        %76 = arith.addf %74, %75 : f32
        affine.store %76, %alloc_122[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_125 = memref.reinterpret_cast %alloc_122 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_126 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_83[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %reinterpret_cast_125[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %76 = arith.addf %74, %75 : f32
          affine.store %76, %alloc_126[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_127 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_126[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_35[0, %arg4, %arg5] : memref<1x1x768xf32>
          %76 = arith.addf %74, %75 : f32
          affine.store %76, %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %74 = affine.load %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_128[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %76 = arith.addf %75, %74 : f32
          affine.store %76, %alloc_128[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %74 = affine.load %alloc_128[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %75 = arith.divf %74, %cst : f32
          affine.store %75, %alloc_128[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_129 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_128[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %76 = arith.subf %74, %75 : f32
          affine.store %76, %alloc_129[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_130 = memref.alloc() : memref<f32>
    %cast_131 = memref.cast %alloc_130 : memref<f32> to memref<*xf32>
    %69 = llvm.mlir.addressof @constant_44 : !llvm.ptr<array<12 x i8>>
    %70 = llvm.getelementptr %69[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%70, %cast_131) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_132 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_129[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_130[] : memref<f32>
          %76 = math.powf %74, %75 : f32
          affine.store %76, %alloc_132[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %74 = affine.load %alloc_132[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_133[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %76 = arith.addf %75, %74 : f32
          affine.store %76, %alloc_133[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %74 = affine.load %alloc_133[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %75 = arith.divf %74, %cst : f32
          affine.store %75, %alloc_133[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_134 = memref.alloc() : memref<f32>
    %cast_135 = memref.cast %alloc_134 : memref<f32> to memref<*xf32>
    %71 = llvm.mlir.addressof @constant_45 : !llvm.ptr<array<12 x i8>>
    %72 = llvm.getelementptr %71[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%72, %cast_135) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_136 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %74 = affine.load %alloc_133[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %75 = affine.load %alloc_134[] : memref<f32>
          %76 = arith.addf %74, %75 : f32
          affine.store %76, %alloc_136[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_137 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %74 = affine.load %alloc_136[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %75 = math.sqrt %74 : f32
          affine.store %75, %alloc_137[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_138 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_129[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_137[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %76 = arith.divf %74, %75 : f32
          affine.store %76, %alloc_138[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_139 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_138[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_26[%arg5] : memref<768xf32>
          %76 = arith.mulf %74, %75 : f32
          affine.store %76, %alloc_139[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_140 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %74 = affine.load %alloc_139[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %75 = affine.load %alloc_28[%arg5] : memref<768xf32>
          %76 = arith.addf %74, %75 : f32
          affine.store %76, %alloc_140[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %73 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref3", 0 : i32]], alignment = 16 : i64} : <1, memref<64x1x50264xf32>>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 50264 {
          rmem.affine.store %cst_1 -> %73[%arg3, %arg4, %arg5] {map = #map12} : f32, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index
        }
      }
    } {access_mem = [["ref3", #map13, 50264, "t3"]], batch = 1 : i64, nahead = 1 : i64, pf_target = 1 : i64}
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 50264 step 8 {
          affine.for %arg6 = 0 to 768 step 8 {
            %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
            affine.for %arg7 = 0 to 1 {
              %74 = arith.addi %arg7, %arg4 : index
              %75 = rmem.vec.load %73[%arg3, %74, %arg5] : !rmem.rmref<1, memref<64x1x50264xf32>>, vector<8xf32>
              affine.store %75, %alloca[0] : memref<1xvector<8xf32>>
              %76 = memref.load %alloc_140[%arg3, %74, %arg6] : memref<64x1x768xf32>
              %77 = vector.broadcast %76 : f32 to vector<8xf32>
              %78 = vector.load %alloc_32[%arg6, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %79 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %80 = vector.fma %77, %78, %79 : vector<8xf32>
              affine.store %80, %alloca[0] : memref<1xvector<8xf32>>
              %81 = arith.addi %arg6, %c1 : index
              %82 = memref.load %alloc_140[%arg3, %74, %81] : memref<64x1x768xf32>
              %83 = vector.broadcast %82 : f32 to vector<8xf32>
              %84 = vector.load %alloc_32[%81, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %85 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %86 = vector.fma %83, %84, %85 : vector<8xf32>
              affine.store %86, %alloca[0] : memref<1xvector<8xf32>>
              %87 = arith.addi %arg6, %c2 : index
              %88 = memref.load %alloc_140[%arg3, %74, %87] : memref<64x1x768xf32>
              %89 = vector.broadcast %88 : f32 to vector<8xf32>
              %90 = vector.load %alloc_32[%87, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %91 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %92 = vector.fma %89, %90, %91 : vector<8xf32>
              affine.store %92, %alloca[0] : memref<1xvector<8xf32>>
              %93 = arith.addi %arg6, %c3 : index
              %94 = memref.load %alloc_140[%arg3, %74, %93] : memref<64x1x768xf32>
              %95 = vector.broadcast %94 : f32 to vector<8xf32>
              %96 = vector.load %alloc_32[%93, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %97 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %98 = vector.fma %95, %96, %97 : vector<8xf32>
              affine.store %98, %alloca[0] : memref<1xvector<8xf32>>
              %99 = arith.addi %arg6, %c4 : index
              %100 = memref.load %alloc_140[%arg3, %74, %99] : memref<64x1x768xf32>
              %101 = vector.broadcast %100 : f32 to vector<8xf32>
              %102 = vector.load %alloc_32[%99, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %103 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %104 = vector.fma %101, %102, %103 : vector<8xf32>
              affine.store %104, %alloca[0] : memref<1xvector<8xf32>>
              %105 = arith.addi %arg6, %c5 : index
              %106 = memref.load %alloc_140[%arg3, %74, %105] : memref<64x1x768xf32>
              %107 = vector.broadcast %106 : f32 to vector<8xf32>
              %108 = vector.load %alloc_32[%105, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %109 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %110 = vector.fma %107, %108, %109 : vector<8xf32>
              affine.store %110, %alloca[0] : memref<1xvector<8xf32>>
              %111 = arith.addi %arg6, %c6 : index
              %112 = memref.load %alloc_140[%arg3, %74, %111] : memref<64x1x768xf32>
              %113 = vector.broadcast %112 : f32 to vector<8xf32>
              %114 = vector.load %alloc_32[%111, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %115 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %116 = vector.fma %113, %114, %115 : vector<8xf32>
              affine.store %116, %alloca[0] : memref<1xvector<8xf32>>
              %117 = arith.addi %arg6, %c7 : index
              %118 = memref.load %alloc_140[%arg3, %74, %117] : memref<64x1x768xf32>
              %119 = vector.broadcast %118 : f32 to vector<8xf32>
              %120 = vector.load %alloc_32[%117, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %121 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %122 = vector.fma %119, %120, %121 : vector<8xf32>
              affine.store %122, %alloca[0] : memref<1xvector<8xf32>>
              %123 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              rmem.vec.store %123, %73[%arg3, %74, %arg5] : !rmem.rmref<1, memref<64x1x50264xf32>>, vector<8xf32>
            }
          }
        }
      }
    } {access_mem = [["ref3", #map13, 50264, "t3"]], batch = 1 : i64, nahead = 1 : i64, pf_target = 1 : i64}
    return %73 : !rmem.rmref<1, memref<64x1x50264xf32>>
  }
}


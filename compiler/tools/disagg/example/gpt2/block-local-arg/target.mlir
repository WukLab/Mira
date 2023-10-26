#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 64)>
#map2 = affine_map<(d0) -> (d0 + 32)>
#map3 = affine_map<(d0, d1) -> (-d0 + d1)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
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
  func.func @main_graph(%arg0: memref<64x1xi64>, %arg1: memref<64x12x255x64xf32>, %arg2: memref<64x12x255x64xf32>) -> memref<64x1x50264xf32> attributes {input_names = ["input_ids", "past.0.key", "past.0.value"], llvm.emit_c_interface, output_names = ["logits"], remote_target = 1 : i64} {
    %alloc = memref.alloc() {alignment = 16 : i64} : memref<64x1x50264xf32>
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
          %70 = affine.load %reinterpret_cast[%arg3, %arg4] : memref<64x1xi64>
          %71 = arith.index_cast %70 : i64 to index
          %72 = arith.addi %71, %c50264 : index
          %73 = arith.cmpi slt, %71, %c0 : index
          %74 = arith.select %73, %72, %71 : index
          %75 = memref.load %alloc_2[%74, %arg5] : memref<50264x768xf32>
          affine.store %75, %alloc_35[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %70 = affine.load %alloc_35[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_36[0, %arg4, %arg5] : memref<1x1x768xf32>
          %72 = arith.addf %70, %71 : f32
          affine.store %72, %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_39 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_39[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %72 = arith.addf %71, %70 : f32
          affine.store %72, %alloc_39[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %70 = affine.load %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = arith.divf %70, %cst : f32
          affine.store %71, %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_40 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_39[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %72 = arith.subf %70, %71 : f32
          affine.store %72, %alloc_40[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
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
          %70 = affine.load %alloc_40[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_41[] : memref<f32>
          %72 = math.powf %70, %71 : f32
          affine.store %72, %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_44 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_44[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_44[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %72 = arith.addf %71, %70 : f32
          affine.store %72, %alloc_44[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %70 = affine.load %alloc_44[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = arith.divf %70, %cst : f32
          affine.store %71, %alloc_44[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
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
          %70 = affine.load %alloc_44[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = affine.load %alloc_45[] : memref<f32>
          %72 = arith.addf %70, %71 : f32
          affine.store %72, %alloc_47[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_48 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %70 = affine.load %alloc_47[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = math.sqrt %70 : f32
          affine.store %71, %alloc_48[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_49 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_40[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_48[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %72 = arith.divf %70, %71 : f32
          affine.store %72, %alloc_49[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_50 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_49[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_3[%arg5] : memref<768xf32>
          %72 = arith.mulf %70, %71 : f32
          affine.store %72, %alloc_50[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_51 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_50[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_5[%arg5] : memref<768xf32>
          %72 = arith.addf %70, %71 : f32
          affine.store %72, %alloc_51[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_52 = memref.reinterpret_cast %alloc_51 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_53 = memref.alloc() {alignment = 128 : i64} : memref<64x2304xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 2304 {
        affine.store %cst_1, %alloc_53[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %alloc_54 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_55 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 2304 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %70 = affine.load %alloc_7[%arg4 + %arg5, %arg3 + %arg6] : memref<768x2304xf32>
            affine.store %70, %alloc_55[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %70 = affine.load %reinterpret_cast_52[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %70, %alloc_54[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %70 = affine.apply #map3(%arg5, %arg7)
              %71 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %72 = vector.load %alloc_53[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %72, %alloca[0] : memref<4xvector<16xf32>>
              %73 = arith.addi %arg7, %c1 : index
              %74 = vector.load %alloc_53[%73, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %74, %alloca[1] : memref<4xvector<16xf32>>
              %75 = arith.addi %arg7, %c2 : index
              %76 = vector.load %alloc_53[%75, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %76, %alloca[2] : memref<4xvector<16xf32>>
              %77 = arith.addi %arg7, %c3 : index
              %78 = vector.load %alloc_53[%77, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %78, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %83 = memref.load %alloc_54[%70, %arg8] : memref<32x256xf32>
                %84 = vector.broadcast %83 : f32 to vector<16xf32>
                %85 = vector.load %alloc_55[%arg8, %71] : memref<256x64xf32>, vector<16xf32>
                %86 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %87 = vector.fma %84, %85, %86 : vector<16xf32>
                affine.store %87, %alloca[0] : memref<4xvector<16xf32>>
                %88 = affine.apply #map4(%arg8)
                %89 = memref.load %alloc_54[%70, %88] : memref<32x256xf32>
                %90 = vector.broadcast %89 : f32 to vector<16xf32>
                %91 = vector.load %alloc_55[%88, %71] : memref<256x64xf32>, vector<16xf32>
                %92 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %93 = vector.fma %90, %91, %92 : vector<16xf32>
                affine.store %93, %alloca[0] : memref<4xvector<16xf32>>
                %94 = affine.apply #map5(%arg8)
                %95 = memref.load %alloc_54[%70, %94] : memref<32x256xf32>
                %96 = vector.broadcast %95 : f32 to vector<16xf32>
                %97 = vector.load %alloc_55[%94, %71] : memref<256x64xf32>, vector<16xf32>
                %98 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %99 = vector.fma %96, %97, %98 : vector<16xf32>
                affine.store %99, %alloca[0] : memref<4xvector<16xf32>>
                %100 = affine.apply #map6(%arg8)
                %101 = memref.load %alloc_54[%70, %100] : memref<32x256xf32>
                %102 = vector.broadcast %101 : f32 to vector<16xf32>
                %103 = vector.load %alloc_55[%100, %71] : memref<256x64xf32>, vector<16xf32>
                %104 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %105 = vector.fma %102, %103, %104 : vector<16xf32>
                affine.store %105, %alloca[0] : memref<4xvector<16xf32>>
                %106 = arith.addi %70, %c1 : index
                %107 = memref.load %alloc_54[%106, %arg8] : memref<32x256xf32>
                %108 = vector.broadcast %107 : f32 to vector<16xf32>
                %109 = vector.load %alloc_55[%arg8, %71] : memref<256x64xf32>, vector<16xf32>
                %110 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %111 = vector.fma %108, %109, %110 : vector<16xf32>
                affine.store %111, %alloca[1] : memref<4xvector<16xf32>>
                %112 = memref.load %alloc_54[%106, %88] : memref<32x256xf32>
                %113 = vector.broadcast %112 : f32 to vector<16xf32>
                %114 = vector.load %alloc_55[%88, %71] : memref<256x64xf32>, vector<16xf32>
                %115 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %116 = vector.fma %113, %114, %115 : vector<16xf32>
                affine.store %116, %alloca[1] : memref<4xvector<16xf32>>
                %117 = memref.load %alloc_54[%106, %94] : memref<32x256xf32>
                %118 = vector.broadcast %117 : f32 to vector<16xf32>
                %119 = vector.load %alloc_55[%94, %71] : memref<256x64xf32>, vector<16xf32>
                %120 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %121 = vector.fma %118, %119, %120 : vector<16xf32>
                affine.store %121, %alloca[1] : memref<4xvector<16xf32>>
                %122 = memref.load %alloc_54[%106, %100] : memref<32x256xf32>
                %123 = vector.broadcast %122 : f32 to vector<16xf32>
                %124 = vector.load %alloc_55[%100, %71] : memref<256x64xf32>, vector<16xf32>
                %125 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %126 = vector.fma %123, %124, %125 : vector<16xf32>
                affine.store %126, %alloca[1] : memref<4xvector<16xf32>>
                %127 = arith.addi %70, %c2 : index
                %128 = memref.load %alloc_54[%127, %arg8] : memref<32x256xf32>
                %129 = vector.broadcast %128 : f32 to vector<16xf32>
                %130 = vector.load %alloc_55[%arg8, %71] : memref<256x64xf32>, vector<16xf32>
                %131 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %132 = vector.fma %129, %130, %131 : vector<16xf32>
                affine.store %132, %alloca[2] : memref<4xvector<16xf32>>
                %133 = memref.load %alloc_54[%127, %88] : memref<32x256xf32>
                %134 = vector.broadcast %133 : f32 to vector<16xf32>
                %135 = vector.load %alloc_55[%88, %71] : memref<256x64xf32>, vector<16xf32>
                %136 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %137 = vector.fma %134, %135, %136 : vector<16xf32>
                affine.store %137, %alloca[2] : memref<4xvector<16xf32>>
                %138 = memref.load %alloc_54[%127, %94] : memref<32x256xf32>
                %139 = vector.broadcast %138 : f32 to vector<16xf32>
                %140 = vector.load %alloc_55[%94, %71] : memref<256x64xf32>, vector<16xf32>
                %141 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %142 = vector.fma %139, %140, %141 : vector<16xf32>
                affine.store %142, %alloca[2] : memref<4xvector<16xf32>>
                %143 = memref.load %alloc_54[%127, %100] : memref<32x256xf32>
                %144 = vector.broadcast %143 : f32 to vector<16xf32>
                %145 = vector.load %alloc_55[%100, %71] : memref<256x64xf32>, vector<16xf32>
                %146 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %147 = vector.fma %144, %145, %146 : vector<16xf32>
                affine.store %147, %alloca[2] : memref<4xvector<16xf32>>
                %148 = arith.addi %70, %c3 : index
                %149 = memref.load %alloc_54[%148, %arg8] : memref<32x256xf32>
                %150 = vector.broadcast %149 : f32 to vector<16xf32>
                %151 = vector.load %alloc_55[%arg8, %71] : memref<256x64xf32>, vector<16xf32>
                %152 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %153 = vector.fma %150, %151, %152 : vector<16xf32>
                affine.store %153, %alloca[3] : memref<4xvector<16xf32>>
                %154 = memref.load %alloc_54[%148, %88] : memref<32x256xf32>
                %155 = vector.broadcast %154 : f32 to vector<16xf32>
                %156 = vector.load %alloc_55[%88, %71] : memref<256x64xf32>, vector<16xf32>
                %157 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %158 = vector.fma %155, %156, %157 : vector<16xf32>
                affine.store %158, %alloca[3] : memref<4xvector<16xf32>>
                %159 = memref.load %alloc_54[%148, %94] : memref<32x256xf32>
                %160 = vector.broadcast %159 : f32 to vector<16xf32>
                %161 = vector.load %alloc_55[%94, %71] : memref<256x64xf32>, vector<16xf32>
                %162 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %163 = vector.fma %160, %161, %162 : vector<16xf32>
                affine.store %163, %alloca[3] : memref<4xvector<16xf32>>
                %164 = memref.load %alloc_54[%148, %100] : memref<32x256xf32>
                %165 = vector.broadcast %164 : f32 to vector<16xf32>
                %166 = vector.load %alloc_55[%100, %71] : memref<256x64xf32>, vector<16xf32>
                %167 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %168 = vector.fma %165, %166, %167 : vector<16xf32>
                affine.store %168, %alloca[3] : memref<4xvector<16xf32>>
              }
              %79 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %79, %alloc_53[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %80 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %80, %alloc_53[%73, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %81 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %81, %alloc_53[%75, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %82 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %82, %alloc_53[%77, %arg6] : memref<64x2304xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 2304 {
        %70 = affine.load %alloc_53[%arg3, %arg4] : memref<64x2304xf32>
        %71 = affine.load %alloc_9[%arg4] : memref<2304xf32>
        %72 = arith.addf %70, %71 : f32
        affine.store %72, %alloc_53[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %reinterpret_cast_56 = memref.reinterpret_cast %alloc_53 to offset: [0], sizes: [64, 1, 2304], strides: [2304, 2304, 1] : memref<64x2304xf32> to memref<64x1x2304xf32>
    %alloc_57 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_58 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_59 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %reinterpret_cast_56[%arg3, %arg4, %arg5] : memref<64x1x2304xf32>
          affine.store %70, %alloc_57[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %reinterpret_cast_56[%arg3, %arg4, %arg5 + 768] : memref<64x1x2304xf32>
          affine.store %70, %alloc_58[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %reinterpret_cast_56[%arg3, %arg4, %arg5 + 1536] : memref<64x1x2304xf32>
          affine.store %70, %alloc_59[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_60 = memref.reinterpret_cast %alloc_57 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_61 = memref.reinterpret_cast %alloc_58 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_62 = memref.reinterpret_cast %alloc_59 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %alloc_63 = memref.alloc() {alignment = 16 : i64, remote_target = 1 : i64} : memref<64x12x256x64xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 255 {
          affine.for %arg6 = 0 to 64 {
            %70 = affine.load %arg1[%arg3, %arg4, %arg5, %arg6] : memref<64x12x255x64xf32>
            affine.store %70, %alloc_63[%arg3, %arg4, %arg5, %arg6] {remote_check_use = 1 : i8} : memref<64x12x256x64xf32>
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 64 {
            %70 = affine.load %reinterpret_cast_61[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
            affine.store %70, %alloc_63[%arg3, %arg4, %arg5 + 255, %arg6] {remote_check_use = 1 : i8} : memref<64x12x256x64xf32>
          }
        }
      }
    }
    %alloc_64 = memref.alloc() {alignment = 16 : i64, remote_target = 1 : i64} : memref<64x12x256x64xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 255 {
          affine.for %arg6 = 0 to 64 {
            %70 = affine.load %arg2[%arg3, %arg4, %arg5, %arg6] : memref<64x12x255x64xf32>
            affine.store %70, %alloc_64[%arg3, %arg4, %arg5, %arg6] {remote_check_use = 1 : i8} : memref<64x12x256x64xf32>
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 64 {
            %70 = affine.load %reinterpret_cast_62[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
            affine.store %70, %alloc_64[%arg3, %arg4, %arg5 + 255, %arg6] {remote_check_use = 1 : i8} : memref<64x12x256x64xf32>
          }
        }
      }
    }
    %alloc_65 = memref.alloc() {alignment = 16 : i64, remote_target = 1 : i64} : memref<64x12x64x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %70 = affine.load %alloc_63[%arg3, %arg4, %arg5, %arg6] {remote_check_use = 1 : i8} : memref<64x12x256x64xf32>
            affine.store %70, %alloc_65[%arg3, %arg4, %arg6, %arg5] {remote_check_use = 1 : i8} : memref<64x12x64x256xf32>
          }
        }
      }
    }
    %alloc_66 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            affine.store %cst_1, %alloc_66[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
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
                %70 = arith.addi %arg8, %arg5 : index
                %71 = vector.load %alloc_66[%arg3, %arg4, %70, %arg6] : memref<64x12x1x256xf32>, vector<8xf32>
                affine.store %71, %alloca[0] : memref<1xvector<8xf32>>
                %72 = memref.load %reinterpret_cast_60[%arg3, %arg4, %70, %arg7] : memref<64x12x1x64xf32>
                %73 = vector.broadcast %72 : f32 to vector<8xf32>
                %74 = vector.load %alloc_65[%arg3, %arg4, %arg7, %arg6] {remote_check_use = 1 : i8} : memref<64x12x64x256xf32>, vector<8xf32>
                %75 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %76 = vector.fma %73, %74, %75 {remote_check_use = 1 : i8} : vector<8xf32>
                affine.store %76, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
                %77 = arith.addi %arg7, %c1 : index
                %78 = memref.load %reinterpret_cast_60[%arg3, %arg4, %70, %77] : memref<64x12x1x64xf32>
                %79 = vector.broadcast %78 : f32 to vector<8xf32>
                %80 = vector.load %alloc_65[%arg3, %arg4, %77, %arg6] {remote_check_use = 1 : i8} : memref<64x12x64x256xf32>, vector<8xf32>
                %81 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %82 = vector.fma %79, %80, %81 {remote_check_use = 1 : i8} : vector<8xf32>
                affine.store %82, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
                %83 = arith.addi %arg7, %c2 : index
                %84 = memref.load %reinterpret_cast_60[%arg3, %arg4, %70, %83] : memref<64x12x1x64xf32>
                %85 = vector.broadcast %84 : f32 to vector<8xf32>
                %86 = vector.load %alloc_65[%arg3, %arg4, %83, %arg6] {remote_check_use = 1 : i8} : memref<64x12x64x256xf32>, vector<8xf32>
                %87 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %88 = vector.fma %85, %86, %87 {remote_check_use = 1 : i8} : vector<8xf32>
                affine.store %88, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
                %89 = arith.addi %arg7, %c3 : index
                %90 = memref.load %reinterpret_cast_60[%arg3, %arg4, %70, %89] : memref<64x12x1x64xf32>
                %91 = vector.broadcast %90 : f32 to vector<8xf32>
                %92 = vector.load %alloc_65[%arg3, %arg4, %89, %arg6] {remote_check_use = 1 : i8} : memref<64x12x64x256xf32>, vector<8xf32>
                %93 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %94 = vector.fma %91, %92, %93 {remote_check_use = 1 : i8} : vector<8xf32>
                affine.store %94, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
                %95 = arith.addi %arg7, %c4 : index
                %96 = memref.load %reinterpret_cast_60[%arg3, %arg4, %70, %95] : memref<64x12x1x64xf32>
                %97 = vector.broadcast %96 : f32 to vector<8xf32>
                %98 = vector.load %alloc_65[%arg3, %arg4, %95, %arg6] {remote_check_use = 1 : i8} : memref<64x12x64x256xf32>, vector<8xf32>
                %99 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %100 = vector.fma %97, %98, %99 {remote_check_use = 1 : i8} : vector<8xf32>
                affine.store %100, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
                %101 = arith.addi %arg7, %c5 : index
                %102 = memref.load %reinterpret_cast_60[%arg3, %arg4, %70, %101] : memref<64x12x1x64xf32>
                %103 = vector.broadcast %102 : f32 to vector<8xf32>
                %104 = vector.load %alloc_65[%arg3, %arg4, %101, %arg6] {remote_check_use = 1 : i8} : memref<64x12x64x256xf32>, vector<8xf32>
                %105 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %106 = vector.fma %103, %104, %105 {remote_check_use = 1 : i8} : vector<8xf32>
                affine.store %106, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
                %107 = arith.addi %arg7, %c6 : index
                %108 = memref.load %reinterpret_cast_60[%arg3, %arg4, %70, %107] : memref<64x12x1x64xf32>
                %109 = vector.broadcast %108 : f32 to vector<8xf32>
                %110 = vector.load %alloc_65[%arg3, %arg4, %107, %arg6] {remote_check_use = 1 : i8} : memref<64x12x64x256xf32>, vector<8xf32>
                %111 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %112 = vector.fma %109, %110, %111 {remote_check_use = 1 : i8} : vector<8xf32>
                affine.store %112, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
                %113 = arith.addi %arg7, %c7 : index
                %114 = memref.load %reinterpret_cast_60[%arg3, %arg4, %70, %113] : memref<64x12x1x64xf32>
                %115 = vector.broadcast %114 : f32 to vector<8xf32>
                %116 = vector.load %alloc_65[%arg3, %arg4, %113, %arg6] {remote_check_use = 1 : i8} : memref<64x12x64x256xf32>, vector<8xf32>
                %117 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %118 = vector.fma %115, %116, %117 {remote_check_use = 1 : i8} : vector<8xf32>
                affine.store %118, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
                %119 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                vector.store %119, %alloc_66[%arg3, %arg4, %70, %arg6] : memref<64x12x1x256xf32>, vector<8xf32>
              }
            }
          }
        }
      }
    }
    %alloc_67 = memref.alloc() : memref<f32>
    %cast_68 = memref.cast %alloc_67 : memref<f32> to memref<*xf32>
    %40 = llvm.mlir.addressof @constant_27 : !llvm.ptr<array<12 x i8>>
    %41 = llvm.getelementptr %40[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%41, %cast_68) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_69 = memref.alloc() : memref<f32>
    %cast_70 = memref.cast %alloc_69 : memref<f32> to memref<*xf32>
    %42 = llvm.mlir.addressof @constant_28 : !llvm.ptr<array<12 x i8>>
    %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%43, %cast_70) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_71 = memref.alloc() : memref<f32>
    %44 = affine.load %alloc_67[] : memref<f32>
    %45 = affine.load %alloc_69[] : memref<f32>
    %46 = math.powf %44, %45 : f32
    affine.store %46, %alloc_71[] : memref<f32>
    %alloc_72 = memref.alloc() : memref<f32>
    affine.store %cst_1, %alloc_72[] : memref<f32>
    %alloc_73 = memref.alloc() : memref<f32>
    %47 = affine.load %alloc_72[] : memref<f32>
    %48 = affine.load %alloc_71[] : memref<f32>
    %49 = arith.addf %47, %48 : f32
    affine.store %49, %alloc_73[] : memref<f32>
    %alloc_74 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %70 = affine.load %alloc_66[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %71 = affine.load %alloc_73[] : memref<f32>
            %72 = arith.divf %70, %71 : f32
            affine.store %72, %alloc_74[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_75 = memref.alloc() : memref<f32>
    %cast_76 = memref.cast %alloc_75 : memref<f32> to memref<*xf32>
    %50 = llvm.mlir.addressof @constant_30 : !llvm.ptr<array<12 x i8>>
    %51 = llvm.getelementptr %50[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%51, %cast_76) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_77 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %70 = affine.load %alloc_31[0, 0, %arg5, %arg6] : memref<1x1x1x256xi1>
            %71 = affine.load %alloc_74[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %72 = affine.load %alloc_75[] : memref<f32>
            %73 = arith.select %70, %71, %72 : f32
            affine.store %73, %alloc_77[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_78 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    %alloc_79 = memref.alloc() : memref<f32>
    %alloc_80 = memref.alloc() : memref<f32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_79[] : memref<f32>
          affine.store %cst_0, %alloc_80[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %72 = affine.load %alloc_80[] : memref<f32>
            %73 = affine.load %alloc_77[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %74 = arith.cmpf ogt, %72, %73 : f32
            %75 = arith.select %74, %72, %73 : f32
            affine.store %75, %alloc_80[] : memref<f32>
          }
          %70 = affine.load %alloc_80[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %72 = affine.load %alloc_79[] : memref<f32>
            %73 = affine.load %alloc_77[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %74 = arith.subf %73, %70 : f32
            %75 = math.exp %74 : f32
            %76 = arith.addf %72, %75 : f32
            affine.store %76, %alloc_79[] : memref<f32>
            affine.store %75, %alloc_78[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
          %71 = affine.load %alloc_79[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %72 = affine.load %alloc_78[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %73 = arith.divf %72, %71 : f32
            affine.store %73, %alloc_78[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_81 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x64xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 64 {
            affine.store %cst_1, %alloc_81[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
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
                %70 = arith.addi %arg8, %arg5 : index
                %71 = vector.load %alloc_81[%arg3, %arg4, %70, %arg6] : memref<64x12x1x64xf32>, vector<8xf32>
                affine.store %71, %alloca[0] : memref<1xvector<8xf32>>
                %72 = memref.load %alloc_78[%arg3, %arg4, %70, %arg7] : memref<64x12x1x256xf32>
                %73 = vector.broadcast %72 : f32 to vector<8xf32>
                %74 = vector.load %alloc_64[%arg3, %arg4, %arg7, %arg6] {remote_check_use = 1 : i8} : memref<64x12x256x64xf32>, vector<8xf32>
                %75 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %76 = vector.fma %73, %74, %75 {remote_check_use = 1 : i8} : vector<8xf32>
                affine.store %76, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
                %77 = arith.addi %arg7, %c1 : index
                %78 = memref.load %alloc_78[%arg3, %arg4, %70, %77] : memref<64x12x1x256xf32>
                %79 = vector.broadcast %78 : f32 to vector<8xf32>
                %80 = vector.load %alloc_64[%arg3, %arg4, %77, %arg6] {remote_check_use = 1 : i8} : memref<64x12x256x64xf32>, vector<8xf32>
                %81 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %82 = vector.fma %79, %80, %81 {remote_check_use = 1 : i8} : vector<8xf32>
                affine.store %82, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
                %83 = arith.addi %arg7, %c2 : index
                %84 = memref.load %alloc_78[%arg3, %arg4, %70, %83] : memref<64x12x1x256xf32>
                %85 = vector.broadcast %84 : f32 to vector<8xf32>
                %86 = vector.load %alloc_64[%arg3, %arg4, %83, %arg6] {remote_check_use = 1 : i8} : memref<64x12x256x64xf32>, vector<8xf32>
                %87 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %88 = vector.fma %85, %86, %87 {remote_check_use = 1 : i8} : vector<8xf32>
                affine.store %88, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
                %89 = arith.addi %arg7, %c3 : index
                %90 = memref.load %alloc_78[%arg3, %arg4, %70, %89] : memref<64x12x1x256xf32>
                %91 = vector.broadcast %90 : f32 to vector<8xf32>
                %92 = vector.load %alloc_64[%arg3, %arg4, %89, %arg6] {remote_check_use = 1 : i8} : memref<64x12x256x64xf32>, vector<8xf32>
                %93 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %94 = vector.fma %91, %92, %93 {remote_check_use = 1 : i8} : vector<8xf32>
                affine.store %94, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
                %95 = arith.addi %arg7, %c4 : index
                %96 = memref.load %alloc_78[%arg3, %arg4, %70, %95] : memref<64x12x1x256xf32>
                %97 = vector.broadcast %96 : f32 to vector<8xf32>
                %98 = vector.load %alloc_64[%arg3, %arg4, %95, %arg6] {remote_check_use = 1 : i8} : memref<64x12x256x64xf32>, vector<8xf32>
                %99 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %100 = vector.fma %97, %98, %99 {remote_check_use = 1 : i8} : vector<8xf32>
                affine.store %100, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
                %101 = arith.addi %arg7, %c5 : index
                %102 = memref.load %alloc_78[%arg3, %arg4, %70, %101] : memref<64x12x1x256xf32>
                %103 = vector.broadcast %102 : f32 to vector<8xf32>
                %104 = vector.load %alloc_64[%arg3, %arg4, %101, %arg6] {remote_check_use = 1 : i8} : memref<64x12x256x64xf32>, vector<8xf32>
                %105 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %106 = vector.fma %103, %104, %105 {remote_check_use = 1 : i8} : vector<8xf32>
                affine.store %106, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
                %107 = arith.addi %arg7, %c6 : index
                %108 = memref.load %alloc_78[%arg3, %arg4, %70, %107] : memref<64x12x1x256xf32>
                %109 = vector.broadcast %108 : f32 to vector<8xf32>
                %110 = vector.load %alloc_64[%arg3, %arg4, %107, %arg6] {remote_check_use = 1 : i8} : memref<64x12x256x64xf32>, vector<8xf32>
                %111 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %112 = vector.fma %109, %110, %111 {remote_check_use = 1 : i8} : vector<8xf32>
                affine.store %112, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
                %113 = arith.addi %arg7, %c7 : index
                %114 = memref.load %alloc_78[%arg3, %arg4, %70, %113] : memref<64x12x1x256xf32>
                %115 = vector.broadcast %114 : f32 to vector<8xf32>
                %116 = vector.load %alloc_64[%arg3, %arg4, %113, %arg6] {remote_check_use = 1 : i8} : memref<64x12x256x64xf32>, vector<8xf32>
                %117 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %118 = vector.fma %115, %116, %117 {remote_check_use = 1 : i8} : vector<8xf32>
                affine.store %118, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
                %119 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                vector.store %119, %alloc_81[%arg3, %arg4, %70, %arg6] : memref<64x12x1x64xf32>, vector<8xf32>
              }
            }
          }
        }
      }
    }
    %reinterpret_cast_82 = memref.reinterpret_cast %alloc_81 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x12x1x64xf32> to memref<64x768xf32>
    %alloc_83 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        affine.store %cst_1, %alloc_83[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_84 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_85 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 768 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %70 = affine.load %alloc_11[%arg4 + %arg5, %arg3 + %arg6] : memref<768x768xf32>
            affine.store %70, %alloc_85[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %70 = affine.load %reinterpret_cast_82[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %70, %alloc_84[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %70 = affine.apply #map3(%arg5, %arg7)
              %71 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %72 = vector.load %alloc_83[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %72, %alloca[0] : memref<4xvector<16xf32>>
              %73 = arith.addi %arg7, %c1 : index
              %74 = vector.load %alloc_83[%73, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %74, %alloca[1] : memref<4xvector<16xf32>>
              %75 = arith.addi %arg7, %c2 : index
              %76 = vector.load %alloc_83[%75, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %76, %alloca[2] : memref<4xvector<16xf32>>
              %77 = arith.addi %arg7, %c3 : index
              %78 = vector.load %alloc_83[%77, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %78, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %83 = memref.load %alloc_84[%70, %arg8] : memref<32x256xf32>
                %84 = vector.broadcast %83 : f32 to vector<16xf32>
                %85 = vector.load %alloc_85[%arg8, %71] : memref<256x64xf32>, vector<16xf32>
                %86 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %87 = vector.fma %84, %85, %86 : vector<16xf32>
                affine.store %87, %alloca[0] : memref<4xvector<16xf32>>
                %88 = affine.apply #map4(%arg8)
                %89 = memref.load %alloc_84[%70, %88] : memref<32x256xf32>
                %90 = vector.broadcast %89 : f32 to vector<16xf32>
                %91 = vector.load %alloc_85[%88, %71] : memref<256x64xf32>, vector<16xf32>
                %92 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %93 = vector.fma %90, %91, %92 : vector<16xf32>
                affine.store %93, %alloca[0] : memref<4xvector<16xf32>>
                %94 = affine.apply #map5(%arg8)
                %95 = memref.load %alloc_84[%70, %94] : memref<32x256xf32>
                %96 = vector.broadcast %95 : f32 to vector<16xf32>
                %97 = vector.load %alloc_85[%94, %71] : memref<256x64xf32>, vector<16xf32>
                %98 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %99 = vector.fma %96, %97, %98 : vector<16xf32>
                affine.store %99, %alloca[0] : memref<4xvector<16xf32>>
                %100 = affine.apply #map6(%arg8)
                %101 = memref.load %alloc_84[%70, %100] : memref<32x256xf32>
                %102 = vector.broadcast %101 : f32 to vector<16xf32>
                %103 = vector.load %alloc_85[%100, %71] : memref<256x64xf32>, vector<16xf32>
                %104 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %105 = vector.fma %102, %103, %104 : vector<16xf32>
                affine.store %105, %alloca[0] : memref<4xvector<16xf32>>
                %106 = arith.addi %70, %c1 : index
                %107 = memref.load %alloc_84[%106, %arg8] : memref<32x256xf32>
                %108 = vector.broadcast %107 : f32 to vector<16xf32>
                %109 = vector.load %alloc_85[%arg8, %71] : memref<256x64xf32>, vector<16xf32>
                %110 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %111 = vector.fma %108, %109, %110 : vector<16xf32>
                affine.store %111, %alloca[1] : memref<4xvector<16xf32>>
                %112 = memref.load %alloc_84[%106, %88] : memref<32x256xf32>
                %113 = vector.broadcast %112 : f32 to vector<16xf32>
                %114 = vector.load %alloc_85[%88, %71] : memref<256x64xf32>, vector<16xf32>
                %115 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %116 = vector.fma %113, %114, %115 : vector<16xf32>
                affine.store %116, %alloca[1] : memref<4xvector<16xf32>>
                %117 = memref.load %alloc_84[%106, %94] : memref<32x256xf32>
                %118 = vector.broadcast %117 : f32 to vector<16xf32>
                %119 = vector.load %alloc_85[%94, %71] : memref<256x64xf32>, vector<16xf32>
                %120 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %121 = vector.fma %118, %119, %120 : vector<16xf32>
                affine.store %121, %alloca[1] : memref<4xvector<16xf32>>
                %122 = memref.load %alloc_84[%106, %100] : memref<32x256xf32>
                %123 = vector.broadcast %122 : f32 to vector<16xf32>
                %124 = vector.load %alloc_85[%100, %71] : memref<256x64xf32>, vector<16xf32>
                %125 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %126 = vector.fma %123, %124, %125 : vector<16xf32>
                affine.store %126, %alloca[1] : memref<4xvector<16xf32>>
                %127 = arith.addi %70, %c2 : index
                %128 = memref.load %alloc_84[%127, %arg8] : memref<32x256xf32>
                %129 = vector.broadcast %128 : f32 to vector<16xf32>
                %130 = vector.load %alloc_85[%arg8, %71] : memref<256x64xf32>, vector<16xf32>
                %131 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %132 = vector.fma %129, %130, %131 : vector<16xf32>
                affine.store %132, %alloca[2] : memref<4xvector<16xf32>>
                %133 = memref.load %alloc_84[%127, %88] : memref<32x256xf32>
                %134 = vector.broadcast %133 : f32 to vector<16xf32>
                %135 = vector.load %alloc_85[%88, %71] : memref<256x64xf32>, vector<16xf32>
                %136 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %137 = vector.fma %134, %135, %136 : vector<16xf32>
                affine.store %137, %alloca[2] : memref<4xvector<16xf32>>
                %138 = memref.load %alloc_84[%127, %94] : memref<32x256xf32>
                %139 = vector.broadcast %138 : f32 to vector<16xf32>
                %140 = vector.load %alloc_85[%94, %71] : memref<256x64xf32>, vector<16xf32>
                %141 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %142 = vector.fma %139, %140, %141 : vector<16xf32>
                affine.store %142, %alloca[2] : memref<4xvector<16xf32>>
                %143 = memref.load %alloc_84[%127, %100] : memref<32x256xf32>
                %144 = vector.broadcast %143 : f32 to vector<16xf32>
                %145 = vector.load %alloc_85[%100, %71] : memref<256x64xf32>, vector<16xf32>
                %146 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %147 = vector.fma %144, %145, %146 : vector<16xf32>
                affine.store %147, %alloca[2] : memref<4xvector<16xf32>>
                %148 = arith.addi %70, %c3 : index
                %149 = memref.load %alloc_84[%148, %arg8] : memref<32x256xf32>
                %150 = vector.broadcast %149 : f32 to vector<16xf32>
                %151 = vector.load %alloc_85[%arg8, %71] : memref<256x64xf32>, vector<16xf32>
                %152 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %153 = vector.fma %150, %151, %152 : vector<16xf32>
                affine.store %153, %alloca[3] : memref<4xvector<16xf32>>
                %154 = memref.load %alloc_84[%148, %88] : memref<32x256xf32>
                %155 = vector.broadcast %154 : f32 to vector<16xf32>
                %156 = vector.load %alloc_85[%88, %71] : memref<256x64xf32>, vector<16xf32>
                %157 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %158 = vector.fma %155, %156, %157 : vector<16xf32>
                affine.store %158, %alloca[3] : memref<4xvector<16xf32>>
                %159 = memref.load %alloc_84[%148, %94] : memref<32x256xf32>
                %160 = vector.broadcast %159 : f32 to vector<16xf32>
                %161 = vector.load %alloc_85[%94, %71] : memref<256x64xf32>, vector<16xf32>
                %162 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %163 = vector.fma %160, %161, %162 : vector<16xf32>
                affine.store %163, %alloca[3] : memref<4xvector<16xf32>>
                %164 = memref.load %alloc_84[%148, %100] : memref<32x256xf32>
                %165 = vector.broadcast %164 : f32 to vector<16xf32>
                %166 = vector.load %alloc_85[%100, %71] : memref<256x64xf32>, vector<16xf32>
                %167 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %168 = vector.fma %165, %166, %167 : vector<16xf32>
                affine.store %168, %alloca[3] : memref<4xvector<16xf32>>
              }
              %79 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %79, %alloc_83[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %80 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %80, %alloc_83[%73, %arg6] : memref<64x768xf32>, vector<16xf32>
              %81 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %81, %alloc_83[%75, %arg6] : memref<64x768xf32>, vector<16xf32>
              %82 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %82, %alloc_83[%77, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %70 = affine.load %alloc_83[%arg3, %arg4] : memref<64x768xf32>
        %71 = affine.load %alloc_13[%arg4] : memref<768xf32>
        %72 = arith.addf %70, %71 : f32
        affine.store %72, %alloc_83[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_86 = memref.reinterpret_cast %alloc_83 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_87 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %reinterpret_cast_86[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_35[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %72 = arith.addf %70, %71 : f32
          affine.store %72, %alloc_87[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_88 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_87[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_36[0, %arg4, %arg5] : memref<1x1x768xf32>
          %72 = arith.addf %70, %71 : f32
          affine.store %72, %alloc_88[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_89 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_89[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_88[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_89[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %72 = arith.addf %71, %70 : f32
          affine.store %72, %alloc_89[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %70 = affine.load %alloc_89[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = arith.divf %70, %cst : f32
          affine.store %71, %alloc_89[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_90 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_88[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_89[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %72 = arith.subf %70, %71 : f32
          affine.store %72, %alloc_90[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_91 = memref.alloc() : memref<f32>
    %cast_92 = memref.cast %alloc_91 : memref<f32> to memref<*xf32>
    %52 = llvm.mlir.addressof @constant_33 : !llvm.ptr<array<12 x i8>>
    %53 = llvm.getelementptr %52[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%53, %cast_92) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_93 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_90[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_91[] : memref<f32>
          %72 = math.powf %70, %71 : f32
          affine.store %72, %alloc_93[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_94 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_94[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_93[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_94[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %72 = arith.addf %71, %70 : f32
          affine.store %72, %alloc_94[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %70 = affine.load %alloc_94[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = arith.divf %70, %cst : f32
          affine.store %71, %alloc_94[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_95 = memref.alloc() : memref<f32>
    %cast_96 = memref.cast %alloc_95 : memref<f32> to memref<*xf32>
    %54 = llvm.mlir.addressof @constant_34 : !llvm.ptr<array<12 x i8>>
    %55 = llvm.getelementptr %54[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%55, %cast_96) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_97 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %70 = affine.load %alloc_94[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = affine.load %alloc_95[] : memref<f32>
          %72 = arith.addf %70, %71 : f32
          affine.store %72, %alloc_97[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_98 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %70 = affine.load %alloc_97[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = math.sqrt %70 : f32
          affine.store %71, %alloc_98[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_99 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_90[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_98[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %72 = arith.divf %70, %71 : f32
          affine.store %72, %alloc_99[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_100 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_99[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_15[%arg5] : memref<768xf32>
          %72 = arith.mulf %70, %71 : f32
          affine.store %72, %alloc_100[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_101 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_100[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_17[%arg5] : memref<768xf32>
          %72 = arith.addf %70, %71 : f32
          affine.store %72, %alloc_101[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_102 = memref.reinterpret_cast %alloc_101 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_103 = memref.alloc() {alignment = 128 : i64} : memref<64x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 3072 {
        affine.store %cst_1, %alloc_103[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %alloc_104 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_105 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 3072 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %70 = affine.load %alloc_19[%arg4 + %arg5, %arg3 + %arg6] : memref<768x3072xf32>
            affine.store %70, %alloc_105[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %70 = affine.load %reinterpret_cast_102[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %70, %alloc_104[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %70 = affine.apply #map3(%arg5, %arg7)
              %71 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %72 = vector.load %alloc_103[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %72, %alloca[0] : memref<4xvector<16xf32>>
              %73 = arith.addi %arg7, %c1 : index
              %74 = vector.load %alloc_103[%73, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %74, %alloca[1] : memref<4xvector<16xf32>>
              %75 = arith.addi %arg7, %c2 : index
              %76 = vector.load %alloc_103[%75, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %76, %alloca[2] : memref<4xvector<16xf32>>
              %77 = arith.addi %arg7, %c3 : index
              %78 = vector.load %alloc_103[%77, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %78, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %83 = memref.load %alloc_104[%70, %arg8] : memref<32x256xf32>
                %84 = vector.broadcast %83 : f32 to vector<16xf32>
                %85 = vector.load %alloc_105[%arg8, %71] : memref<256x64xf32>, vector<16xf32>
                %86 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %87 = vector.fma %84, %85, %86 : vector<16xf32>
                affine.store %87, %alloca[0] : memref<4xvector<16xf32>>
                %88 = affine.apply #map4(%arg8)
                %89 = memref.load %alloc_104[%70, %88] : memref<32x256xf32>
                %90 = vector.broadcast %89 : f32 to vector<16xf32>
                %91 = vector.load %alloc_105[%88, %71] : memref<256x64xf32>, vector<16xf32>
                %92 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %93 = vector.fma %90, %91, %92 : vector<16xf32>
                affine.store %93, %alloca[0] : memref<4xvector<16xf32>>
                %94 = affine.apply #map5(%arg8)
                %95 = memref.load %alloc_104[%70, %94] : memref<32x256xf32>
                %96 = vector.broadcast %95 : f32 to vector<16xf32>
                %97 = vector.load %alloc_105[%94, %71] : memref<256x64xf32>, vector<16xf32>
                %98 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %99 = vector.fma %96, %97, %98 : vector<16xf32>
                affine.store %99, %alloca[0] : memref<4xvector<16xf32>>
                %100 = affine.apply #map6(%arg8)
                %101 = memref.load %alloc_104[%70, %100] : memref<32x256xf32>
                %102 = vector.broadcast %101 : f32 to vector<16xf32>
                %103 = vector.load %alloc_105[%100, %71] : memref<256x64xf32>, vector<16xf32>
                %104 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %105 = vector.fma %102, %103, %104 : vector<16xf32>
                affine.store %105, %alloca[0] : memref<4xvector<16xf32>>
                %106 = arith.addi %70, %c1 : index
                %107 = memref.load %alloc_104[%106, %arg8] : memref<32x256xf32>
                %108 = vector.broadcast %107 : f32 to vector<16xf32>
                %109 = vector.load %alloc_105[%arg8, %71] : memref<256x64xf32>, vector<16xf32>
                %110 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %111 = vector.fma %108, %109, %110 : vector<16xf32>
                affine.store %111, %alloca[1] : memref<4xvector<16xf32>>
                %112 = memref.load %alloc_104[%106, %88] : memref<32x256xf32>
                %113 = vector.broadcast %112 : f32 to vector<16xf32>
                %114 = vector.load %alloc_105[%88, %71] : memref<256x64xf32>, vector<16xf32>
                %115 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %116 = vector.fma %113, %114, %115 : vector<16xf32>
                affine.store %116, %alloca[1] : memref<4xvector<16xf32>>
                %117 = memref.load %alloc_104[%106, %94] : memref<32x256xf32>
                %118 = vector.broadcast %117 : f32 to vector<16xf32>
                %119 = vector.load %alloc_105[%94, %71] : memref<256x64xf32>, vector<16xf32>
                %120 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %121 = vector.fma %118, %119, %120 : vector<16xf32>
                affine.store %121, %alloca[1] : memref<4xvector<16xf32>>
                %122 = memref.load %alloc_104[%106, %100] : memref<32x256xf32>
                %123 = vector.broadcast %122 : f32 to vector<16xf32>
                %124 = vector.load %alloc_105[%100, %71] : memref<256x64xf32>, vector<16xf32>
                %125 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %126 = vector.fma %123, %124, %125 : vector<16xf32>
                affine.store %126, %alloca[1] : memref<4xvector<16xf32>>
                %127 = arith.addi %70, %c2 : index
                %128 = memref.load %alloc_104[%127, %arg8] : memref<32x256xf32>
                %129 = vector.broadcast %128 : f32 to vector<16xf32>
                %130 = vector.load %alloc_105[%arg8, %71] : memref<256x64xf32>, vector<16xf32>
                %131 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %132 = vector.fma %129, %130, %131 : vector<16xf32>
                affine.store %132, %alloca[2] : memref<4xvector<16xf32>>
                %133 = memref.load %alloc_104[%127, %88] : memref<32x256xf32>
                %134 = vector.broadcast %133 : f32 to vector<16xf32>
                %135 = vector.load %alloc_105[%88, %71] : memref<256x64xf32>, vector<16xf32>
                %136 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %137 = vector.fma %134, %135, %136 : vector<16xf32>
                affine.store %137, %alloca[2] : memref<4xvector<16xf32>>
                %138 = memref.load %alloc_104[%127, %94] : memref<32x256xf32>
                %139 = vector.broadcast %138 : f32 to vector<16xf32>
                %140 = vector.load %alloc_105[%94, %71] : memref<256x64xf32>, vector<16xf32>
                %141 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %142 = vector.fma %139, %140, %141 : vector<16xf32>
                affine.store %142, %alloca[2] : memref<4xvector<16xf32>>
                %143 = memref.load %alloc_104[%127, %100] : memref<32x256xf32>
                %144 = vector.broadcast %143 : f32 to vector<16xf32>
                %145 = vector.load %alloc_105[%100, %71] : memref<256x64xf32>, vector<16xf32>
                %146 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %147 = vector.fma %144, %145, %146 : vector<16xf32>
                affine.store %147, %alloca[2] : memref<4xvector<16xf32>>
                %148 = arith.addi %70, %c3 : index
                %149 = memref.load %alloc_104[%148, %arg8] : memref<32x256xf32>
                %150 = vector.broadcast %149 : f32 to vector<16xf32>
                %151 = vector.load %alloc_105[%arg8, %71] : memref<256x64xf32>, vector<16xf32>
                %152 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %153 = vector.fma %150, %151, %152 : vector<16xf32>
                affine.store %153, %alloca[3] : memref<4xvector<16xf32>>
                %154 = memref.load %alloc_104[%148, %88] : memref<32x256xf32>
                %155 = vector.broadcast %154 : f32 to vector<16xf32>
                %156 = vector.load %alloc_105[%88, %71] : memref<256x64xf32>, vector<16xf32>
                %157 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %158 = vector.fma %155, %156, %157 : vector<16xf32>
                affine.store %158, %alloca[3] : memref<4xvector<16xf32>>
                %159 = memref.load %alloc_104[%148, %94] : memref<32x256xf32>
                %160 = vector.broadcast %159 : f32 to vector<16xf32>
                %161 = vector.load %alloc_105[%94, %71] : memref<256x64xf32>, vector<16xf32>
                %162 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %163 = vector.fma %160, %161, %162 : vector<16xf32>
                affine.store %163, %alloca[3] : memref<4xvector<16xf32>>
                %164 = memref.load %alloc_104[%148, %100] : memref<32x256xf32>
                %165 = vector.broadcast %164 : f32 to vector<16xf32>
                %166 = vector.load %alloc_105[%100, %71] : memref<256x64xf32>, vector<16xf32>
                %167 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %168 = vector.fma %165, %166, %167 : vector<16xf32>
                affine.store %168, %alloca[3] : memref<4xvector<16xf32>>
              }
              %79 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %79, %alloc_103[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %80 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %80, %alloc_103[%73, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %81 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %81, %alloc_103[%75, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %82 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %82, %alloc_103[%77, %arg6] : memref<64x3072xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 3072 {
        %70 = affine.load %alloc_103[%arg3, %arg4] : memref<64x3072xf32>
        %71 = affine.load %alloc_21[%arg4] : memref<3072xf32>
        %72 = arith.addf %70, %71 : f32
        affine.store %72, %alloc_103[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %reinterpret_cast_106 = memref.reinterpret_cast %alloc_103 to offset: [0], sizes: [64, 1, 3072], strides: [3072, 3072, 1] : memref<64x3072xf32> to memref<64x1x3072xf32>
    %alloc_107 = memref.alloc() : memref<f32>
    %cast_108 = memref.cast %alloc_107 : memref<f32> to memref<*xf32>
    %56 = llvm.mlir.addressof @constant_37 : !llvm.ptr<array<12 x i8>>
    %57 = llvm.getelementptr %56[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%57, %cast_108) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_109 = memref.alloc() : memref<f32>
    %cast_110 = memref.cast %alloc_109 : memref<f32> to memref<*xf32>
    %58 = llvm.mlir.addressof @constant_38 : !llvm.ptr<array<12 x i8>>
    %59 = llvm.getelementptr %58[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%59, %cast_110) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_111 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %70 = affine.load %reinterpret_cast_106[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %71 = affine.load %alloc_109[] : memref<f32>
          %72 = math.powf %70, %71 : f32
          affine.store %72, %alloc_111[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_112 = memref.alloc() : memref<f32>
    %cast_113 = memref.cast %alloc_112 : memref<f32> to memref<*xf32>
    %60 = llvm.mlir.addressof @constant_39 : !llvm.ptr<array<12 x i8>>
    %61 = llvm.getelementptr %60[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%61, %cast_113) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_114 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %70 = affine.load %alloc_111[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %71 = affine.load %alloc_112[] : memref<f32>
          %72 = arith.mulf %70, %71 : f32
          affine.store %72, %alloc_114[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_115 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %70 = affine.load %reinterpret_cast_106[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %71 = affine.load %alloc_114[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %72 = arith.addf %70, %71 : f32
          affine.store %72, %alloc_115[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_116 = memref.alloc() : memref<f32>
    %cast_117 = memref.cast %alloc_116 : memref<f32> to memref<*xf32>
    %62 = llvm.mlir.addressof @constant_40 : !llvm.ptr<array<12 x i8>>
    %63 = llvm.getelementptr %62[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%63, %cast_117) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_118 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %70 = affine.load %alloc_115[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %71 = affine.load %alloc_116[] : memref<f32>
          %72 = arith.mulf %70, %71 : f32
          affine.store %72, %alloc_118[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_119 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %70 = affine.load %alloc_118[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %71 = math.tanh %70 : f32
          affine.store %71, %alloc_119[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_120 = memref.alloc() : memref<f32>
    %cast_121 = memref.cast %alloc_120 : memref<f32> to memref<*xf32>
    %64 = llvm.mlir.addressof @constant_41 : !llvm.ptr<array<12 x i8>>
    %65 = llvm.getelementptr %64[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%65, %cast_121) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_122 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %70 = affine.load %alloc_119[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %71 = affine.load %alloc_120[] : memref<f32>
          %72 = arith.addf %70, %71 : f32
          affine.store %72, %alloc_122[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_123 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %70 = affine.load %reinterpret_cast_106[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %71 = affine.load %alloc_122[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %72 = arith.mulf %70, %71 : f32
          affine.store %72, %alloc_123[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_124 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %70 = affine.load %alloc_123[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %71 = affine.load %alloc_107[] : memref<f32>
          %72 = arith.mulf %70, %71 : f32
          affine.store %72, %alloc_124[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %reinterpret_cast_125 = memref.reinterpret_cast %alloc_124 to offset: [0], sizes: [64, 3072], strides: [3072, 1] : memref<64x1x3072xf32> to memref<64x3072xf32>
    %alloc_126 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        affine.store %cst_1, %alloc_126[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_127 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_128 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 768 step 64 {
      affine.for %arg4 = 0 to 3072 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %70 = affine.load %alloc_23[%arg4 + %arg5, %arg3 + %arg6] : memref<3072x768xf32>
            affine.store %70, %alloc_128[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %70 = affine.load %reinterpret_cast_125[%arg5 + %arg6, %arg4 + %arg7] : memref<64x3072xf32>
              affine.store %70, %alloc_127[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %70 = affine.apply #map3(%arg5, %arg7)
              %71 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %72 = vector.load %alloc_126[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %72, %alloca[0] : memref<4xvector<16xf32>>
              %73 = arith.addi %arg7, %c1 : index
              %74 = vector.load %alloc_126[%73, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %74, %alloca[1] : memref<4xvector<16xf32>>
              %75 = arith.addi %arg7, %c2 : index
              %76 = vector.load %alloc_126[%75, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %76, %alloca[2] : memref<4xvector<16xf32>>
              %77 = arith.addi %arg7, %c3 : index
              %78 = vector.load %alloc_126[%77, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %78, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %83 = memref.load %alloc_127[%70, %arg8] : memref<32x256xf32>
                %84 = vector.broadcast %83 : f32 to vector<16xf32>
                %85 = vector.load %alloc_128[%arg8, %71] : memref<256x64xf32>, vector<16xf32>
                %86 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %87 = vector.fma %84, %85, %86 : vector<16xf32>
                affine.store %87, %alloca[0] : memref<4xvector<16xf32>>
                %88 = affine.apply #map4(%arg8)
                %89 = memref.load %alloc_127[%70, %88] : memref<32x256xf32>
                %90 = vector.broadcast %89 : f32 to vector<16xf32>
                %91 = vector.load %alloc_128[%88, %71] : memref<256x64xf32>, vector<16xf32>
                %92 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %93 = vector.fma %90, %91, %92 : vector<16xf32>
                affine.store %93, %alloca[0] : memref<4xvector<16xf32>>
                %94 = affine.apply #map5(%arg8)
                %95 = memref.load %alloc_127[%70, %94] : memref<32x256xf32>
                %96 = vector.broadcast %95 : f32 to vector<16xf32>
                %97 = vector.load %alloc_128[%94, %71] : memref<256x64xf32>, vector<16xf32>
                %98 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %99 = vector.fma %96, %97, %98 : vector<16xf32>
                affine.store %99, %alloca[0] : memref<4xvector<16xf32>>
                %100 = affine.apply #map6(%arg8)
                %101 = memref.load %alloc_127[%70, %100] : memref<32x256xf32>
                %102 = vector.broadcast %101 : f32 to vector<16xf32>
                %103 = vector.load %alloc_128[%100, %71] : memref<256x64xf32>, vector<16xf32>
                %104 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %105 = vector.fma %102, %103, %104 : vector<16xf32>
                affine.store %105, %alloca[0] : memref<4xvector<16xf32>>
                %106 = arith.addi %70, %c1 : index
                %107 = memref.load %alloc_127[%106, %arg8] : memref<32x256xf32>
                %108 = vector.broadcast %107 : f32 to vector<16xf32>
                %109 = vector.load %alloc_128[%arg8, %71] : memref<256x64xf32>, vector<16xf32>
                %110 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %111 = vector.fma %108, %109, %110 : vector<16xf32>
                affine.store %111, %alloca[1] : memref<4xvector<16xf32>>
                %112 = memref.load %alloc_127[%106, %88] : memref<32x256xf32>
                %113 = vector.broadcast %112 : f32 to vector<16xf32>
                %114 = vector.load %alloc_128[%88, %71] : memref<256x64xf32>, vector<16xf32>
                %115 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %116 = vector.fma %113, %114, %115 : vector<16xf32>
                affine.store %116, %alloca[1] : memref<4xvector<16xf32>>
                %117 = memref.load %alloc_127[%106, %94] : memref<32x256xf32>
                %118 = vector.broadcast %117 : f32 to vector<16xf32>
                %119 = vector.load %alloc_128[%94, %71] : memref<256x64xf32>, vector<16xf32>
                %120 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %121 = vector.fma %118, %119, %120 : vector<16xf32>
                affine.store %121, %alloca[1] : memref<4xvector<16xf32>>
                %122 = memref.load %alloc_127[%106, %100] : memref<32x256xf32>
                %123 = vector.broadcast %122 : f32 to vector<16xf32>
                %124 = vector.load %alloc_128[%100, %71] : memref<256x64xf32>, vector<16xf32>
                %125 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %126 = vector.fma %123, %124, %125 : vector<16xf32>
                affine.store %126, %alloca[1] : memref<4xvector<16xf32>>
                %127 = arith.addi %70, %c2 : index
                %128 = memref.load %alloc_127[%127, %arg8] : memref<32x256xf32>
                %129 = vector.broadcast %128 : f32 to vector<16xf32>
                %130 = vector.load %alloc_128[%arg8, %71] : memref<256x64xf32>, vector<16xf32>
                %131 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %132 = vector.fma %129, %130, %131 : vector<16xf32>
                affine.store %132, %alloca[2] : memref<4xvector<16xf32>>
                %133 = memref.load %alloc_127[%127, %88] : memref<32x256xf32>
                %134 = vector.broadcast %133 : f32 to vector<16xf32>
                %135 = vector.load %alloc_128[%88, %71] : memref<256x64xf32>, vector<16xf32>
                %136 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %137 = vector.fma %134, %135, %136 : vector<16xf32>
                affine.store %137, %alloca[2] : memref<4xvector<16xf32>>
                %138 = memref.load %alloc_127[%127, %94] : memref<32x256xf32>
                %139 = vector.broadcast %138 : f32 to vector<16xf32>
                %140 = vector.load %alloc_128[%94, %71] : memref<256x64xf32>, vector<16xf32>
                %141 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %142 = vector.fma %139, %140, %141 : vector<16xf32>
                affine.store %142, %alloca[2] : memref<4xvector<16xf32>>
                %143 = memref.load %alloc_127[%127, %100] : memref<32x256xf32>
                %144 = vector.broadcast %143 : f32 to vector<16xf32>
                %145 = vector.load %alloc_128[%100, %71] : memref<256x64xf32>, vector<16xf32>
                %146 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %147 = vector.fma %144, %145, %146 : vector<16xf32>
                affine.store %147, %alloca[2] : memref<4xvector<16xf32>>
                %148 = arith.addi %70, %c3 : index
                %149 = memref.load %alloc_127[%148, %arg8] : memref<32x256xf32>
                %150 = vector.broadcast %149 : f32 to vector<16xf32>
                %151 = vector.load %alloc_128[%arg8, %71] : memref<256x64xf32>, vector<16xf32>
                %152 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %153 = vector.fma %150, %151, %152 : vector<16xf32>
                affine.store %153, %alloca[3] : memref<4xvector<16xf32>>
                %154 = memref.load %alloc_127[%148, %88] : memref<32x256xf32>
                %155 = vector.broadcast %154 : f32 to vector<16xf32>
                %156 = vector.load %alloc_128[%88, %71] : memref<256x64xf32>, vector<16xf32>
                %157 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %158 = vector.fma %155, %156, %157 : vector<16xf32>
                affine.store %158, %alloca[3] : memref<4xvector<16xf32>>
                %159 = memref.load %alloc_127[%148, %94] : memref<32x256xf32>
                %160 = vector.broadcast %159 : f32 to vector<16xf32>
                %161 = vector.load %alloc_128[%94, %71] : memref<256x64xf32>, vector<16xf32>
                %162 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %163 = vector.fma %160, %161, %162 : vector<16xf32>
                affine.store %163, %alloca[3] : memref<4xvector<16xf32>>
                %164 = memref.load %alloc_127[%148, %100] : memref<32x256xf32>
                %165 = vector.broadcast %164 : f32 to vector<16xf32>
                %166 = vector.load %alloc_128[%100, %71] : memref<256x64xf32>, vector<16xf32>
                %167 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %168 = vector.fma %165, %166, %167 : vector<16xf32>
                affine.store %168, %alloca[3] : memref<4xvector<16xf32>>
              }
              %79 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %79, %alloc_126[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %80 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %80, %alloc_126[%73, %arg6] : memref<64x768xf32>, vector<16xf32>
              %81 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %81, %alloc_126[%75, %arg6] : memref<64x768xf32>, vector<16xf32>
              %82 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %82, %alloc_126[%77, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %70 = affine.load %alloc_126[%arg3, %arg4] : memref<64x768xf32>
        %71 = affine.load %alloc_25[%arg4] : memref<768xf32>
        %72 = arith.addf %70, %71 : f32
        affine.store %72, %alloc_126[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_129 = memref.reinterpret_cast %alloc_126 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_130 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_87[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %reinterpret_cast_129[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %72 = arith.addf %70, %71 : f32
          affine.store %72, %alloc_130[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_131 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_130[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_36[0, %arg4, %arg5] : memref<1x1x768xf32>
          %72 = arith.addf %70, %71 : f32
          affine.store %72, %alloc_131[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_132 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_132[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_131[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_132[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %72 = arith.addf %71, %70 : f32
          affine.store %72, %alloc_132[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %70 = affine.load %alloc_132[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = arith.divf %70, %cst : f32
          affine.store %71, %alloc_132[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_133 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_131[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_132[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %72 = arith.subf %70, %71 : f32
          affine.store %72, %alloc_133[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_134 = memref.alloc() : memref<f32>
    %cast_135 = memref.cast %alloc_134 : memref<f32> to memref<*xf32>
    %66 = llvm.mlir.addressof @constant_44 : !llvm.ptr<array<12 x i8>>
    %67 = llvm.getelementptr %66[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%67, %cast_135) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_136 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_133[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_134[] : memref<f32>
          %72 = math.powf %70, %71 : f32
          affine.store %72, %alloc_136[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_137 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_137[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_136[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_137[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %72 = arith.addf %71, %70 : f32
          affine.store %72, %alloc_137[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %70 = affine.load %alloc_137[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = arith.divf %70, %cst : f32
          affine.store %71, %alloc_137[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_138 = memref.alloc() : memref<f32>
    %cast_139 = memref.cast %alloc_138 : memref<f32> to memref<*xf32>
    %68 = llvm.mlir.addressof @constant_45 : !llvm.ptr<array<12 x i8>>
    %69 = llvm.getelementptr %68[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%69, %cast_139) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_140 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %70 = affine.load %alloc_137[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = affine.load %alloc_138[] : memref<f32>
          %72 = arith.addf %70, %71 : f32
          affine.store %72, %alloc_140[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_141 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %70 = affine.load %alloc_140[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = math.sqrt %70 : f32
          affine.store %71, %alloc_141[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_142 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_133[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_141[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %72 = arith.divf %70, %71 : f32
          affine.store %72, %alloc_142[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_143 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_142[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_27[%arg5] : memref<768xf32>
          %72 = arith.mulf %70, %71 : f32
          affine.store %72, %alloc_143[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_144 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %70 = affine.load %alloc_143[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = affine.load %alloc_29[%arg5] : memref<768xf32>
          %72 = arith.addf %70, %71 : f32
          affine.store %72, %alloc_144[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_145 = memref.alloc() {alignment = 16 : i64, remote_target = 1 : i64} : memref<64x1x50264xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 50264 {
          affine.store %cst_1, %alloc_145[%arg3, %arg4, %arg5] {remote_check_use = 1 : i8} : memref<64x1x50264xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 50264 step 8 {
          affine.for %arg6 = 0 to 768 step 8 {
            %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
            affine.for %arg7 = 0 to 1 {
              %70 = arith.addi %arg7, %arg4 : index
              %71 = vector.load %alloc_145[%arg3, %70, %arg5] {remote_check_use = 1 : i8} : memref<64x1x50264xf32>, vector<8xf32>
              affine.store %71, %alloca[0] {remote_check_use = 1 : i8} : memref<1xvector<8xf32>>
              %72 = memref.load %alloc_144[%arg3, %70, %arg6] : memref<64x1x768xf32>
              %73 = vector.broadcast %72 : f32 to vector<8xf32>
              %74 = vector.load %alloc_33[%arg6, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %75 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %76 = vector.fma %73, %74, %75 : vector<8xf32>
              affine.store %76, %alloca[0] : memref<1xvector<8xf32>>
              %77 = arith.addi %arg6, %c1 : index
              %78 = memref.load %alloc_144[%arg3, %70, %77] : memref<64x1x768xf32>
              %79 = vector.broadcast %78 : f32 to vector<8xf32>
              %80 = vector.load %alloc_33[%77, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %81 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %82 = vector.fma %79, %80, %81 : vector<8xf32>
              affine.store %82, %alloca[0] : memref<1xvector<8xf32>>
              %83 = arith.addi %arg6, %c2 : index
              %84 = memref.load %alloc_144[%arg3, %70, %83] : memref<64x1x768xf32>
              %85 = vector.broadcast %84 : f32 to vector<8xf32>
              %86 = vector.load %alloc_33[%83, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %87 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %88 = vector.fma %85, %86, %87 : vector<8xf32>
              affine.store %88, %alloca[0] : memref<1xvector<8xf32>>
              %89 = arith.addi %arg6, %c3 : index
              %90 = memref.load %alloc_144[%arg3, %70, %89] : memref<64x1x768xf32>
              %91 = vector.broadcast %90 : f32 to vector<8xf32>
              %92 = vector.load %alloc_33[%89, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %93 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %94 = vector.fma %91, %92, %93 : vector<8xf32>
              affine.store %94, %alloca[0] : memref<1xvector<8xf32>>
              %95 = arith.addi %arg6, %c4 : index
              %96 = memref.load %alloc_144[%arg3, %70, %95] : memref<64x1x768xf32>
              %97 = vector.broadcast %96 : f32 to vector<8xf32>
              %98 = vector.load %alloc_33[%95, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %99 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %100 = vector.fma %97, %98, %99 : vector<8xf32>
              affine.store %100, %alloca[0] : memref<1xvector<8xf32>>
              %101 = arith.addi %arg6, %c5 : index
              %102 = memref.load %alloc_144[%arg3, %70, %101] : memref<64x1x768xf32>
              %103 = vector.broadcast %102 : f32 to vector<8xf32>
              %104 = vector.load %alloc_33[%101, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %105 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %106 = vector.fma %103, %104, %105 : vector<8xf32>
              affine.store %106, %alloca[0] : memref<1xvector<8xf32>>
              %107 = arith.addi %arg6, %c6 : index
              %108 = memref.load %alloc_144[%arg3, %70, %107] : memref<64x1x768xf32>
              %109 = vector.broadcast %108 : f32 to vector<8xf32>
              %110 = vector.load %alloc_33[%107, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %111 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %112 = vector.fma %109, %110, %111 : vector<8xf32>
              affine.store %112, %alloca[0] : memref<1xvector<8xf32>>
              %113 = arith.addi %arg6, %c7 : index
              %114 = memref.load %alloc_144[%arg3, %70, %113] : memref<64x1x768xf32>
              %115 = vector.broadcast %114 : f32 to vector<8xf32>
              %116 = vector.load %alloc_33[%113, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %117 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              %118 = vector.fma %115, %116, %117 : vector<8xf32>
              affine.store %118, %alloca[0] : memref<1xvector<8xf32>>
              %119 = affine.load %alloca[0] : memref<1xvector<8xf32>>
              vector.store %119, %alloc_145[%arg3, %70, %arg5] {remote_check_use = 1 : i8} : memref<64x1x50264xf32>, vector<8xf32>
            }
          }
        }
      }
    }
    return %alloc : memref<64x1x50264xf32>
  }
}


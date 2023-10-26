#map = affine_map<(d0) -> (d0 * 195840)>
#map1 = affine_map<(d0) -> (d0 * 196608)>
#map2 = affine_map<(d0) -> (d0 * 196608 + 16320)>
#map3 = affine_map<(d0) -> (d0 * 50264)>
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
    %c0_35 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c1_36 = arith.constant 1 : index
    scf.for %arg3 = %c0_35 to %c64 step %c1_36 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %reinterpret_cast[%arg3, %arg4] : memref<64x1xi64>
          %118 = arith.index_cast %117 : i64 to index
          %119 = arith.addi %118, %c50264 : index
          %120 = arith.cmpi slt, %118, %c0 : index
          %121 = arith.select %120, %119, %118 : index
          %122 = memref.load %alloc[%121, %arg5] : memref<50264x768xf32>
          memref.store %122, %alloc_34[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_37 = memref.alloc() {alignment = 16 : i64} : memref<1x1x768xf32>
    %cast_38 = memref.cast %alloc_37 : memref<1x1x768xf32> to memref<*xf32>
    %34 = llvm.mlir.addressof @constant_18 : !llvm.ptr<array<12 x i8>>
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%35, %cast_38) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_39 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_40 = arith.constant 0 : index
    %c64_41 = arith.constant 64 : index
    %c1_42 = arith.constant 1 : index
    scf.for %arg3 = %c0_40 to %c64_41 step %c1_42 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_34[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_395 = arith.constant 0 : index
          %118 = memref.load %alloc_37[%c0_395, %arg4, %arg5] : memref<1x1x768xf32>
          %119 = arith.addf %117, %118 : f32
          memref.store %119, %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_43 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_44 = arith.constant 0 : index
    %c64_45 = arith.constant 64 : index
    %c1_46 = arith.constant 1 : index
    scf.for %arg3 = %c0_44 to %c64_45 step %c1_46 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          memref.store %cst_1, %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %c0_47 = arith.constant 0 : index
    %c64_48 = arith.constant 64 : index
    %c1_49 = arith.constant 1 : index
    scf.for %arg3 = %c0_47 to %c64_48 step %c1_49 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_395 = arith.constant 0 : index
          %118 = memref.load %alloc_43[%arg3, %arg4, %c0_395] : memref<64x1x1xf32>
          %119 = arith.addf %118, %117 : f32
          %c0_396 = arith.constant 0 : index
          memref.store %119, %alloc_43[%arg3, %arg4, %c0_396] : memref<64x1x1xf32>
        }
      }
    }
    %c0_50 = arith.constant 0 : index
    %c64_51 = arith.constant 64 : index
    %c1_52 = arith.constant 1 : index
    scf.for %arg3 = %c0_50 to %c64_51 step %c1_52 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          %117 = memref.load %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = arith.divf %117, %cst : f32
          memref.store %118, %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_53 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_54 = arith.constant 0 : index
    %c64_55 = arith.constant 64 : index
    %c1_56 = arith.constant 1 : index
    scf.for %arg3 = %c0_54 to %c64_55 step %c1_56 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_395 = arith.constant 0 : index
          %118 = memref.load %alloc_43[%arg3, %arg4, %c0_395] : memref<64x1x1xf32>
          %119 = arith.subf %117, %118 : f32
          memref.store %119, %alloc_53[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_57 = memref.alloc() : memref<f32>
    %cast_58 = memref.cast %alloc_57 : memref<f32> to memref<*xf32>
    %36 = llvm.mlir.addressof @constant_19 : !llvm.ptr<array<12 x i8>>
    %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%37, %cast_58) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_59 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_60 = arith.constant 0 : index
    %c64_61 = arith.constant 64 : index
    %c1_62 = arith.constant 1 : index
    scf.for %arg3 = %c0_60 to %c64_61 step %c1_62 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_53[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = memref.load %alloc_57[] : memref<f32>
          %119 = math.powf %117, %118 : f32
          memref.store %119, %alloc_59[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_63 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_64 = arith.constant 0 : index
    %c64_65 = arith.constant 64 : index
    %c1_66 = arith.constant 1 : index
    scf.for %arg3 = %c0_64 to %c64_65 step %c1_66 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          memref.store %cst_1, %alloc_63[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %c0_67 = arith.constant 0 : index
    %c64_68 = arith.constant 64 : index
    %c1_69 = arith.constant 1 : index
    scf.for %arg3 = %c0_67 to %c64_68 step %c1_69 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_59[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_395 = arith.constant 0 : index
          %118 = memref.load %alloc_63[%arg3, %arg4, %c0_395] : memref<64x1x1xf32>
          %119 = arith.addf %118, %117 : f32
          %c0_396 = arith.constant 0 : index
          memref.store %119, %alloc_63[%arg3, %arg4, %c0_396] : memref<64x1x1xf32>
        }
      }
    }
    %c0_70 = arith.constant 0 : index
    %c64_71 = arith.constant 64 : index
    %c1_72 = arith.constant 1 : index
    scf.for %arg3 = %c0_70 to %c64_71 step %c1_72 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          %117 = memref.load %alloc_63[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = arith.divf %117, %cst : f32
          memref.store %118, %alloc_63[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_73 = memref.alloc() : memref<f32>
    %cast_74 = memref.cast %alloc_73 : memref<f32> to memref<*xf32>
    %38 = llvm.mlir.addressof @constant_20 : !llvm.ptr<array<12 x i8>>
    %39 = llvm.getelementptr %38[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%39, %cast_74) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_75 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_76 = arith.constant 0 : index
    %c64_77 = arith.constant 64 : index
    %c1_78 = arith.constant 1 : index
    scf.for %arg3 = %c0_76 to %c64_77 step %c1_78 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          %117 = memref.load %alloc_63[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = memref.load %alloc_73[] : memref<f32>
          %119 = arith.addf %117, %118 : f32
          memref.store %119, %alloc_75[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_79 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_80 = arith.constant 0 : index
    %c64_81 = arith.constant 64 : index
    %c1_82 = arith.constant 1 : index
    scf.for %arg3 = %c0_80 to %c64_81 step %c1_82 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          %117 = memref.load %alloc_75[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = math.sqrt %117 : f32
          memref.store %118, %alloc_79[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_83 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_84 = arith.constant 0 : index
    %c64_85 = arith.constant 64 : index
    %c1_86 = arith.constant 1 : index
    scf.for %arg3 = %c0_84 to %c64_85 step %c1_86 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_53[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_395 = arith.constant 0 : index
          %118 = memref.load %alloc_79[%arg3, %arg4, %c0_395] : memref<64x1x1xf32>
          %119 = arith.divf %117, %118 : f32
          memref.store %119, %alloc_83[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_87 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_88 = arith.constant 0 : index
    %c64_89 = arith.constant 64 : index
    %c1_90 = arith.constant 1 : index
    scf.for %arg3 = %c0_88 to %c64_89 step %c1_90 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_83[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = memref.load %alloc_2[%arg5] : memref<768xf32>
          %119 = arith.mulf %117, %118 : f32
          memref.store %119, %alloc_87[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_91 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_92 = arith.constant 0 : index
    %c64_93 = arith.constant 64 : index
    %c1_94 = arith.constant 1 : index
    scf.for %arg3 = %c0_92 to %c64_93 step %c1_94 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_87[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = memref.load %alloc_4[%arg5] : memref<768xf32>
          %119 = arith.addf %117, %118 : f32
          memref.store %119, %alloc_91[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_95 = memref.reinterpret_cast %alloc_91 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_96 = memref.alloc() {alignment = 128 : i64} : memref<64x2304xf32>
    %c0_97 = arith.constant 0 : index
    %c64_98 = arith.constant 64 : index
    %c1_99 = arith.constant 1 : index
    scf.for %arg3 = %c0_97 to %c64_98 step %c1_99 {
      %c0_389 = arith.constant 0 : index
      %c2304_390 = arith.constant 2304 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c2304_390 step %c1_391 {
        memref.store %cst_1, %alloc_96[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %alloc_100 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_101 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    %c0_102 = arith.constant 0 : index
    %c2304 = arith.constant 2304 : index
    %c64_103 = arith.constant 64 : index
    %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
    scf.for %arg3 = %c0_102 to %c2304 step %c64_103 {
      %c0_389 = arith.constant 0 : index
      %c768_390 = arith.constant 768 : index
      %c256 = arith.constant 256 : index
      scf.for %arg4 = %c0_389 to %c768_390 step %c256 {
        %c0_391 = arith.constant 0 : index
        %c256_392 = arith.constant 256 : index
        %c1_393 = arith.constant 1 : index
        scf.for %arg5 = %c0_391 to %c256_392 step %c1_393 {
          %c0_396 = arith.constant 0 : index
          %c64_397 = arith.constant 64 : index
          %c1_398 = arith.constant 1 : index
          scf.for %arg6 = %c0_396 to %c64_397 step %c1_398 {
            %117 = arith.addi %arg4, %arg5 : index
            %118 = arith.addi %arg3, %arg6 : index
            %119 = memref.load %alloc_6[%117, %118] : memref<768x2304xf32>
            memref.store %119, %alloc_101[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        %c0_394 = arith.constant 0 : index
        %c64_395 = arith.constant 64 : index
        %c32 = arith.constant 32 : index
        scf.for %arg5 = %c0_394 to %c64_395 step %c32 {
          %c0_396 = arith.constant 0 : index
          %c32_397 = arith.constant 32 : index
          %c1_398 = arith.constant 1 : index
          scf.for %arg6 = %c0_396 to %c32_397 step %c1_398 {
            %c0_400 = arith.constant 0 : index
            %c256_401 = arith.constant 256 : index
            %c1_402 = arith.constant 1 : index
            scf.for %arg7 = %c0_400 to %c256_401 step %c1_402 {
              %118 = arith.addi %arg5, %arg6 : index
              %119 = arith.addi %arg4, %arg7 : index
              %120 = memref.load %reinterpret_cast_95[%118, %119] : memref<64x768xf32>
              memref.store %120, %alloc_100[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          %c64_399 = arith.constant 64 : index
          %117 = arith.addi %arg3, %c64_399 : index
          %c16 = arith.constant 16 : index
          scf.for %arg6 = %arg3 to %117 step %c16 {
            %c32_400 = arith.constant 32 : index
            %118 = arith.addi %arg5, %c32_400 : index
            %c4_401 = arith.constant 4 : index
            scf.for %arg7 = %arg5 to %118 step %c4_401 {
              %c-1 = arith.constant -1 : index
              %119 = arith.muli %arg5, %c-1 : index
              %120 = arith.addi %119, %arg7 : index
              %c-1_402 = arith.constant -1 : index
              %121 = arith.muli %arg3, %c-1_402 : index
              %122 = arith.addi %121, %arg6 : index
              %123 = vector.load %alloc_96[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %c0_403 = arith.constant 0 : index
              memref.store %123, %alloca[%c0_403] : memref<4xvector<16xf32>>
              %124 = arith.addi %arg7, %c1 : index
              %125 = vector.load %alloc_96[%124, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %c1_404 = arith.constant 1 : index
              memref.store %125, %alloca[%c1_404] : memref<4xvector<16xf32>>
              %126 = arith.addi %arg7, %c2 : index
              %127 = vector.load %alloc_96[%126, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %c2_405 = arith.constant 2 : index
              memref.store %127, %alloca[%c2_405] : memref<4xvector<16xf32>>
              %128 = arith.addi %arg7, %c3 : index
              %129 = vector.load %alloc_96[%128, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %c3_406 = arith.constant 3 : index
              memref.store %129, %alloca[%c3_406] : memref<4xvector<16xf32>>
              %c0_407 = arith.constant 0 : index
              %c256_408 = arith.constant 256 : index
              %c4_409 = arith.constant 4 : index
              scf.for %arg8 = %c0_407 to %c256_408 step %c4_409 {
                %134 = memref.load %alloc_100[%120, %arg8] : memref<32x256xf32>
                %135 = vector.broadcast %134 : f32 to vector<16xf32>
                %136 = vector.load %alloc_101[%arg8, %122] : memref<256x64xf32>, vector<16xf32>
                %c0_414 = arith.constant 0 : index
                %137 = memref.load %alloca[%c0_414] : memref<4xvector<16xf32>>
                %138 = vector.fma %135, %136, %137 : vector<16xf32>
                %c0_415 = arith.constant 0 : index
                memref.store %138, %alloca[%c0_415] : memref<4xvector<16xf32>>
                %c1_416 = arith.constant 1 : index
                %139 = arith.addi %arg8, %c1_416 : index
                %140 = memref.load %alloc_100[%120, %139] : memref<32x256xf32>
                %141 = vector.broadcast %140 : f32 to vector<16xf32>
                %142 = vector.load %alloc_101[%139, %122] : memref<256x64xf32>, vector<16xf32>
                %c0_417 = arith.constant 0 : index
                %143 = memref.load %alloca[%c0_417] : memref<4xvector<16xf32>>
                %144 = vector.fma %141, %142, %143 : vector<16xf32>
                %c0_418 = arith.constant 0 : index
                memref.store %144, %alloca[%c0_418] : memref<4xvector<16xf32>>
                %c2_419 = arith.constant 2 : index
                %145 = arith.addi %arg8, %c2_419 : index
                %146 = memref.load %alloc_100[%120, %145] : memref<32x256xf32>
                %147 = vector.broadcast %146 : f32 to vector<16xf32>
                %148 = vector.load %alloc_101[%145, %122] : memref<256x64xf32>, vector<16xf32>
                %c0_420 = arith.constant 0 : index
                %149 = memref.load %alloca[%c0_420] : memref<4xvector<16xf32>>
                %150 = vector.fma %147, %148, %149 : vector<16xf32>
                %c0_421 = arith.constant 0 : index
                memref.store %150, %alloca[%c0_421] : memref<4xvector<16xf32>>
                %c3_422 = arith.constant 3 : index
                %151 = arith.addi %arg8, %c3_422 : index
                %152 = memref.load %alloc_100[%120, %151] : memref<32x256xf32>
                %153 = vector.broadcast %152 : f32 to vector<16xf32>
                %154 = vector.load %alloc_101[%151, %122] : memref<256x64xf32>, vector<16xf32>
                %c0_423 = arith.constant 0 : index
                %155 = memref.load %alloca[%c0_423] : memref<4xvector<16xf32>>
                %156 = vector.fma %153, %154, %155 : vector<16xf32>
                %c0_424 = arith.constant 0 : index
                memref.store %156, %alloca[%c0_424] : memref<4xvector<16xf32>>
                %157 = arith.addi %120, %c1 : index
                %158 = memref.load %alloc_100[%157, %arg8] : memref<32x256xf32>
                %159 = vector.broadcast %158 : f32 to vector<16xf32>
                %160 = vector.load %alloc_101[%arg8, %122] : memref<256x64xf32>, vector<16xf32>
                %c1_425 = arith.constant 1 : index
                %161 = memref.load %alloca[%c1_425] : memref<4xvector<16xf32>>
                %162 = vector.fma %159, %160, %161 : vector<16xf32>
                %c1_426 = arith.constant 1 : index
                memref.store %162, %alloca[%c1_426] : memref<4xvector<16xf32>>
                %163 = memref.load %alloc_100[%157, %139] : memref<32x256xf32>
                %164 = vector.broadcast %163 : f32 to vector<16xf32>
                %165 = vector.load %alloc_101[%139, %122] : memref<256x64xf32>, vector<16xf32>
                %c1_427 = arith.constant 1 : index
                %166 = memref.load %alloca[%c1_427] : memref<4xvector<16xf32>>
                %167 = vector.fma %164, %165, %166 : vector<16xf32>
                %c1_428 = arith.constant 1 : index
                memref.store %167, %alloca[%c1_428] : memref<4xvector<16xf32>>
                %168 = memref.load %alloc_100[%157, %145] : memref<32x256xf32>
                %169 = vector.broadcast %168 : f32 to vector<16xf32>
                %170 = vector.load %alloc_101[%145, %122] : memref<256x64xf32>, vector<16xf32>
                %c1_429 = arith.constant 1 : index
                %171 = memref.load %alloca[%c1_429] : memref<4xvector<16xf32>>
                %172 = vector.fma %169, %170, %171 : vector<16xf32>
                %c1_430 = arith.constant 1 : index
                memref.store %172, %alloca[%c1_430] : memref<4xvector<16xf32>>
                %173 = memref.load %alloc_100[%157, %151] : memref<32x256xf32>
                %174 = vector.broadcast %173 : f32 to vector<16xf32>
                %175 = vector.load %alloc_101[%151, %122] : memref<256x64xf32>, vector<16xf32>
                %c1_431 = arith.constant 1 : index
                %176 = memref.load %alloca[%c1_431] : memref<4xvector<16xf32>>
                %177 = vector.fma %174, %175, %176 : vector<16xf32>
                %c1_432 = arith.constant 1 : index
                memref.store %177, %alloca[%c1_432] : memref<4xvector<16xf32>>
                %178 = arith.addi %120, %c2 : index
                %179 = memref.load %alloc_100[%178, %arg8] : memref<32x256xf32>
                %180 = vector.broadcast %179 : f32 to vector<16xf32>
                %181 = vector.load %alloc_101[%arg8, %122] : memref<256x64xf32>, vector<16xf32>
                %c2_433 = arith.constant 2 : index
                %182 = memref.load %alloca[%c2_433] : memref<4xvector<16xf32>>
                %183 = vector.fma %180, %181, %182 : vector<16xf32>
                %c2_434 = arith.constant 2 : index
                memref.store %183, %alloca[%c2_434] : memref<4xvector<16xf32>>
                %184 = memref.load %alloc_100[%178, %139] : memref<32x256xf32>
                %185 = vector.broadcast %184 : f32 to vector<16xf32>
                %186 = vector.load %alloc_101[%139, %122] : memref<256x64xf32>, vector<16xf32>
                %c2_435 = arith.constant 2 : index
                %187 = memref.load %alloca[%c2_435] : memref<4xvector<16xf32>>
                %188 = vector.fma %185, %186, %187 : vector<16xf32>
                %c2_436 = arith.constant 2 : index
                memref.store %188, %alloca[%c2_436] : memref<4xvector<16xf32>>
                %189 = memref.load %alloc_100[%178, %145] : memref<32x256xf32>
                %190 = vector.broadcast %189 : f32 to vector<16xf32>
                %191 = vector.load %alloc_101[%145, %122] : memref<256x64xf32>, vector<16xf32>
                %c2_437 = arith.constant 2 : index
                %192 = memref.load %alloca[%c2_437] : memref<4xvector<16xf32>>
                %193 = vector.fma %190, %191, %192 : vector<16xf32>
                %c2_438 = arith.constant 2 : index
                memref.store %193, %alloca[%c2_438] : memref<4xvector<16xf32>>
                %194 = memref.load %alloc_100[%178, %151] : memref<32x256xf32>
                %195 = vector.broadcast %194 : f32 to vector<16xf32>
                %196 = vector.load %alloc_101[%151, %122] : memref<256x64xf32>, vector<16xf32>
                %c2_439 = arith.constant 2 : index
                %197 = memref.load %alloca[%c2_439] : memref<4xvector<16xf32>>
                %198 = vector.fma %195, %196, %197 : vector<16xf32>
                %c2_440 = arith.constant 2 : index
                memref.store %198, %alloca[%c2_440] : memref<4xvector<16xf32>>
                %199 = arith.addi %120, %c3 : index
                %200 = memref.load %alloc_100[%199, %arg8] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_101[%arg8, %122] : memref<256x64xf32>, vector<16xf32>
                %c3_441 = arith.constant 3 : index
                %203 = memref.load %alloca[%c3_441] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                %c3_442 = arith.constant 3 : index
                memref.store %204, %alloca[%c3_442] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_100[%199, %139] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_101[%139, %122] : memref<256x64xf32>, vector<16xf32>
                %c3_443 = arith.constant 3 : index
                %208 = memref.load %alloca[%c3_443] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                %c3_444 = arith.constant 3 : index
                memref.store %209, %alloca[%c3_444] : memref<4xvector<16xf32>>
                %210 = memref.load %alloc_100[%199, %145] : memref<32x256xf32>
                %211 = vector.broadcast %210 : f32 to vector<16xf32>
                %212 = vector.load %alloc_101[%145, %122] : memref<256x64xf32>, vector<16xf32>
                %c3_445 = arith.constant 3 : index
                %213 = memref.load %alloca[%c3_445] : memref<4xvector<16xf32>>
                %214 = vector.fma %211, %212, %213 : vector<16xf32>
                %c3_446 = arith.constant 3 : index
                memref.store %214, %alloca[%c3_446] : memref<4xvector<16xf32>>
                %215 = memref.load %alloc_100[%199, %151] : memref<32x256xf32>
                %216 = vector.broadcast %215 : f32 to vector<16xf32>
                %217 = vector.load %alloc_101[%151, %122] : memref<256x64xf32>, vector<16xf32>
                %c3_447 = arith.constant 3 : index
                %218 = memref.load %alloca[%c3_447] : memref<4xvector<16xf32>>
                %219 = vector.fma %216, %217, %218 : vector<16xf32>
                %c3_448 = arith.constant 3 : index
                memref.store %219, %alloca[%c3_448] : memref<4xvector<16xf32>>
              }
              %c0_410 = arith.constant 0 : index
              %130 = memref.load %alloca[%c0_410] : memref<4xvector<16xf32>>
              vector.store %130, %alloc_96[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %c1_411 = arith.constant 1 : index
              %131 = memref.load %alloca[%c1_411] : memref<4xvector<16xf32>>
              vector.store %131, %alloc_96[%124, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %c2_412 = arith.constant 2 : index
              %132 = memref.load %alloca[%c2_412] : memref<4xvector<16xf32>>
              vector.store %132, %alloc_96[%126, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %c3_413 = arith.constant 3 : index
              %133 = memref.load %alloca[%c3_413] : memref<4xvector<16xf32>>
              vector.store %133, %alloc_96[%128, %arg6] : memref<64x2304xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    %c0_104 = arith.constant 0 : index
    %c64_105 = arith.constant 64 : index
    %c1_106 = arith.constant 1 : index
    scf.for %arg3 = %c0_104 to %c64_105 step %c1_106 {
      %c0_389 = arith.constant 0 : index
      %c2304_390 = arith.constant 2304 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c2304_390 step %c1_391 {
        %117 = memref.load %alloc_96[%arg3, %arg4] : memref<64x2304xf32>
        %118 = memref.load %alloc_8[%arg4] : memref<2304xf32>
        %119 = arith.addf %117, %118 : f32
        memref.store %119, %alloc_96[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %reinterpret_cast_107 = memref.reinterpret_cast %alloc_96 to offset: [0], sizes: [64, 1, 2304], strides: [2304, 2304, 1] : memref<64x2304xf32> to memref<64x1x2304xf32>
    %alloc_108 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_109 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_110 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_111 = arith.constant 0 : index
    %c64_112 = arith.constant 64 : index
    %c1_113 = arith.constant 1 : index
    scf.for %arg3 = %c0_111 to %c64_112 step %c1_113 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %reinterpret_cast_107[%arg3, %arg4, %arg5] : memref<64x1x2304xf32>
          memref.store %117, %alloc_108[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %c0_114 = arith.constant 0 : index
    %c64_115 = arith.constant 64 : index
    %c1_116 = arith.constant 1 : index
    scf.for %arg3 = %c0_114 to %c64_115 step %c1_116 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %c768_395 = arith.constant 768 : index
          %117 = arith.addi %arg5, %c768_395 : index
          %118 = memref.load %reinterpret_cast_107[%arg3, %arg4, %117] : memref<64x1x2304xf32>
          memref.store %118, %alloc_109[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %c0_117 = arith.constant 0 : index
    %c64_118 = arith.constant 64 : index
    %c1_119 = arith.constant 1 : index
    scf.for %arg3 = %c0_117 to %c64_118 step %c1_119 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %c1536 = arith.constant 1536 : index
          %117 = arith.addi %arg5, %c1536 : index
          %118 = memref.load %reinterpret_cast_107[%arg3, %arg4, %117] : memref<64x1x2304xf32>
          memref.store %118, %alloc_110[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_120 = memref.reinterpret_cast %alloc_108 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_121 = memref.reinterpret_cast %alloc_109 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_122 = memref.reinterpret_cast %alloc_110 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %40 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref0", 0 : i32]], alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
    %41 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %41 : !llvm.ptr<i64>
    %42 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %42 : !llvm.ptr<i64>
    %43 = rmem.rdma %c0, %arg1[%c0] %c195840 4 %c0 {map = #map, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %44 = rmem.slot %c0 {mem = "t0"} : (index) -> memref<1x196608xf32>
    %c0_123 = arith.constant 0 : index
    %c64_124 = arith.constant 64 : index
    %c1_125 = arith.constant 1 : index
    %45:5 = scf.for %arg3 = %c0_123 to %c64_124 step %c1_125 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %43, %arg7 = %44, %arg8 = %c0) -> (index, index, memref<1x195840xf32>, memref<1x196608xf32>, index) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = arith.addi %arg3, %c1 : index
      %120 = rmem.rdma %arg4, %arg1[%119] %c195840 4 %c0 {map = #map, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
      %121 = rmem.slot %arg4 {mem = "t0"} : (index) -> memref<1x196608xf32>
      rmem.sync %41 -> %arg8 : <i64>, index
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg9 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c12 = arith.constant 12 : index
        %c1_393 = arith.constant 1 : index
        scf.for %arg10 = %c0_392 to %c12 step %c1_393 {
          %c0_394 = arith.constant 0 : index
          %c255 = arith.constant 255 : index
          %c1_395 = arith.constant 1 : index
          scf.for %arg11 = %c0_394 to %c255 step %c1_395 {
            %c0_396 = arith.constant 0 : index
            %c64_397 = arith.constant 64 : index
            %c1_398 = arith.constant 1 : index
            scf.for %arg12 = %c0_396 to %c64_397 step %c1_398 {
              %c16320 = arith.constant 16320 : index
              %124 = arith.muli %arg10, %c16320 : index
              %c64_399 = arith.constant 64 : index
              %125 = arith.muli %arg11, %c64_399 : index
              %126 = arith.addi %124, %125 : index
              %127 = arith.addi %126, %arg12 : index
              %128 = memref.load %arg6[%arg9, %127] : memref<1x195840xf32>
              %c16384 = arith.constant 16384 : index
              %129 = arith.muli %arg10, %c16384 : index
              %c64_400 = arith.constant 64 : index
              %130 = arith.muli %arg11, %c64_400 : index
              %131 = arith.addi %129, %130 : index
              %132 = arith.addi %131, %arg12 : index
              memref.store %128, %arg7[%arg9, %132] : memref<1x196608xf32>
            }
          }
        }
      }
      %122 = rmem.wrid : index
      %123 = rmem.rdma %arg5, %40[%arg3] %c196608 0 %122 {map = #map1, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %42 -> %122 : <i64>, index
      scf.yield %117, %118, %120, %121, %c0 : index, index, memref<1x195840xf32>, memref<1x196608xf32>, index
    }
    %46 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %46 : !llvm.ptr<i64>
    %47 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %47 : !llvm.ptr<i64>
    %48 = rmem.slot %c0 {mem = "t0"} : (index) -> memref<1x196608xf32>
    %c0_126 = arith.constant 0 : index
    %c64_127 = arith.constant 64 : index
    %c1_128 = arith.constant 1 : index
    %49:3 = scf.for %arg3 = %c0_126 to %c64_127 step %c1_128 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %48) -> (index, index, memref<1x196608xf32>) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = rmem.slot %arg4 {mem = "t0"} : (index) -> memref<1x196608xf32>
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg7 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c12 = arith.constant 12 : index
        %c1_393 = arith.constant 1 : index
        scf.for %arg8 = %c0_392 to %c12 step %c1_393 {
          %c0_394 = arith.constant 0 : index
          %c1_395 = arith.constant 1 : index
          %c1_396 = arith.constant 1 : index
          scf.for %arg9 = %c0_394 to %c1_395 step %c1_396 {
            %c0_397 = arith.constant 0 : index
            %c64_398 = arith.constant 64 : index
            %c1_399 = arith.constant 1 : index
            scf.for %arg10 = %c0_397 to %c64_398 step %c1_399 {
              %122 = arith.addi %arg3, %arg7 : index
              %123 = memref.load %reinterpret_cast_121[%122, %arg8, %arg9, %arg10] : memref<64x12x1x64xf32>
              %c16384 = arith.constant 16384 : index
              %124 = arith.muli %arg8, %c16384 : index
              %c64_400 = arith.constant 64 : index
              %125 = arith.muli %arg9, %c64_400 : index
              %126 = arith.addi %124, %125 : index
              %127 = arith.addi %126, %arg10 : index
              memref.store %123, %arg6[%arg7, %127] : memref<1x196608xf32>
            }
          }
        }
      }
      %120 = rmem.wrid : index
      %121 = rmem.rdma %arg5, %40[%arg3] %c196608 0 %120 {map = #map2, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %47 -> %120 : <i64>, index
      scf.yield %117, %118, %119 : index, index, memref<1x196608xf32>
    }
    %50 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref1", 0 : i32]], alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
    %51 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %51 : !llvm.ptr<i64>
    %52 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %52 : !llvm.ptr<i64>
    %53 = rmem.rdma %c0, %arg2[%c0] %c195840 4 %c0 {map = #map, mem = "t5"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %54 = rmem.slot %c0 {mem = "t1"} : (index) -> memref<1x196608xf32>
    %c0_129 = arith.constant 0 : index
    %c64_130 = arith.constant 64 : index
    %c1_131 = arith.constant 1 : index
    %55:5 = scf.for %arg3 = %c0_129 to %c64_130 step %c1_131 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %53, %arg7 = %54, %arg8 = %c0) -> (index, index, memref<1x195840xf32>, memref<1x196608xf32>, index) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = arith.addi %arg3, %c1 : index
      %120 = rmem.rdma %arg4, %arg2[%119] %c195840 4 %c0 {map = #map, mem = "t5"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
      %121 = rmem.slot %arg4 {mem = "t1"} : (index) -> memref<1x196608xf32>
      rmem.sync %51 -> %arg8 : <i64>, index
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg9 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c12 = arith.constant 12 : index
        %c1_393 = arith.constant 1 : index
        scf.for %arg10 = %c0_392 to %c12 step %c1_393 {
          %c0_394 = arith.constant 0 : index
          %c255 = arith.constant 255 : index
          %c1_395 = arith.constant 1 : index
          scf.for %arg11 = %c0_394 to %c255 step %c1_395 {
            %c0_396 = arith.constant 0 : index
            %c64_397 = arith.constant 64 : index
            %c1_398 = arith.constant 1 : index
            scf.for %arg12 = %c0_396 to %c64_397 step %c1_398 {
              %c16320 = arith.constant 16320 : index
              %124 = arith.muli %arg10, %c16320 : index
              %c64_399 = arith.constant 64 : index
              %125 = arith.muli %arg11, %c64_399 : index
              %126 = arith.addi %124, %125 : index
              %127 = arith.addi %126, %arg12 : index
              %128 = memref.load %arg6[%arg9, %127] : memref<1x195840xf32>
              %c16384 = arith.constant 16384 : index
              %129 = arith.muli %arg10, %c16384 : index
              %c64_400 = arith.constant 64 : index
              %130 = arith.muli %arg11, %c64_400 : index
              %131 = arith.addi %129, %130 : index
              %132 = arith.addi %131, %arg12 : index
              memref.store %128, %arg7[%arg9, %132] : memref<1x196608xf32>
            }
          }
        }
      }
      %122 = rmem.wrid : index
      %123 = rmem.rdma %arg5, %50[%arg3] %c196608 0 %122 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %52 -> %122 : <i64>, index
      scf.yield %117, %118, %120, %121, %c0 : index, index, memref<1x195840xf32>, memref<1x196608xf32>, index
    }
    %56 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %56 : !llvm.ptr<i64>
    %57 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %57 : !llvm.ptr<i64>
    %58 = rmem.slot %c0 {mem = "t1"} : (index) -> memref<1x196608xf32>
    %c0_132 = arith.constant 0 : index
    %c64_133 = arith.constant 64 : index
    %c1_134 = arith.constant 1 : index
    %59:3 = scf.for %arg3 = %c0_132 to %c64_133 step %c1_134 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %58) -> (index, index, memref<1x196608xf32>) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = rmem.slot %arg4 {mem = "t1"} : (index) -> memref<1x196608xf32>
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg7 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c12 = arith.constant 12 : index
        %c1_393 = arith.constant 1 : index
        scf.for %arg8 = %c0_392 to %c12 step %c1_393 {
          %c0_394 = arith.constant 0 : index
          %c1_395 = arith.constant 1 : index
          %c1_396 = arith.constant 1 : index
          scf.for %arg9 = %c0_394 to %c1_395 step %c1_396 {
            %c0_397 = arith.constant 0 : index
            %c64_398 = arith.constant 64 : index
            %c1_399 = arith.constant 1 : index
            scf.for %arg10 = %c0_397 to %c64_398 step %c1_399 {
              %122 = arith.addi %arg3, %arg7 : index
              %123 = memref.load %reinterpret_cast_122[%122, %arg8, %arg9, %arg10] : memref<64x12x1x64xf32>
              %c16384 = arith.constant 16384 : index
              %124 = arith.muli %arg8, %c16384 : index
              %c64_400 = arith.constant 64 : index
              %125 = arith.muli %arg9, %c64_400 : index
              %126 = arith.addi %124, %125 : index
              %127 = arith.addi %126, %arg10 : index
              memref.store %123, %arg6[%arg7, %127] : memref<1x196608xf32>
            }
          }
        }
      }
      %120 = rmem.wrid : index
      %121 = rmem.rdma %arg5, %50[%arg3] %c196608 0 %120 {map = #map2, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %57 -> %120 : <i64>, index
      scf.yield %117, %118, %119 : index, index, memref<1x196608xf32>
    }
    %60 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref2", 0 : i32]], alignment = 16 : i64} : <1, memref<64x12x64x256xf32>>
    %61 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %61 : !llvm.ptr<i64>
    %62 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %62 : !llvm.ptr<i64>
    %63 = rmem.slot %c0 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %64 = rmem.wrid : index
    %65 = rmem.rdma %c0, %40[%c0] %c196608 4 %64 {map = #map1, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %c0_135 = arith.constant 0 : index
    %c64_136 = arith.constant 64 : index
    %c1_137 = arith.constant 1 : index
    %66:5 = scf.for %arg3 = %c0_135 to %c64_136 step %c1_137 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %63, %arg7 = %65, %arg8 = %64) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, index) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = arith.addi %arg3, %c1 : index
      %120 = rmem.slot %arg4 {mem = "t2"} : (index) -> memref<1x196608xf32>
      %121 = rmem.wrid : index
      %122 = rmem.rdma %arg4, %40[%119] %c196608 4 %121 {map = #map1, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %61 -> %arg8 : <i64>, index
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg9 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c12 = arith.constant 12 : index
        %c1_393 = arith.constant 1 : index
        scf.for %arg10 = %c0_392 to %c12 step %c1_393 {
          %c0_394 = arith.constant 0 : index
          %c256 = arith.constant 256 : index
          %c1_395 = arith.constant 1 : index
          scf.for %arg11 = %c0_394 to %c256 step %c1_395 {
            %c0_396 = arith.constant 0 : index
            %c64_397 = arith.constant 64 : index
            %c1_398 = arith.constant 1 : index
            scf.for %arg12 = %c0_396 to %c64_397 step %c1_398 {
              %c16384 = arith.constant 16384 : index
              %124 = arith.muli %arg10, %c16384 : index
              %c64_399 = arith.constant 64 : index
              %125 = arith.muli %arg11, %c64_399 : index
              %126 = arith.addi %124, %125 : index
              %127 = arith.addi %126, %arg12 : index
              %128 = memref.load %arg7[%arg9, %127] : memref<1x196608xf32>
              %c16384_400 = arith.constant 16384 : index
              %129 = arith.muli %arg10, %c16384_400 : index
              %130 = arith.addi %129, %arg11 : index
              %c256_401 = arith.constant 256 : index
              %131 = arith.muli %arg12, %c256_401 : index
              %132 = arith.addi %130, %131 : index
              memref.store %128, %arg6[%arg9, %132] : memref<1x196608xf32>
            }
          }
        }
      }
      %123 = rmem.rdma %arg5, %60[%arg3] %c196608 0 %c0 {map = #map1, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %62 -> %c0 : <i64>, index
      scf.yield %117, %118, %120, %122, %121 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, index
    }
    %alloc_138 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    %c0_139 = arith.constant 0 : index
    %c64_140 = arith.constant 64 : index
    %c1_141 = arith.constant 1 : index
    scf.for %arg3 = %c0_139 to %c64_140 step %c1_141 {
      %c0_389 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_390 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c12 step %c1_390 {
        %c0_391 = arith.constant 0 : index
        %c1_392 = arith.constant 1 : index
        %c1_393 = arith.constant 1 : index
        scf.for %arg5 = %c0_391 to %c1_392 step %c1_393 {
          %c0_394 = arith.constant 0 : index
          %c256 = arith.constant 256 : index
          %c1_395 = arith.constant 1 : index
          scf.for %arg6 = %c0_394 to %c256 step %c1_395 {
            memref.store %cst_1, %alloc_138[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %67 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %67 : !llvm.ptr<i64>
    %68 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %68 : !llvm.ptr<i64>
    %69 = rmem.wrid : index
    %70 = rmem.rdma %c0, %60[%c0] %c196608 4 %69 {map = #map1, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
    %c0_142 = arith.constant 0 : index
    %c64_143 = arith.constant 64 : index
    %c1_144 = arith.constant 1 : index
    %alloca_145 = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
    %71:4 = scf.for %arg3 = %c0_142 to %c64_143 step %c1_144 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %70, %arg7 = %69) -> (index, index, memref<1x196608xf32>, index) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = arith.addi %arg3, %c1 : index
      %120 = rmem.wrid : index
      %121 = rmem.rdma %arg4, %60[%119] %c196608 4 %120 {map = #map1, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %67 -> %arg7 : <i64>, index
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg8 = %c0_389 to %c1_390 step %c1_391 {
        %122 = arith.addi %arg3, %arg8 : index
        %c0_392 = arith.constant 0 : index
        %c12 = arith.constant 12 : index
        %c1_393 = arith.constant 1 : index
        scf.for %arg9 = %c0_392 to %c12 step %c1_393 {
          %c0_394 = arith.constant 0 : index
          %c1_395 = arith.constant 1 : index
          %c1_396 = arith.constant 1 : index
          scf.for %arg10 = %c0_394 to %c1_395 step %c1_396 {
            %c0_397 = arith.constant 0 : index
            %c256 = arith.constant 256 : index
            %c8 = arith.constant 8 : index
            scf.for %arg11 = %c0_397 to %c256 step %c8 {
              %c0_398 = arith.constant 0 : index
              %c64_399 = arith.constant 64 : index
              %c8_400 = arith.constant 8 : index
              scf.for %arg12 = %c0_398 to %c64_399 step %c8_400 {
                %c0_401 = arith.constant 0 : index
                %c1_402 = arith.constant 1 : index
                %c1_403 = arith.constant 1 : index
                scf.for %arg13 = %c0_401 to %c1_402 step %c1_403 {
                  %123 = arith.addi %arg13, %arg10 : index
                  %124 = vector.load %alloc_138[%122, %arg9, %123, %arg11] : memref<64x12x1x256xf32>, vector<8xf32>
                  %c0_404 = arith.constant 0 : index
                  memref.store %124, %alloca_145[%c0_404] : memref<1xvector<8xf32>>
                  %125 = memref.load %reinterpret_cast_120[%122, %arg9, %123, %arg12] : memref<64x12x1x64xf32>
                  %126 = vector.broadcast %125 : f32 to vector<8xf32>
                  %c16384 = arith.constant 16384 : index
                  %127 = arith.muli %arg9, %c16384 : index
                  %128 = arith.addi %127, %arg11 : index
                  %c256_405 = arith.constant 256 : index
                  %129 = arith.muli %arg12, %c256_405 : index
                  %130 = arith.addi %128, %129 : index
                  %131 = vector.load %arg6[%arg8, %130] : memref<1x196608xf32>, vector<8xf32>
                  %c0_406 = arith.constant 0 : index
                  %132 = memref.load %alloca_145[%c0_406] : memref<1xvector<8xf32>>
                  %133 = vector.fma %126, %131, %132 : vector<8xf32>
                  %c0_407 = arith.constant 0 : index
                  memref.store %133, %alloca_145[%c0_407] : memref<1xvector<8xf32>>
                  %134 = arith.addi %arg12, %c1 : index
                  %135 = memref.load %reinterpret_cast_120[%122, %arg9, %123, %134] : memref<64x12x1x64xf32>
                  %136 = vector.broadcast %135 : f32 to vector<8xf32>
                  %c16384_408 = arith.constant 16384 : index
                  %137 = arith.muli %arg9, %c16384_408 : index
                  %138 = arith.addi %137, %arg11 : index
                  %c256_409 = arith.constant 256 : index
                  %139 = arith.muli %arg12, %c256_409 : index
                  %140 = arith.addi %138, %139 : index
                  %c256_410 = arith.constant 256 : index
                  %141 = arith.addi %140, %c256_410 : index
                  %142 = vector.load %arg6[%arg8, %141] : memref<1x196608xf32>, vector<8xf32>
                  %c0_411 = arith.constant 0 : index
                  %143 = memref.load %alloca_145[%c0_411] : memref<1xvector<8xf32>>
                  %144 = vector.fma %136, %142, %143 : vector<8xf32>
                  %c0_412 = arith.constant 0 : index
                  memref.store %144, %alloca_145[%c0_412] : memref<1xvector<8xf32>>
                  %145 = arith.addi %arg12, %c2 : index
                  %146 = memref.load %reinterpret_cast_120[%122, %arg9, %123, %145] : memref<64x12x1x64xf32>
                  %147 = vector.broadcast %146 : f32 to vector<8xf32>
                  %c16384_413 = arith.constant 16384 : index
                  %148 = arith.muli %arg9, %c16384_413 : index
                  %149 = arith.addi %148, %arg11 : index
                  %c256_414 = arith.constant 256 : index
                  %150 = arith.muli %arg12, %c256_414 : index
                  %151 = arith.addi %149, %150 : index
                  %c512 = arith.constant 512 : index
                  %152 = arith.addi %151, %c512 : index
                  %153 = vector.load %arg6[%arg8, %152] : memref<1x196608xf32>, vector<8xf32>
                  %c0_415 = arith.constant 0 : index
                  %154 = memref.load %alloca_145[%c0_415] : memref<1xvector<8xf32>>
                  %155 = vector.fma %147, %153, %154 : vector<8xf32>
                  %c0_416 = arith.constant 0 : index
                  memref.store %155, %alloca_145[%c0_416] : memref<1xvector<8xf32>>
                  %156 = arith.addi %arg12, %c3 : index
                  %157 = memref.load %reinterpret_cast_120[%122, %arg9, %123, %156] : memref<64x12x1x64xf32>
                  %158 = vector.broadcast %157 : f32 to vector<8xf32>
                  %c16384_417 = arith.constant 16384 : index
                  %159 = arith.muli %arg9, %c16384_417 : index
                  %160 = arith.addi %159, %arg11 : index
                  %c256_418 = arith.constant 256 : index
                  %161 = arith.muli %arg12, %c256_418 : index
                  %162 = arith.addi %160, %161 : index
                  %c768_419 = arith.constant 768 : index
                  %163 = arith.addi %162, %c768_419 : index
                  %164 = vector.load %arg6[%arg8, %163] : memref<1x196608xf32>, vector<8xf32>
                  %c0_420 = arith.constant 0 : index
                  %165 = memref.load %alloca_145[%c0_420] : memref<1xvector<8xf32>>
                  %166 = vector.fma %158, %164, %165 : vector<8xf32>
                  %c0_421 = arith.constant 0 : index
                  memref.store %166, %alloca_145[%c0_421] : memref<1xvector<8xf32>>
                  %167 = arith.addi %arg12, %c4 : index
                  %168 = memref.load %reinterpret_cast_120[%122, %arg9, %123, %167] : memref<64x12x1x64xf32>
                  %169 = vector.broadcast %168 : f32 to vector<8xf32>
                  %c16384_422 = arith.constant 16384 : index
                  %170 = arith.muli %arg9, %c16384_422 : index
                  %171 = arith.addi %170, %arg11 : index
                  %c256_423 = arith.constant 256 : index
                  %172 = arith.muli %arg12, %c256_423 : index
                  %173 = arith.addi %171, %172 : index
                  %c1024 = arith.constant 1024 : index
                  %174 = arith.addi %173, %c1024 : index
                  %175 = vector.load %arg6[%arg8, %174] : memref<1x196608xf32>, vector<8xf32>
                  %c0_424 = arith.constant 0 : index
                  %176 = memref.load %alloca_145[%c0_424] : memref<1xvector<8xf32>>
                  %177 = vector.fma %169, %175, %176 : vector<8xf32>
                  %c0_425 = arith.constant 0 : index
                  memref.store %177, %alloca_145[%c0_425] : memref<1xvector<8xf32>>
                  %178 = arith.addi %arg12, %c5 : index
                  %179 = memref.load %reinterpret_cast_120[%122, %arg9, %123, %178] : memref<64x12x1x64xf32>
                  %180 = vector.broadcast %179 : f32 to vector<8xf32>
                  %c16384_426 = arith.constant 16384 : index
                  %181 = arith.muli %arg9, %c16384_426 : index
                  %182 = arith.addi %181, %arg11 : index
                  %c256_427 = arith.constant 256 : index
                  %183 = arith.muli %arg12, %c256_427 : index
                  %184 = arith.addi %182, %183 : index
                  %c1280 = arith.constant 1280 : index
                  %185 = arith.addi %184, %c1280 : index
                  %186 = vector.load %arg6[%arg8, %185] : memref<1x196608xf32>, vector<8xf32>
                  %c0_428 = arith.constant 0 : index
                  %187 = memref.load %alloca_145[%c0_428] : memref<1xvector<8xf32>>
                  %188 = vector.fma %180, %186, %187 : vector<8xf32>
                  %c0_429 = arith.constant 0 : index
                  memref.store %188, %alloca_145[%c0_429] : memref<1xvector<8xf32>>
                  %189 = arith.addi %arg12, %c6 : index
                  %190 = memref.load %reinterpret_cast_120[%122, %arg9, %123, %189] : memref<64x12x1x64xf32>
                  %191 = vector.broadcast %190 : f32 to vector<8xf32>
                  %c16384_430 = arith.constant 16384 : index
                  %192 = arith.muli %arg9, %c16384_430 : index
                  %193 = arith.addi %192, %arg11 : index
                  %c256_431 = arith.constant 256 : index
                  %194 = arith.muli %arg12, %c256_431 : index
                  %195 = arith.addi %193, %194 : index
                  %c1536 = arith.constant 1536 : index
                  %196 = arith.addi %195, %c1536 : index
                  %197 = vector.load %arg6[%arg8, %196] : memref<1x196608xf32>, vector<8xf32>
                  %c0_432 = arith.constant 0 : index
                  %198 = memref.load %alloca_145[%c0_432] : memref<1xvector<8xf32>>
                  %199 = vector.fma %191, %197, %198 : vector<8xf32>
                  %c0_433 = arith.constant 0 : index
                  memref.store %199, %alloca_145[%c0_433] : memref<1xvector<8xf32>>
                  %200 = arith.addi %arg12, %c7 : index
                  %201 = memref.load %reinterpret_cast_120[%122, %arg9, %123, %200] : memref<64x12x1x64xf32>
                  %202 = vector.broadcast %201 : f32 to vector<8xf32>
                  %c16384_434 = arith.constant 16384 : index
                  %203 = arith.muli %arg9, %c16384_434 : index
                  %204 = arith.addi %203, %arg11 : index
                  %c256_435 = arith.constant 256 : index
                  %205 = arith.muli %arg12, %c256_435 : index
                  %206 = arith.addi %204, %205 : index
                  %c1792 = arith.constant 1792 : index
                  %207 = arith.addi %206, %c1792 : index
                  %208 = vector.load %arg6[%arg8, %207] : memref<1x196608xf32>, vector<8xf32>
                  %c0_436 = arith.constant 0 : index
                  %209 = memref.load %alloca_145[%c0_436] : memref<1xvector<8xf32>>
                  %210 = vector.fma %202, %208, %209 : vector<8xf32>
                  %c0_437 = arith.constant 0 : index
                  memref.store %210, %alloca_145[%c0_437] : memref<1xvector<8xf32>>
                  %c0_438 = arith.constant 0 : index
                  %211 = memref.load %alloca_145[%c0_438] : memref<1xvector<8xf32>>
                  vector.store %211, %alloc_138[%122, %arg9, %123, %arg11] : memref<64x12x1x256xf32>, vector<8xf32>
                }
              }
            }
          }
        }
      }
      scf.yield %117, %118, %121, %120 : index, index, memref<1x196608xf32>, index
    }
    %alloc_146 = memref.alloc() : memref<f32>
    %cast_147 = memref.cast %alloc_146 : memref<f32> to memref<*xf32>
    %72 = llvm.mlir.addressof @constant_27 : !llvm.ptr<array<12 x i8>>
    %73 = llvm.getelementptr %72[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%73, %cast_147) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_148 = memref.alloc() : memref<f32>
    %cast_149 = memref.cast %alloc_148 : memref<f32> to memref<*xf32>
    %74 = llvm.mlir.addressof @constant_28 : !llvm.ptr<array<12 x i8>>
    %75 = llvm.getelementptr %74[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%75, %cast_149) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_150 = memref.alloc() : memref<f32>
    %76 = memref.load %alloc_146[] : memref<f32>
    %77 = memref.load %alloc_148[] : memref<f32>
    %78 = math.powf %76, %77 : f32
    memref.store %78, %alloc_150[] : memref<f32>
    %alloc_151 = memref.alloc() : memref<f32>
    memref.store %cst_1, %alloc_151[] : memref<f32>
    %alloc_152 = memref.alloc() : memref<f32>
    %79 = memref.load %alloc_151[] : memref<f32>
    %80 = memref.load %alloc_150[] : memref<f32>
    %81 = arith.addf %79, %80 : f32
    memref.store %81, %alloc_152[] : memref<f32>
    %alloc_153 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    %c0_154 = arith.constant 0 : index
    %c64_155 = arith.constant 64 : index
    %c1_156 = arith.constant 1 : index
    scf.for %arg3 = %c0_154 to %c64_155 step %c1_156 {
      %c0_389 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_390 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c12 step %c1_390 {
        %c0_391 = arith.constant 0 : index
        %c1_392 = arith.constant 1 : index
        %c1_393 = arith.constant 1 : index
        scf.for %arg5 = %c0_391 to %c1_392 step %c1_393 {
          %c0_394 = arith.constant 0 : index
          %c256 = arith.constant 256 : index
          %c1_395 = arith.constant 1 : index
          scf.for %arg6 = %c0_394 to %c256 step %c1_395 {
            %117 = memref.load %alloc_138[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %118 = memref.load %alloc_152[] : memref<f32>
            %119 = arith.divf %117, %118 : f32
            memref.store %119, %alloc_153[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_157 = memref.alloc() : memref<f32>
    %cast_158 = memref.cast %alloc_157 : memref<f32> to memref<*xf32>
    %82 = llvm.mlir.addressof @constant_30 : !llvm.ptr<array<12 x i8>>
    %83 = llvm.getelementptr %82[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%83, %cast_158) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_159 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    %c0_160 = arith.constant 0 : index
    %c64_161 = arith.constant 64 : index
    %c1_162 = arith.constant 1 : index
    scf.for %arg3 = %c0_160 to %c64_161 step %c1_162 {
      %c0_389 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_390 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c12 step %c1_390 {
        %c0_391 = arith.constant 0 : index
        %c1_392 = arith.constant 1 : index
        %c1_393 = arith.constant 1 : index
        scf.for %arg5 = %c0_391 to %c1_392 step %c1_393 {
          %c0_394 = arith.constant 0 : index
          %c256 = arith.constant 256 : index
          %c1_395 = arith.constant 1 : index
          scf.for %arg6 = %c0_394 to %c256 step %c1_395 {
            %c0_396 = arith.constant 0 : index
            %c0_397 = arith.constant 0 : index
            %117 = memref.load %alloc_30[%c0_396, %c0_397, %arg5, %arg6] : memref<1x1x1x256xi1>
            %118 = memref.load %alloc_153[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %119 = memref.load %alloc_157[] : memref<f32>
            %120 = arith.select %117, %118, %119 : f32
            memref.store %120, %alloc_159[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_163 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    %alloc_164 = memref.alloc() : memref<f32>
    %alloc_165 = memref.alloc() : memref<f32>
    %c0_166 = arith.constant 0 : index
    %c64_167 = arith.constant 64 : index
    %c1_168 = arith.constant 1 : index
    scf.for %arg3 = %c0_166 to %c64_167 step %c1_168 {
      %c0_389 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_390 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c12 step %c1_390 {
        %c0_391 = arith.constant 0 : index
        %c1_392 = arith.constant 1 : index
        %c1_393 = arith.constant 1 : index
        scf.for %arg5 = %c0_391 to %c1_392 step %c1_393 {
          memref.store %cst_1, %alloc_164[] : memref<f32>
          memref.store %cst_0, %alloc_165[] : memref<f32>
          %c0_394 = arith.constant 0 : index
          %c256 = arith.constant 256 : index
          %c1_395 = arith.constant 1 : index
          scf.for %arg6 = %c0_394 to %c256 step %c1_395 {
            %119 = memref.load %alloc_165[] : memref<f32>
            %120 = memref.load %alloc_159[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %121 = arith.cmpf ogt, %119, %120 : f32
            %122 = arith.select %121, %119, %120 : f32
            memref.store %122, %alloc_165[] : memref<f32>
          }
          %117 = memref.load %alloc_165[] : memref<f32>
          %c0_396 = arith.constant 0 : index
          %c256_397 = arith.constant 256 : index
          %c1_398 = arith.constant 1 : index
          scf.for %arg6 = %c0_396 to %c256_397 step %c1_398 {
            %119 = memref.load %alloc_164[] : memref<f32>
            %120 = memref.load %alloc_159[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %121 = arith.subf %120, %117 : f32
            %122 = math.exp %121 : f32
            %123 = arith.addf %119, %122 : f32
            memref.store %123, %alloc_164[] : memref<f32>
            memref.store %122, %alloc_163[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
          %118 = memref.load %alloc_164[] : memref<f32>
          %c0_399 = arith.constant 0 : index
          %c256_400 = arith.constant 256 : index
          %c1_401 = arith.constant 1 : index
          scf.for %arg6 = %c0_399 to %c256_400 step %c1_401 {
            %119 = memref.load %alloc_163[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %120 = arith.divf %119, %118 : f32
            memref.store %120, %alloc_163[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_169 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x64xf32>
    %c0_170 = arith.constant 0 : index
    %c64_171 = arith.constant 64 : index
    %c1_172 = arith.constant 1 : index
    scf.for %arg3 = %c0_170 to %c64_171 step %c1_172 {
      %c0_389 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_390 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c12 step %c1_390 {
        %c0_391 = arith.constant 0 : index
        %c1_392 = arith.constant 1 : index
        %c1_393 = arith.constant 1 : index
        scf.for %arg5 = %c0_391 to %c1_392 step %c1_393 {
          %c0_394 = arith.constant 0 : index
          %c64_395 = arith.constant 64 : index
          %c1_396 = arith.constant 1 : index
          scf.for %arg6 = %c0_394 to %c64_395 step %c1_396 {
            memref.store %cst_1, %alloc_169[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
          }
        }
      }
    }
    %84 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %84 : !llvm.ptr<i64>
    %85 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %85 : !llvm.ptr<i64>
    %86 = rmem.wrid : index
    %87 = rmem.rdma %c0, %50[%c0] %c196608 4 %86 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %c0_173 = arith.constant 0 : index
    %c64_174 = arith.constant 64 : index
    %c1_175 = arith.constant 1 : index
    %alloca_176 = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
    %88:4 = scf.for %arg3 = %c0_173 to %c64_174 step %c1_175 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %87, %arg7 = %86) -> (index, index, memref<1x196608xf32>, index) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = arith.addi %arg3, %c1 : index
      %120 = rmem.wrid : index
      %121 = rmem.rdma %arg4, %50[%119] %c196608 4 %120 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %84 -> %arg7 : <i64>, index
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg8 = %c0_389 to %c1_390 step %c1_391 {
        %122 = arith.addi %arg3, %arg8 : index
        %c0_392 = arith.constant 0 : index
        %c12 = arith.constant 12 : index
        %c1_393 = arith.constant 1 : index
        scf.for %arg9 = %c0_392 to %c12 step %c1_393 {
          %c0_394 = arith.constant 0 : index
          %c1_395 = arith.constant 1 : index
          %c1_396 = arith.constant 1 : index
          scf.for %arg10 = %c0_394 to %c1_395 step %c1_396 {
            %c0_397 = arith.constant 0 : index
            %c64_398 = arith.constant 64 : index
            %c8 = arith.constant 8 : index
            scf.for %arg11 = %c0_397 to %c64_398 step %c8 {
              %c0_399 = arith.constant 0 : index
              %c256 = arith.constant 256 : index
              %c8_400 = arith.constant 8 : index
              scf.for %arg12 = %c0_399 to %c256 step %c8_400 {
                %c0_401 = arith.constant 0 : index
                %c1_402 = arith.constant 1 : index
                %c1_403 = arith.constant 1 : index
                scf.for %arg13 = %c0_401 to %c1_402 step %c1_403 {
                  %123 = arith.addi %arg13, %arg10 : index
                  %124 = vector.load %alloc_169[%122, %arg9, %123, %arg11] : memref<64x12x1x64xf32>, vector<8xf32>
                  %c0_404 = arith.constant 0 : index
                  memref.store %124, %alloca_176[%c0_404] : memref<1xvector<8xf32>>
                  %125 = memref.load %alloc_163[%122, %arg9, %123, %arg12] : memref<64x12x1x256xf32>
                  %126 = vector.broadcast %125 : f32 to vector<8xf32>
                  %c16384 = arith.constant 16384 : index
                  %127 = arith.muli %arg9, %c16384 : index
                  %128 = arith.addi %127, %arg11 : index
                  %c64_405 = arith.constant 64 : index
                  %129 = arith.muli %arg12, %c64_405 : index
                  %130 = arith.addi %128, %129 : index
                  %131 = vector.load %arg6[%arg8, %130] : memref<1x196608xf32>, vector<8xf32>
                  %c0_406 = arith.constant 0 : index
                  %132 = memref.load %alloca_176[%c0_406] : memref<1xvector<8xf32>>
                  %133 = vector.fma %126, %131, %132 : vector<8xf32>
                  %c0_407 = arith.constant 0 : index
                  memref.store %133, %alloca_176[%c0_407] : memref<1xvector<8xf32>>
                  %134 = arith.addi %arg12, %c1 : index
                  %135 = memref.load %alloc_163[%122, %arg9, %123, %134] : memref<64x12x1x256xf32>
                  %136 = vector.broadcast %135 : f32 to vector<8xf32>
                  %c16384_408 = arith.constant 16384 : index
                  %137 = arith.muli %arg9, %c16384_408 : index
                  %138 = arith.addi %137, %arg11 : index
                  %c64_409 = arith.constant 64 : index
                  %139 = arith.muli %arg12, %c64_409 : index
                  %140 = arith.addi %138, %139 : index
                  %c64_410 = arith.constant 64 : index
                  %141 = arith.addi %140, %c64_410 : index
                  %142 = vector.load %arg6[%arg8, %141] : memref<1x196608xf32>, vector<8xf32>
                  %c0_411 = arith.constant 0 : index
                  %143 = memref.load %alloca_176[%c0_411] : memref<1xvector<8xf32>>
                  %144 = vector.fma %136, %142, %143 : vector<8xf32>
                  %c0_412 = arith.constant 0 : index
                  memref.store %144, %alloca_176[%c0_412] : memref<1xvector<8xf32>>
                  %145 = arith.addi %arg12, %c2 : index
                  %146 = memref.load %alloc_163[%122, %arg9, %123, %145] : memref<64x12x1x256xf32>
                  %147 = vector.broadcast %146 : f32 to vector<8xf32>
                  %c16384_413 = arith.constant 16384 : index
                  %148 = arith.muli %arg9, %c16384_413 : index
                  %149 = arith.addi %148, %arg11 : index
                  %c64_414 = arith.constant 64 : index
                  %150 = arith.muli %arg12, %c64_414 : index
                  %151 = arith.addi %149, %150 : index
                  %c128 = arith.constant 128 : index
                  %152 = arith.addi %151, %c128 : index
                  %153 = vector.load %arg6[%arg8, %152] : memref<1x196608xf32>, vector<8xf32>
                  %c0_415 = arith.constant 0 : index
                  %154 = memref.load %alloca_176[%c0_415] : memref<1xvector<8xf32>>
                  %155 = vector.fma %147, %153, %154 : vector<8xf32>
                  %c0_416 = arith.constant 0 : index
                  memref.store %155, %alloca_176[%c0_416] : memref<1xvector<8xf32>>
                  %156 = arith.addi %arg12, %c3 : index
                  %157 = memref.load %alloc_163[%122, %arg9, %123, %156] : memref<64x12x1x256xf32>
                  %158 = vector.broadcast %157 : f32 to vector<8xf32>
                  %c16384_417 = arith.constant 16384 : index
                  %159 = arith.muli %arg9, %c16384_417 : index
                  %160 = arith.addi %159, %arg11 : index
                  %c64_418 = arith.constant 64 : index
                  %161 = arith.muli %arg12, %c64_418 : index
                  %162 = arith.addi %160, %161 : index
                  %c192 = arith.constant 192 : index
                  %163 = arith.addi %162, %c192 : index
                  %164 = vector.load %arg6[%arg8, %163] : memref<1x196608xf32>, vector<8xf32>
                  %c0_419 = arith.constant 0 : index
                  %165 = memref.load %alloca_176[%c0_419] : memref<1xvector<8xf32>>
                  %166 = vector.fma %158, %164, %165 : vector<8xf32>
                  %c0_420 = arith.constant 0 : index
                  memref.store %166, %alloca_176[%c0_420] : memref<1xvector<8xf32>>
                  %167 = arith.addi %arg12, %c4 : index
                  %168 = memref.load %alloc_163[%122, %arg9, %123, %167] : memref<64x12x1x256xf32>
                  %169 = vector.broadcast %168 : f32 to vector<8xf32>
                  %c16384_421 = arith.constant 16384 : index
                  %170 = arith.muli %arg9, %c16384_421 : index
                  %171 = arith.addi %170, %arg11 : index
                  %c64_422 = arith.constant 64 : index
                  %172 = arith.muli %arg12, %c64_422 : index
                  %173 = arith.addi %171, %172 : index
                  %c256_423 = arith.constant 256 : index
                  %174 = arith.addi %173, %c256_423 : index
                  %175 = vector.load %arg6[%arg8, %174] : memref<1x196608xf32>, vector<8xf32>
                  %c0_424 = arith.constant 0 : index
                  %176 = memref.load %alloca_176[%c0_424] : memref<1xvector<8xf32>>
                  %177 = vector.fma %169, %175, %176 : vector<8xf32>
                  %c0_425 = arith.constant 0 : index
                  memref.store %177, %alloca_176[%c0_425] : memref<1xvector<8xf32>>
                  %178 = arith.addi %arg12, %c5 : index
                  %179 = memref.load %alloc_163[%122, %arg9, %123, %178] : memref<64x12x1x256xf32>
                  %180 = vector.broadcast %179 : f32 to vector<8xf32>
                  %c16384_426 = arith.constant 16384 : index
                  %181 = arith.muli %arg9, %c16384_426 : index
                  %182 = arith.addi %181, %arg11 : index
                  %c64_427 = arith.constant 64 : index
                  %183 = arith.muli %arg12, %c64_427 : index
                  %184 = arith.addi %182, %183 : index
                  %c320 = arith.constant 320 : index
                  %185 = arith.addi %184, %c320 : index
                  %186 = vector.load %arg6[%arg8, %185] : memref<1x196608xf32>, vector<8xf32>
                  %c0_428 = arith.constant 0 : index
                  %187 = memref.load %alloca_176[%c0_428] : memref<1xvector<8xf32>>
                  %188 = vector.fma %180, %186, %187 : vector<8xf32>
                  %c0_429 = arith.constant 0 : index
                  memref.store %188, %alloca_176[%c0_429] : memref<1xvector<8xf32>>
                  %189 = arith.addi %arg12, %c6 : index
                  %190 = memref.load %alloc_163[%122, %arg9, %123, %189] : memref<64x12x1x256xf32>
                  %191 = vector.broadcast %190 : f32 to vector<8xf32>
                  %c16384_430 = arith.constant 16384 : index
                  %192 = arith.muli %arg9, %c16384_430 : index
                  %193 = arith.addi %192, %arg11 : index
                  %c64_431 = arith.constant 64 : index
                  %194 = arith.muli %arg12, %c64_431 : index
                  %195 = arith.addi %193, %194 : index
                  %c384 = arith.constant 384 : index
                  %196 = arith.addi %195, %c384 : index
                  %197 = vector.load %arg6[%arg8, %196] : memref<1x196608xf32>, vector<8xf32>
                  %c0_432 = arith.constant 0 : index
                  %198 = memref.load %alloca_176[%c0_432] : memref<1xvector<8xf32>>
                  %199 = vector.fma %191, %197, %198 : vector<8xf32>
                  %c0_433 = arith.constant 0 : index
                  memref.store %199, %alloca_176[%c0_433] : memref<1xvector<8xf32>>
                  %200 = arith.addi %arg12, %c7 : index
                  %201 = memref.load %alloc_163[%122, %arg9, %123, %200] : memref<64x12x1x256xf32>
                  %202 = vector.broadcast %201 : f32 to vector<8xf32>
                  %c16384_434 = arith.constant 16384 : index
                  %203 = arith.muli %arg9, %c16384_434 : index
                  %204 = arith.addi %203, %arg11 : index
                  %c64_435 = arith.constant 64 : index
                  %205 = arith.muli %arg12, %c64_435 : index
                  %206 = arith.addi %204, %205 : index
                  %c448 = arith.constant 448 : index
                  %207 = arith.addi %206, %c448 : index
                  %208 = vector.load %arg6[%arg8, %207] : memref<1x196608xf32>, vector<8xf32>
                  %c0_436 = arith.constant 0 : index
                  %209 = memref.load %alloca_176[%c0_436] : memref<1xvector<8xf32>>
                  %210 = vector.fma %202, %208, %209 : vector<8xf32>
                  %c0_437 = arith.constant 0 : index
                  memref.store %210, %alloca_176[%c0_437] : memref<1xvector<8xf32>>
                  %c0_438 = arith.constant 0 : index
                  %211 = memref.load %alloca_176[%c0_438] : memref<1xvector<8xf32>>
                  vector.store %211, %alloc_169[%122, %arg9, %123, %arg11] : memref<64x12x1x64xf32>, vector<8xf32>
                }
              }
            }
          }
        }
      }
      scf.yield %117, %118, %121, %120 : index, index, memref<1x196608xf32>, index
    }
    %reinterpret_cast_177 = memref.reinterpret_cast %alloc_169 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x12x1x64xf32> to memref<64x768xf32>
    %alloc_178 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    %c0_179 = arith.constant 0 : index
    %c64_180 = arith.constant 64 : index
    %c1_181 = arith.constant 1 : index
    scf.for %arg3 = %c0_179 to %c64_180 step %c1_181 {
      %c0_389 = arith.constant 0 : index
      %c768_390 = arith.constant 768 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c768_390 step %c1_391 {
        memref.store %cst_1, %alloc_178[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_182 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_183 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    %c0_184 = arith.constant 0 : index
    %c768 = arith.constant 768 : index
    %c64_185 = arith.constant 64 : index
    %alloca_186 = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
    scf.for %arg3 = %c0_184 to %c768 step %c64_185 {
      %c0_389 = arith.constant 0 : index
      %c768_390 = arith.constant 768 : index
      %c256 = arith.constant 256 : index
      scf.for %arg4 = %c0_389 to %c768_390 step %c256 {
        %c0_391 = arith.constant 0 : index
        %c256_392 = arith.constant 256 : index
        %c1_393 = arith.constant 1 : index
        scf.for %arg5 = %c0_391 to %c256_392 step %c1_393 {
          %c0_396 = arith.constant 0 : index
          %c64_397 = arith.constant 64 : index
          %c1_398 = arith.constant 1 : index
          scf.for %arg6 = %c0_396 to %c64_397 step %c1_398 {
            %117 = arith.addi %arg4, %arg5 : index
            %118 = arith.addi %arg3, %arg6 : index
            %119 = memref.load %alloc_10[%117, %118] : memref<768x768xf32>
            memref.store %119, %alloc_183[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        %c0_394 = arith.constant 0 : index
        %c64_395 = arith.constant 64 : index
        %c32 = arith.constant 32 : index
        scf.for %arg5 = %c0_394 to %c64_395 step %c32 {
          %c0_396 = arith.constant 0 : index
          %c32_397 = arith.constant 32 : index
          %c1_398 = arith.constant 1 : index
          scf.for %arg6 = %c0_396 to %c32_397 step %c1_398 {
            %c0_400 = arith.constant 0 : index
            %c256_401 = arith.constant 256 : index
            %c1_402 = arith.constant 1 : index
            scf.for %arg7 = %c0_400 to %c256_401 step %c1_402 {
              %118 = arith.addi %arg5, %arg6 : index
              %119 = arith.addi %arg4, %arg7 : index
              %120 = memref.load %reinterpret_cast_177[%118, %119] : memref<64x768xf32>
              memref.store %120, %alloc_182[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          %c64_399 = arith.constant 64 : index
          %117 = arith.addi %arg3, %c64_399 : index
          %c16 = arith.constant 16 : index
          scf.for %arg6 = %arg3 to %117 step %c16 {
            %c32_400 = arith.constant 32 : index
            %118 = arith.addi %arg5, %c32_400 : index
            %c4_401 = arith.constant 4 : index
            scf.for %arg7 = %arg5 to %118 step %c4_401 {
              %c-1 = arith.constant -1 : index
              %119 = arith.muli %arg5, %c-1 : index
              %120 = arith.addi %119, %arg7 : index
              %c-1_402 = arith.constant -1 : index
              %121 = arith.muli %arg3, %c-1_402 : index
              %122 = arith.addi %121, %arg6 : index
              %123 = vector.load %alloc_178[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c0_403 = arith.constant 0 : index
              memref.store %123, %alloca_186[%c0_403] : memref<4xvector<16xf32>>
              %124 = arith.addi %arg7, %c1 : index
              %125 = vector.load %alloc_178[%124, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c1_404 = arith.constant 1 : index
              memref.store %125, %alloca_186[%c1_404] : memref<4xvector<16xf32>>
              %126 = arith.addi %arg7, %c2 : index
              %127 = vector.load %alloc_178[%126, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c2_405 = arith.constant 2 : index
              memref.store %127, %alloca_186[%c2_405] : memref<4xvector<16xf32>>
              %128 = arith.addi %arg7, %c3 : index
              %129 = vector.load %alloc_178[%128, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c3_406 = arith.constant 3 : index
              memref.store %129, %alloca_186[%c3_406] : memref<4xvector<16xf32>>
              %c0_407 = arith.constant 0 : index
              %c256_408 = arith.constant 256 : index
              %c4_409 = arith.constant 4 : index
              scf.for %arg8 = %c0_407 to %c256_408 step %c4_409 {
                %134 = memref.load %alloc_182[%120, %arg8] : memref<32x256xf32>
                %135 = vector.broadcast %134 : f32 to vector<16xf32>
                %136 = vector.load %alloc_183[%arg8, %122] : memref<256x64xf32>, vector<16xf32>
                %c0_414 = arith.constant 0 : index
                %137 = memref.load %alloca_186[%c0_414] : memref<4xvector<16xf32>>
                %138 = vector.fma %135, %136, %137 : vector<16xf32>
                %c0_415 = arith.constant 0 : index
                memref.store %138, %alloca_186[%c0_415] : memref<4xvector<16xf32>>
                %c1_416 = arith.constant 1 : index
                %139 = arith.addi %arg8, %c1_416 : index
                %140 = memref.load %alloc_182[%120, %139] : memref<32x256xf32>
                %141 = vector.broadcast %140 : f32 to vector<16xf32>
                %142 = vector.load %alloc_183[%139, %122] : memref<256x64xf32>, vector<16xf32>
                %c0_417 = arith.constant 0 : index
                %143 = memref.load %alloca_186[%c0_417] : memref<4xvector<16xf32>>
                %144 = vector.fma %141, %142, %143 : vector<16xf32>
                %c0_418 = arith.constant 0 : index
                memref.store %144, %alloca_186[%c0_418] : memref<4xvector<16xf32>>
                %c2_419 = arith.constant 2 : index
                %145 = arith.addi %arg8, %c2_419 : index
                %146 = memref.load %alloc_182[%120, %145] : memref<32x256xf32>
                %147 = vector.broadcast %146 : f32 to vector<16xf32>
                %148 = vector.load %alloc_183[%145, %122] : memref<256x64xf32>, vector<16xf32>
                %c0_420 = arith.constant 0 : index
                %149 = memref.load %alloca_186[%c0_420] : memref<4xvector<16xf32>>
                %150 = vector.fma %147, %148, %149 : vector<16xf32>
                %c0_421 = arith.constant 0 : index
                memref.store %150, %alloca_186[%c0_421] : memref<4xvector<16xf32>>
                %c3_422 = arith.constant 3 : index
                %151 = arith.addi %arg8, %c3_422 : index
                %152 = memref.load %alloc_182[%120, %151] : memref<32x256xf32>
                %153 = vector.broadcast %152 : f32 to vector<16xf32>
                %154 = vector.load %alloc_183[%151, %122] : memref<256x64xf32>, vector<16xf32>
                %c0_423 = arith.constant 0 : index
                %155 = memref.load %alloca_186[%c0_423] : memref<4xvector<16xf32>>
                %156 = vector.fma %153, %154, %155 : vector<16xf32>
                %c0_424 = arith.constant 0 : index
                memref.store %156, %alloca_186[%c0_424] : memref<4xvector<16xf32>>
                %157 = arith.addi %120, %c1 : index
                %158 = memref.load %alloc_182[%157, %arg8] : memref<32x256xf32>
                %159 = vector.broadcast %158 : f32 to vector<16xf32>
                %160 = vector.load %alloc_183[%arg8, %122] : memref<256x64xf32>, vector<16xf32>
                %c1_425 = arith.constant 1 : index
                %161 = memref.load %alloca_186[%c1_425] : memref<4xvector<16xf32>>
                %162 = vector.fma %159, %160, %161 : vector<16xf32>
                %c1_426 = arith.constant 1 : index
                memref.store %162, %alloca_186[%c1_426] : memref<4xvector<16xf32>>
                %163 = memref.load %alloc_182[%157, %139] : memref<32x256xf32>
                %164 = vector.broadcast %163 : f32 to vector<16xf32>
                %165 = vector.load %alloc_183[%139, %122] : memref<256x64xf32>, vector<16xf32>
                %c1_427 = arith.constant 1 : index
                %166 = memref.load %alloca_186[%c1_427] : memref<4xvector<16xf32>>
                %167 = vector.fma %164, %165, %166 : vector<16xf32>
                %c1_428 = arith.constant 1 : index
                memref.store %167, %alloca_186[%c1_428] : memref<4xvector<16xf32>>
                %168 = memref.load %alloc_182[%157, %145] : memref<32x256xf32>
                %169 = vector.broadcast %168 : f32 to vector<16xf32>
                %170 = vector.load %alloc_183[%145, %122] : memref<256x64xf32>, vector<16xf32>
                %c1_429 = arith.constant 1 : index
                %171 = memref.load %alloca_186[%c1_429] : memref<4xvector<16xf32>>
                %172 = vector.fma %169, %170, %171 : vector<16xf32>
                %c1_430 = arith.constant 1 : index
                memref.store %172, %alloca_186[%c1_430] : memref<4xvector<16xf32>>
                %173 = memref.load %alloc_182[%157, %151] : memref<32x256xf32>
                %174 = vector.broadcast %173 : f32 to vector<16xf32>
                %175 = vector.load %alloc_183[%151, %122] : memref<256x64xf32>, vector<16xf32>
                %c1_431 = arith.constant 1 : index
                %176 = memref.load %alloca_186[%c1_431] : memref<4xvector<16xf32>>
                %177 = vector.fma %174, %175, %176 : vector<16xf32>
                %c1_432 = arith.constant 1 : index
                memref.store %177, %alloca_186[%c1_432] : memref<4xvector<16xf32>>
                %178 = arith.addi %120, %c2 : index
                %179 = memref.load %alloc_182[%178, %arg8] : memref<32x256xf32>
                %180 = vector.broadcast %179 : f32 to vector<16xf32>
                %181 = vector.load %alloc_183[%arg8, %122] : memref<256x64xf32>, vector<16xf32>
                %c2_433 = arith.constant 2 : index
                %182 = memref.load %alloca_186[%c2_433] : memref<4xvector<16xf32>>
                %183 = vector.fma %180, %181, %182 : vector<16xf32>
                %c2_434 = arith.constant 2 : index
                memref.store %183, %alloca_186[%c2_434] : memref<4xvector<16xf32>>
                %184 = memref.load %alloc_182[%178, %139] : memref<32x256xf32>
                %185 = vector.broadcast %184 : f32 to vector<16xf32>
                %186 = vector.load %alloc_183[%139, %122] : memref<256x64xf32>, vector<16xf32>
                %c2_435 = arith.constant 2 : index
                %187 = memref.load %alloca_186[%c2_435] : memref<4xvector<16xf32>>
                %188 = vector.fma %185, %186, %187 : vector<16xf32>
                %c2_436 = arith.constant 2 : index
                memref.store %188, %alloca_186[%c2_436] : memref<4xvector<16xf32>>
                %189 = memref.load %alloc_182[%178, %145] : memref<32x256xf32>
                %190 = vector.broadcast %189 : f32 to vector<16xf32>
                %191 = vector.load %alloc_183[%145, %122] : memref<256x64xf32>, vector<16xf32>
                %c2_437 = arith.constant 2 : index
                %192 = memref.load %alloca_186[%c2_437] : memref<4xvector<16xf32>>
                %193 = vector.fma %190, %191, %192 : vector<16xf32>
                %c2_438 = arith.constant 2 : index
                memref.store %193, %alloca_186[%c2_438] : memref<4xvector<16xf32>>
                %194 = memref.load %alloc_182[%178, %151] : memref<32x256xf32>
                %195 = vector.broadcast %194 : f32 to vector<16xf32>
                %196 = vector.load %alloc_183[%151, %122] : memref<256x64xf32>, vector<16xf32>
                %c2_439 = arith.constant 2 : index
                %197 = memref.load %alloca_186[%c2_439] : memref<4xvector<16xf32>>
                %198 = vector.fma %195, %196, %197 : vector<16xf32>
                %c2_440 = arith.constant 2 : index
                memref.store %198, %alloca_186[%c2_440] : memref<4xvector<16xf32>>
                %199 = arith.addi %120, %c3 : index
                %200 = memref.load %alloc_182[%199, %arg8] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_183[%arg8, %122] : memref<256x64xf32>, vector<16xf32>
                %c3_441 = arith.constant 3 : index
                %203 = memref.load %alloca_186[%c3_441] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                %c3_442 = arith.constant 3 : index
                memref.store %204, %alloca_186[%c3_442] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_182[%199, %139] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_183[%139, %122] : memref<256x64xf32>, vector<16xf32>
                %c3_443 = arith.constant 3 : index
                %208 = memref.load %alloca_186[%c3_443] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                %c3_444 = arith.constant 3 : index
                memref.store %209, %alloca_186[%c3_444] : memref<4xvector<16xf32>>
                %210 = memref.load %alloc_182[%199, %145] : memref<32x256xf32>
                %211 = vector.broadcast %210 : f32 to vector<16xf32>
                %212 = vector.load %alloc_183[%145, %122] : memref<256x64xf32>, vector<16xf32>
                %c3_445 = arith.constant 3 : index
                %213 = memref.load %alloca_186[%c3_445] : memref<4xvector<16xf32>>
                %214 = vector.fma %211, %212, %213 : vector<16xf32>
                %c3_446 = arith.constant 3 : index
                memref.store %214, %alloca_186[%c3_446] : memref<4xvector<16xf32>>
                %215 = memref.load %alloc_182[%199, %151] : memref<32x256xf32>
                %216 = vector.broadcast %215 : f32 to vector<16xf32>
                %217 = vector.load %alloc_183[%151, %122] : memref<256x64xf32>, vector<16xf32>
                %c3_447 = arith.constant 3 : index
                %218 = memref.load %alloca_186[%c3_447] : memref<4xvector<16xf32>>
                %219 = vector.fma %216, %217, %218 : vector<16xf32>
                %c3_448 = arith.constant 3 : index
                memref.store %219, %alloca_186[%c3_448] : memref<4xvector<16xf32>>
              }
              %c0_410 = arith.constant 0 : index
              %130 = memref.load %alloca_186[%c0_410] : memref<4xvector<16xf32>>
              vector.store %130, %alloc_178[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c1_411 = arith.constant 1 : index
              %131 = memref.load %alloca_186[%c1_411] : memref<4xvector<16xf32>>
              vector.store %131, %alloc_178[%124, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c2_412 = arith.constant 2 : index
              %132 = memref.load %alloca_186[%c2_412] : memref<4xvector<16xf32>>
              vector.store %132, %alloc_178[%126, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c3_413 = arith.constant 3 : index
              %133 = memref.load %alloca_186[%c3_413] : memref<4xvector<16xf32>>
              vector.store %133, %alloc_178[%128, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    %c0_187 = arith.constant 0 : index
    %c64_188 = arith.constant 64 : index
    %c1_189 = arith.constant 1 : index
    scf.for %arg3 = %c0_187 to %c64_188 step %c1_189 {
      %c0_389 = arith.constant 0 : index
      %c768_390 = arith.constant 768 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c768_390 step %c1_391 {
        %117 = memref.load %alloc_178[%arg3, %arg4] : memref<64x768xf32>
        %118 = memref.load %alloc_12[%arg4] : memref<768xf32>
        %119 = arith.addf %117, %118 : f32
        memref.store %119, %alloc_178[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_190 = memref.reinterpret_cast %alloc_178 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_191 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_192 = arith.constant 0 : index
    %c64_193 = arith.constant 64 : index
    %c1_194 = arith.constant 1 : index
    scf.for %arg3 = %c0_192 to %c64_193 step %c1_194 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %reinterpret_cast_190[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = memref.load %alloc_34[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = arith.addf %117, %118 : f32
          memref.store %119, %alloc_191[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_195 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_196 = arith.constant 0 : index
    %c64_197 = arith.constant 64 : index
    %c1_198 = arith.constant 1 : index
    scf.for %arg3 = %c0_196 to %c64_197 step %c1_198 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_191[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_395 = arith.constant 0 : index
          %118 = memref.load %alloc_37[%c0_395, %arg4, %arg5] : memref<1x1x768xf32>
          %119 = arith.addf %117, %118 : f32
          memref.store %119, %alloc_195[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_199 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_200 = arith.constant 0 : index
    %c64_201 = arith.constant 64 : index
    %c1_202 = arith.constant 1 : index
    scf.for %arg3 = %c0_200 to %c64_201 step %c1_202 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          memref.store %cst_1, %alloc_199[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %c0_203 = arith.constant 0 : index
    %c64_204 = arith.constant 64 : index
    %c1_205 = arith.constant 1 : index
    scf.for %arg3 = %c0_203 to %c64_204 step %c1_205 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_195[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_395 = arith.constant 0 : index
          %118 = memref.load %alloc_199[%arg3, %arg4, %c0_395] : memref<64x1x1xf32>
          %119 = arith.addf %118, %117 : f32
          %c0_396 = arith.constant 0 : index
          memref.store %119, %alloc_199[%arg3, %arg4, %c0_396] : memref<64x1x1xf32>
        }
      }
    }
    %c0_206 = arith.constant 0 : index
    %c64_207 = arith.constant 64 : index
    %c1_208 = arith.constant 1 : index
    scf.for %arg3 = %c0_206 to %c64_207 step %c1_208 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          %117 = memref.load %alloc_199[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = arith.divf %117, %cst : f32
          memref.store %118, %alloc_199[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_209 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_210 = arith.constant 0 : index
    %c64_211 = arith.constant 64 : index
    %c1_212 = arith.constant 1 : index
    scf.for %arg3 = %c0_210 to %c64_211 step %c1_212 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_195[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_395 = arith.constant 0 : index
          %118 = memref.load %alloc_199[%arg3, %arg4, %c0_395] : memref<64x1x1xf32>
          %119 = arith.subf %117, %118 : f32
          memref.store %119, %alloc_209[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_213 = memref.alloc() : memref<f32>
    %cast_214 = memref.cast %alloc_213 : memref<f32> to memref<*xf32>
    %89 = llvm.mlir.addressof @constant_33 : !llvm.ptr<array<12 x i8>>
    %90 = llvm.getelementptr %89[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%90, %cast_214) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_215 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_216 = arith.constant 0 : index
    %c64_217 = arith.constant 64 : index
    %c1_218 = arith.constant 1 : index
    scf.for %arg3 = %c0_216 to %c64_217 step %c1_218 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_209[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = memref.load %alloc_213[] : memref<f32>
          %119 = math.powf %117, %118 : f32
          memref.store %119, %alloc_215[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_219 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_220 = arith.constant 0 : index
    %c64_221 = arith.constant 64 : index
    %c1_222 = arith.constant 1 : index
    scf.for %arg3 = %c0_220 to %c64_221 step %c1_222 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          memref.store %cst_1, %alloc_219[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %c0_223 = arith.constant 0 : index
    %c64_224 = arith.constant 64 : index
    %c1_225 = arith.constant 1 : index
    scf.for %arg3 = %c0_223 to %c64_224 step %c1_225 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_215[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_395 = arith.constant 0 : index
          %118 = memref.load %alloc_219[%arg3, %arg4, %c0_395] : memref<64x1x1xf32>
          %119 = arith.addf %118, %117 : f32
          %c0_396 = arith.constant 0 : index
          memref.store %119, %alloc_219[%arg3, %arg4, %c0_396] : memref<64x1x1xf32>
        }
      }
    }
    %c0_226 = arith.constant 0 : index
    %c64_227 = arith.constant 64 : index
    %c1_228 = arith.constant 1 : index
    scf.for %arg3 = %c0_226 to %c64_227 step %c1_228 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          %117 = memref.load %alloc_219[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = arith.divf %117, %cst : f32
          memref.store %118, %alloc_219[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_229 = memref.alloc() : memref<f32>
    %cast_230 = memref.cast %alloc_229 : memref<f32> to memref<*xf32>
    %91 = llvm.mlir.addressof @constant_34 : !llvm.ptr<array<12 x i8>>
    %92 = llvm.getelementptr %91[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%92, %cast_230) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_231 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_232 = arith.constant 0 : index
    %c64_233 = arith.constant 64 : index
    %c1_234 = arith.constant 1 : index
    scf.for %arg3 = %c0_232 to %c64_233 step %c1_234 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          %117 = memref.load %alloc_219[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = memref.load %alloc_229[] : memref<f32>
          %119 = arith.addf %117, %118 : f32
          memref.store %119, %alloc_231[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_235 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_236 = arith.constant 0 : index
    %c64_237 = arith.constant 64 : index
    %c1_238 = arith.constant 1 : index
    scf.for %arg3 = %c0_236 to %c64_237 step %c1_238 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          %117 = memref.load %alloc_231[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = math.sqrt %117 : f32
          memref.store %118, %alloc_235[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_239 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_240 = arith.constant 0 : index
    %c64_241 = arith.constant 64 : index
    %c1_242 = arith.constant 1 : index
    scf.for %arg3 = %c0_240 to %c64_241 step %c1_242 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_209[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_395 = arith.constant 0 : index
          %118 = memref.load %alloc_235[%arg3, %arg4, %c0_395] : memref<64x1x1xf32>
          %119 = arith.divf %117, %118 : f32
          memref.store %119, %alloc_239[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_243 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_244 = arith.constant 0 : index
    %c64_245 = arith.constant 64 : index
    %c1_246 = arith.constant 1 : index
    scf.for %arg3 = %c0_244 to %c64_245 step %c1_246 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_239[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = memref.load %alloc_14[%arg5] : memref<768xf32>
          %119 = arith.mulf %117, %118 : f32
          memref.store %119, %alloc_243[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_247 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_248 = arith.constant 0 : index
    %c64_249 = arith.constant 64 : index
    %c1_250 = arith.constant 1 : index
    scf.for %arg3 = %c0_248 to %c64_249 step %c1_250 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_243[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = memref.load %alloc_16[%arg5] : memref<768xf32>
          %119 = arith.addf %117, %118 : f32
          memref.store %119, %alloc_247[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_251 = memref.reinterpret_cast %alloc_247 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_252 = memref.alloc() {alignment = 128 : i64} : memref<64x3072xf32>
    %c0_253 = arith.constant 0 : index
    %c64_254 = arith.constant 64 : index
    %c1_255 = arith.constant 1 : index
    scf.for %arg3 = %c0_253 to %c64_254 step %c1_255 {
      %c0_389 = arith.constant 0 : index
      %c3072_390 = arith.constant 3072 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c3072_390 step %c1_391 {
        memref.store %cst_1, %alloc_252[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %alloc_256 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_257 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    %c0_258 = arith.constant 0 : index
    %c3072 = arith.constant 3072 : index
    %c64_259 = arith.constant 64 : index
    %alloca_260 = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
    scf.for %arg3 = %c0_258 to %c3072 step %c64_259 {
      %c0_389 = arith.constant 0 : index
      %c768_390 = arith.constant 768 : index
      %c256 = arith.constant 256 : index
      scf.for %arg4 = %c0_389 to %c768_390 step %c256 {
        %c0_391 = arith.constant 0 : index
        %c256_392 = arith.constant 256 : index
        %c1_393 = arith.constant 1 : index
        scf.for %arg5 = %c0_391 to %c256_392 step %c1_393 {
          %c0_396 = arith.constant 0 : index
          %c64_397 = arith.constant 64 : index
          %c1_398 = arith.constant 1 : index
          scf.for %arg6 = %c0_396 to %c64_397 step %c1_398 {
            %117 = arith.addi %arg4, %arg5 : index
            %118 = arith.addi %arg3, %arg6 : index
            %119 = memref.load %alloc_18[%117, %118] : memref<768x3072xf32>
            memref.store %119, %alloc_257[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        %c0_394 = arith.constant 0 : index
        %c64_395 = arith.constant 64 : index
        %c32 = arith.constant 32 : index
        scf.for %arg5 = %c0_394 to %c64_395 step %c32 {
          %c0_396 = arith.constant 0 : index
          %c32_397 = arith.constant 32 : index
          %c1_398 = arith.constant 1 : index
          scf.for %arg6 = %c0_396 to %c32_397 step %c1_398 {
            %c0_400 = arith.constant 0 : index
            %c256_401 = arith.constant 256 : index
            %c1_402 = arith.constant 1 : index
            scf.for %arg7 = %c0_400 to %c256_401 step %c1_402 {
              %118 = arith.addi %arg5, %arg6 : index
              %119 = arith.addi %arg4, %arg7 : index
              %120 = memref.load %reinterpret_cast_251[%118, %119] : memref<64x768xf32>
              memref.store %120, %alloc_256[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          %c64_399 = arith.constant 64 : index
          %117 = arith.addi %arg3, %c64_399 : index
          %c16 = arith.constant 16 : index
          scf.for %arg6 = %arg3 to %117 step %c16 {
            %c32_400 = arith.constant 32 : index
            %118 = arith.addi %arg5, %c32_400 : index
            %c4_401 = arith.constant 4 : index
            scf.for %arg7 = %arg5 to %118 step %c4_401 {
              %c-1 = arith.constant -1 : index
              %119 = arith.muli %arg5, %c-1 : index
              %120 = arith.addi %119, %arg7 : index
              %c-1_402 = arith.constant -1 : index
              %121 = arith.muli %arg3, %c-1_402 : index
              %122 = arith.addi %121, %arg6 : index
              %123 = vector.load %alloc_252[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %c0_403 = arith.constant 0 : index
              memref.store %123, %alloca_260[%c0_403] : memref<4xvector<16xf32>>
              %124 = arith.addi %arg7, %c1 : index
              %125 = vector.load %alloc_252[%124, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %c1_404 = arith.constant 1 : index
              memref.store %125, %alloca_260[%c1_404] : memref<4xvector<16xf32>>
              %126 = arith.addi %arg7, %c2 : index
              %127 = vector.load %alloc_252[%126, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %c2_405 = arith.constant 2 : index
              memref.store %127, %alloca_260[%c2_405] : memref<4xvector<16xf32>>
              %128 = arith.addi %arg7, %c3 : index
              %129 = vector.load %alloc_252[%128, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %c3_406 = arith.constant 3 : index
              memref.store %129, %alloca_260[%c3_406] : memref<4xvector<16xf32>>
              %c0_407 = arith.constant 0 : index
              %c256_408 = arith.constant 256 : index
              %c4_409 = arith.constant 4 : index
              scf.for %arg8 = %c0_407 to %c256_408 step %c4_409 {
                %134 = memref.load %alloc_256[%120, %arg8] : memref<32x256xf32>
                %135 = vector.broadcast %134 : f32 to vector<16xf32>
                %136 = vector.load %alloc_257[%arg8, %122] : memref<256x64xf32>, vector<16xf32>
                %c0_414 = arith.constant 0 : index
                %137 = memref.load %alloca_260[%c0_414] : memref<4xvector<16xf32>>
                %138 = vector.fma %135, %136, %137 : vector<16xf32>
                %c0_415 = arith.constant 0 : index
                memref.store %138, %alloca_260[%c0_415] : memref<4xvector<16xf32>>
                %c1_416 = arith.constant 1 : index
                %139 = arith.addi %arg8, %c1_416 : index
                %140 = memref.load %alloc_256[%120, %139] : memref<32x256xf32>
                %141 = vector.broadcast %140 : f32 to vector<16xf32>
                %142 = vector.load %alloc_257[%139, %122] : memref<256x64xf32>, vector<16xf32>
                %c0_417 = arith.constant 0 : index
                %143 = memref.load %alloca_260[%c0_417] : memref<4xvector<16xf32>>
                %144 = vector.fma %141, %142, %143 : vector<16xf32>
                %c0_418 = arith.constant 0 : index
                memref.store %144, %alloca_260[%c0_418] : memref<4xvector<16xf32>>
                %c2_419 = arith.constant 2 : index
                %145 = arith.addi %arg8, %c2_419 : index
                %146 = memref.load %alloc_256[%120, %145] : memref<32x256xf32>
                %147 = vector.broadcast %146 : f32 to vector<16xf32>
                %148 = vector.load %alloc_257[%145, %122] : memref<256x64xf32>, vector<16xf32>
                %c0_420 = arith.constant 0 : index
                %149 = memref.load %alloca_260[%c0_420] : memref<4xvector<16xf32>>
                %150 = vector.fma %147, %148, %149 : vector<16xf32>
                %c0_421 = arith.constant 0 : index
                memref.store %150, %alloca_260[%c0_421] : memref<4xvector<16xf32>>
                %c3_422 = arith.constant 3 : index
                %151 = arith.addi %arg8, %c3_422 : index
                %152 = memref.load %alloc_256[%120, %151] : memref<32x256xf32>
                %153 = vector.broadcast %152 : f32 to vector<16xf32>
                %154 = vector.load %alloc_257[%151, %122] : memref<256x64xf32>, vector<16xf32>
                %c0_423 = arith.constant 0 : index
                %155 = memref.load %alloca_260[%c0_423] : memref<4xvector<16xf32>>
                %156 = vector.fma %153, %154, %155 : vector<16xf32>
                %c0_424 = arith.constant 0 : index
                memref.store %156, %alloca_260[%c0_424] : memref<4xvector<16xf32>>
                %157 = arith.addi %120, %c1 : index
                %158 = memref.load %alloc_256[%157, %arg8] : memref<32x256xf32>
                %159 = vector.broadcast %158 : f32 to vector<16xf32>
                %160 = vector.load %alloc_257[%arg8, %122] : memref<256x64xf32>, vector<16xf32>
                %c1_425 = arith.constant 1 : index
                %161 = memref.load %alloca_260[%c1_425] : memref<4xvector<16xf32>>
                %162 = vector.fma %159, %160, %161 : vector<16xf32>
                %c1_426 = arith.constant 1 : index
                memref.store %162, %alloca_260[%c1_426] : memref<4xvector<16xf32>>
                %163 = memref.load %alloc_256[%157, %139] : memref<32x256xf32>
                %164 = vector.broadcast %163 : f32 to vector<16xf32>
                %165 = vector.load %alloc_257[%139, %122] : memref<256x64xf32>, vector<16xf32>
                %c1_427 = arith.constant 1 : index
                %166 = memref.load %alloca_260[%c1_427] : memref<4xvector<16xf32>>
                %167 = vector.fma %164, %165, %166 : vector<16xf32>
                %c1_428 = arith.constant 1 : index
                memref.store %167, %alloca_260[%c1_428] : memref<4xvector<16xf32>>
                %168 = memref.load %alloc_256[%157, %145] : memref<32x256xf32>
                %169 = vector.broadcast %168 : f32 to vector<16xf32>
                %170 = vector.load %alloc_257[%145, %122] : memref<256x64xf32>, vector<16xf32>
                %c1_429 = arith.constant 1 : index
                %171 = memref.load %alloca_260[%c1_429] : memref<4xvector<16xf32>>
                %172 = vector.fma %169, %170, %171 : vector<16xf32>
                %c1_430 = arith.constant 1 : index
                memref.store %172, %alloca_260[%c1_430] : memref<4xvector<16xf32>>
                %173 = memref.load %alloc_256[%157, %151] : memref<32x256xf32>
                %174 = vector.broadcast %173 : f32 to vector<16xf32>
                %175 = vector.load %alloc_257[%151, %122] : memref<256x64xf32>, vector<16xf32>
                %c1_431 = arith.constant 1 : index
                %176 = memref.load %alloca_260[%c1_431] : memref<4xvector<16xf32>>
                %177 = vector.fma %174, %175, %176 : vector<16xf32>
                %c1_432 = arith.constant 1 : index
                memref.store %177, %alloca_260[%c1_432] : memref<4xvector<16xf32>>
                %178 = arith.addi %120, %c2 : index
                %179 = memref.load %alloc_256[%178, %arg8] : memref<32x256xf32>
                %180 = vector.broadcast %179 : f32 to vector<16xf32>
                %181 = vector.load %alloc_257[%arg8, %122] : memref<256x64xf32>, vector<16xf32>
                %c2_433 = arith.constant 2 : index
                %182 = memref.load %alloca_260[%c2_433] : memref<4xvector<16xf32>>
                %183 = vector.fma %180, %181, %182 : vector<16xf32>
                %c2_434 = arith.constant 2 : index
                memref.store %183, %alloca_260[%c2_434] : memref<4xvector<16xf32>>
                %184 = memref.load %alloc_256[%178, %139] : memref<32x256xf32>
                %185 = vector.broadcast %184 : f32 to vector<16xf32>
                %186 = vector.load %alloc_257[%139, %122] : memref<256x64xf32>, vector<16xf32>
                %c2_435 = arith.constant 2 : index
                %187 = memref.load %alloca_260[%c2_435] : memref<4xvector<16xf32>>
                %188 = vector.fma %185, %186, %187 : vector<16xf32>
                %c2_436 = arith.constant 2 : index
                memref.store %188, %alloca_260[%c2_436] : memref<4xvector<16xf32>>
                %189 = memref.load %alloc_256[%178, %145] : memref<32x256xf32>
                %190 = vector.broadcast %189 : f32 to vector<16xf32>
                %191 = vector.load %alloc_257[%145, %122] : memref<256x64xf32>, vector<16xf32>
                %c2_437 = arith.constant 2 : index
                %192 = memref.load %alloca_260[%c2_437] : memref<4xvector<16xf32>>
                %193 = vector.fma %190, %191, %192 : vector<16xf32>
                %c2_438 = arith.constant 2 : index
                memref.store %193, %alloca_260[%c2_438] : memref<4xvector<16xf32>>
                %194 = memref.load %alloc_256[%178, %151] : memref<32x256xf32>
                %195 = vector.broadcast %194 : f32 to vector<16xf32>
                %196 = vector.load %alloc_257[%151, %122] : memref<256x64xf32>, vector<16xf32>
                %c2_439 = arith.constant 2 : index
                %197 = memref.load %alloca_260[%c2_439] : memref<4xvector<16xf32>>
                %198 = vector.fma %195, %196, %197 : vector<16xf32>
                %c2_440 = arith.constant 2 : index
                memref.store %198, %alloca_260[%c2_440] : memref<4xvector<16xf32>>
                %199 = arith.addi %120, %c3 : index
                %200 = memref.load %alloc_256[%199, %arg8] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_257[%arg8, %122] : memref<256x64xf32>, vector<16xf32>
                %c3_441 = arith.constant 3 : index
                %203 = memref.load %alloca_260[%c3_441] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                %c3_442 = arith.constant 3 : index
                memref.store %204, %alloca_260[%c3_442] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_256[%199, %139] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_257[%139, %122] : memref<256x64xf32>, vector<16xf32>
                %c3_443 = arith.constant 3 : index
                %208 = memref.load %alloca_260[%c3_443] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                %c3_444 = arith.constant 3 : index
                memref.store %209, %alloca_260[%c3_444] : memref<4xvector<16xf32>>
                %210 = memref.load %alloc_256[%199, %145] : memref<32x256xf32>
                %211 = vector.broadcast %210 : f32 to vector<16xf32>
                %212 = vector.load %alloc_257[%145, %122] : memref<256x64xf32>, vector<16xf32>
                %c3_445 = arith.constant 3 : index
                %213 = memref.load %alloca_260[%c3_445] : memref<4xvector<16xf32>>
                %214 = vector.fma %211, %212, %213 : vector<16xf32>
                %c3_446 = arith.constant 3 : index
                memref.store %214, %alloca_260[%c3_446] : memref<4xvector<16xf32>>
                %215 = memref.load %alloc_256[%199, %151] : memref<32x256xf32>
                %216 = vector.broadcast %215 : f32 to vector<16xf32>
                %217 = vector.load %alloc_257[%151, %122] : memref<256x64xf32>, vector<16xf32>
                %c3_447 = arith.constant 3 : index
                %218 = memref.load %alloca_260[%c3_447] : memref<4xvector<16xf32>>
                %219 = vector.fma %216, %217, %218 : vector<16xf32>
                %c3_448 = arith.constant 3 : index
                memref.store %219, %alloca_260[%c3_448] : memref<4xvector<16xf32>>
              }
              %c0_410 = arith.constant 0 : index
              %130 = memref.load %alloca_260[%c0_410] : memref<4xvector<16xf32>>
              vector.store %130, %alloc_252[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %c1_411 = arith.constant 1 : index
              %131 = memref.load %alloca_260[%c1_411] : memref<4xvector<16xf32>>
              vector.store %131, %alloc_252[%124, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %c2_412 = arith.constant 2 : index
              %132 = memref.load %alloca_260[%c2_412] : memref<4xvector<16xf32>>
              vector.store %132, %alloc_252[%126, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %c3_413 = arith.constant 3 : index
              %133 = memref.load %alloca_260[%c3_413] : memref<4xvector<16xf32>>
              vector.store %133, %alloc_252[%128, %arg6] : memref<64x3072xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    %c0_261 = arith.constant 0 : index
    %c64_262 = arith.constant 64 : index
    %c1_263 = arith.constant 1 : index
    scf.for %arg3 = %c0_261 to %c64_262 step %c1_263 {
      %c0_389 = arith.constant 0 : index
      %c3072_390 = arith.constant 3072 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c3072_390 step %c1_391 {
        %117 = memref.load %alloc_252[%arg3, %arg4] : memref<64x3072xf32>
        %118 = memref.load %alloc_20[%arg4] : memref<3072xf32>
        %119 = arith.addf %117, %118 : f32
        memref.store %119, %alloc_252[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %reinterpret_cast_264 = memref.reinterpret_cast %alloc_252 to offset: [0], sizes: [64, 1, 3072], strides: [3072, 3072, 1] : memref<64x3072xf32> to memref<64x1x3072xf32>
    %alloc_265 = memref.alloc() : memref<f32>
    %cast_266 = memref.cast %alloc_265 : memref<f32> to memref<*xf32>
    %93 = llvm.mlir.addressof @constant_37 : !llvm.ptr<array<12 x i8>>
    %94 = llvm.getelementptr %93[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%94, %cast_266) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_267 = memref.alloc() : memref<f32>
    %cast_268 = memref.cast %alloc_267 : memref<f32> to memref<*xf32>
    %95 = llvm.mlir.addressof @constant_38 : !llvm.ptr<array<12 x i8>>
    %96 = llvm.getelementptr %95[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%96, %cast_268) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_269 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    %c0_270 = arith.constant 0 : index
    %c64_271 = arith.constant 64 : index
    %c1_272 = arith.constant 1 : index
    scf.for %arg3 = %c0_270 to %c64_271 step %c1_272 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c3072_393 = arith.constant 3072 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c3072_393 step %c1_394 {
          %117 = memref.load %reinterpret_cast_264[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %118 = memref.load %alloc_267[] : memref<f32>
          %119 = math.powf %117, %118 : f32
          memref.store %119, %alloc_269[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_273 = memref.alloc() : memref<f32>
    %cast_274 = memref.cast %alloc_273 : memref<f32> to memref<*xf32>
    %97 = llvm.mlir.addressof @constant_39 : !llvm.ptr<array<12 x i8>>
    %98 = llvm.getelementptr %97[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%98, %cast_274) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_275 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    %c0_276 = arith.constant 0 : index
    %c64_277 = arith.constant 64 : index
    %c1_278 = arith.constant 1 : index
    scf.for %arg3 = %c0_276 to %c64_277 step %c1_278 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c3072_393 = arith.constant 3072 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c3072_393 step %c1_394 {
          %117 = memref.load %alloc_269[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %118 = memref.load %alloc_273[] : memref<f32>
          %119 = arith.mulf %117, %118 : f32
          memref.store %119, %alloc_275[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_279 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    %c0_280 = arith.constant 0 : index
    %c64_281 = arith.constant 64 : index
    %c1_282 = arith.constant 1 : index
    scf.for %arg3 = %c0_280 to %c64_281 step %c1_282 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c3072_393 = arith.constant 3072 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c3072_393 step %c1_394 {
          %117 = memref.load %reinterpret_cast_264[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %118 = memref.load %alloc_275[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %119 = arith.addf %117, %118 : f32
          memref.store %119, %alloc_279[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_283 = memref.alloc() : memref<f32>
    %cast_284 = memref.cast %alloc_283 : memref<f32> to memref<*xf32>
    %99 = llvm.mlir.addressof @constant_40 : !llvm.ptr<array<12 x i8>>
    %100 = llvm.getelementptr %99[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%100, %cast_284) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_285 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    %c0_286 = arith.constant 0 : index
    %c64_287 = arith.constant 64 : index
    %c1_288 = arith.constant 1 : index
    scf.for %arg3 = %c0_286 to %c64_287 step %c1_288 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c3072_393 = arith.constant 3072 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c3072_393 step %c1_394 {
          %117 = memref.load %alloc_279[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %118 = memref.load %alloc_283[] : memref<f32>
          %119 = arith.mulf %117, %118 : f32
          memref.store %119, %alloc_285[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_289 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    %c0_290 = arith.constant 0 : index
    %c64_291 = arith.constant 64 : index
    %c1_292 = arith.constant 1 : index
    scf.for %arg3 = %c0_290 to %c64_291 step %c1_292 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c3072_393 = arith.constant 3072 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c3072_393 step %c1_394 {
          %117 = memref.load %alloc_285[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %118 = math.tanh %117 : f32
          memref.store %118, %alloc_289[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_293 = memref.alloc() : memref<f32>
    %cast_294 = memref.cast %alloc_293 : memref<f32> to memref<*xf32>
    %101 = llvm.mlir.addressof @constant_41 : !llvm.ptr<array<12 x i8>>
    %102 = llvm.getelementptr %101[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%102, %cast_294) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_295 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    %c0_296 = arith.constant 0 : index
    %c64_297 = arith.constant 64 : index
    %c1_298 = arith.constant 1 : index
    scf.for %arg3 = %c0_296 to %c64_297 step %c1_298 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c3072_393 = arith.constant 3072 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c3072_393 step %c1_394 {
          %117 = memref.load %alloc_289[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %118 = memref.load %alloc_293[] : memref<f32>
          %119 = arith.addf %117, %118 : f32
          memref.store %119, %alloc_295[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_299 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    %c0_300 = arith.constant 0 : index
    %c64_301 = arith.constant 64 : index
    %c1_302 = arith.constant 1 : index
    scf.for %arg3 = %c0_300 to %c64_301 step %c1_302 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c3072_393 = arith.constant 3072 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c3072_393 step %c1_394 {
          %117 = memref.load %reinterpret_cast_264[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %118 = memref.load %alloc_295[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %119 = arith.mulf %117, %118 : f32
          memref.store %119, %alloc_299[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_303 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    %c0_304 = arith.constant 0 : index
    %c64_305 = arith.constant 64 : index
    %c1_306 = arith.constant 1 : index
    scf.for %arg3 = %c0_304 to %c64_305 step %c1_306 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c3072_393 = arith.constant 3072 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c3072_393 step %c1_394 {
          %117 = memref.load %alloc_299[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %118 = memref.load %alloc_265[] : memref<f32>
          %119 = arith.mulf %117, %118 : f32
          memref.store %119, %alloc_303[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %reinterpret_cast_307 = memref.reinterpret_cast %alloc_303 to offset: [0], sizes: [64, 3072], strides: [3072, 1] : memref<64x1x3072xf32> to memref<64x3072xf32>
    %alloc_308 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    %c0_309 = arith.constant 0 : index
    %c64_310 = arith.constant 64 : index
    %c1_311 = arith.constant 1 : index
    scf.for %arg3 = %c0_309 to %c64_310 step %c1_311 {
      %c0_389 = arith.constant 0 : index
      %c768_390 = arith.constant 768 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c768_390 step %c1_391 {
        memref.store %cst_1, %alloc_308[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_312 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_313 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    %c0_314 = arith.constant 0 : index
    %c768_315 = arith.constant 768 : index
    %c64_316 = arith.constant 64 : index
    %alloca_317 = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
    scf.for %arg3 = %c0_314 to %c768_315 step %c64_316 {
      %c0_389 = arith.constant 0 : index
      %c3072_390 = arith.constant 3072 : index
      %c256 = arith.constant 256 : index
      scf.for %arg4 = %c0_389 to %c3072_390 step %c256 {
        %c0_391 = arith.constant 0 : index
        %c256_392 = arith.constant 256 : index
        %c1_393 = arith.constant 1 : index
        scf.for %arg5 = %c0_391 to %c256_392 step %c1_393 {
          %c0_396 = arith.constant 0 : index
          %c64_397 = arith.constant 64 : index
          %c1_398 = arith.constant 1 : index
          scf.for %arg6 = %c0_396 to %c64_397 step %c1_398 {
            %117 = arith.addi %arg4, %arg5 : index
            %118 = arith.addi %arg3, %arg6 : index
            %119 = memref.load %alloc_22[%117, %118] : memref<3072x768xf32>
            memref.store %119, %alloc_313[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        %c0_394 = arith.constant 0 : index
        %c64_395 = arith.constant 64 : index
        %c32 = arith.constant 32 : index
        scf.for %arg5 = %c0_394 to %c64_395 step %c32 {
          %c0_396 = arith.constant 0 : index
          %c32_397 = arith.constant 32 : index
          %c1_398 = arith.constant 1 : index
          scf.for %arg6 = %c0_396 to %c32_397 step %c1_398 {
            %c0_400 = arith.constant 0 : index
            %c256_401 = arith.constant 256 : index
            %c1_402 = arith.constant 1 : index
            scf.for %arg7 = %c0_400 to %c256_401 step %c1_402 {
              %118 = arith.addi %arg5, %arg6 : index
              %119 = arith.addi %arg4, %arg7 : index
              %120 = memref.load %reinterpret_cast_307[%118, %119] : memref<64x3072xf32>
              memref.store %120, %alloc_312[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          %c64_399 = arith.constant 64 : index
          %117 = arith.addi %arg3, %c64_399 : index
          %c16 = arith.constant 16 : index
          scf.for %arg6 = %arg3 to %117 step %c16 {
            %c32_400 = arith.constant 32 : index
            %118 = arith.addi %arg5, %c32_400 : index
            %c4_401 = arith.constant 4 : index
            scf.for %arg7 = %arg5 to %118 step %c4_401 {
              %c-1 = arith.constant -1 : index
              %119 = arith.muli %arg5, %c-1 : index
              %120 = arith.addi %119, %arg7 : index
              %c-1_402 = arith.constant -1 : index
              %121 = arith.muli %arg3, %c-1_402 : index
              %122 = arith.addi %121, %arg6 : index
              %123 = vector.load %alloc_308[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c0_403 = arith.constant 0 : index
              memref.store %123, %alloca_317[%c0_403] : memref<4xvector<16xf32>>
              %124 = arith.addi %arg7, %c1 : index
              %125 = vector.load %alloc_308[%124, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c1_404 = arith.constant 1 : index
              memref.store %125, %alloca_317[%c1_404] : memref<4xvector<16xf32>>
              %126 = arith.addi %arg7, %c2 : index
              %127 = vector.load %alloc_308[%126, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c2_405 = arith.constant 2 : index
              memref.store %127, %alloca_317[%c2_405] : memref<4xvector<16xf32>>
              %128 = arith.addi %arg7, %c3 : index
              %129 = vector.load %alloc_308[%128, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c3_406 = arith.constant 3 : index
              memref.store %129, %alloca_317[%c3_406] : memref<4xvector<16xf32>>
              %c0_407 = arith.constant 0 : index
              %c256_408 = arith.constant 256 : index
              %c4_409 = arith.constant 4 : index
              scf.for %arg8 = %c0_407 to %c256_408 step %c4_409 {
                %134 = memref.load %alloc_312[%120, %arg8] : memref<32x256xf32>
                %135 = vector.broadcast %134 : f32 to vector<16xf32>
                %136 = vector.load %alloc_313[%arg8, %122] : memref<256x64xf32>, vector<16xf32>
                %c0_414 = arith.constant 0 : index
                %137 = memref.load %alloca_317[%c0_414] : memref<4xvector<16xf32>>
                %138 = vector.fma %135, %136, %137 : vector<16xf32>
                %c0_415 = arith.constant 0 : index
                memref.store %138, %alloca_317[%c0_415] : memref<4xvector<16xf32>>
                %c1_416 = arith.constant 1 : index
                %139 = arith.addi %arg8, %c1_416 : index
                %140 = memref.load %alloc_312[%120, %139] : memref<32x256xf32>
                %141 = vector.broadcast %140 : f32 to vector<16xf32>
                %142 = vector.load %alloc_313[%139, %122] : memref<256x64xf32>, vector<16xf32>
                %c0_417 = arith.constant 0 : index
                %143 = memref.load %alloca_317[%c0_417] : memref<4xvector<16xf32>>
                %144 = vector.fma %141, %142, %143 : vector<16xf32>
                %c0_418 = arith.constant 0 : index
                memref.store %144, %alloca_317[%c0_418] : memref<4xvector<16xf32>>
                %c2_419 = arith.constant 2 : index
                %145 = arith.addi %arg8, %c2_419 : index
                %146 = memref.load %alloc_312[%120, %145] : memref<32x256xf32>
                %147 = vector.broadcast %146 : f32 to vector<16xf32>
                %148 = vector.load %alloc_313[%145, %122] : memref<256x64xf32>, vector<16xf32>
                %c0_420 = arith.constant 0 : index
                %149 = memref.load %alloca_317[%c0_420] : memref<4xvector<16xf32>>
                %150 = vector.fma %147, %148, %149 : vector<16xf32>
                %c0_421 = arith.constant 0 : index
                memref.store %150, %alloca_317[%c0_421] : memref<4xvector<16xf32>>
                %c3_422 = arith.constant 3 : index
                %151 = arith.addi %arg8, %c3_422 : index
                %152 = memref.load %alloc_312[%120, %151] : memref<32x256xf32>
                %153 = vector.broadcast %152 : f32 to vector<16xf32>
                %154 = vector.load %alloc_313[%151, %122] : memref<256x64xf32>, vector<16xf32>
                %c0_423 = arith.constant 0 : index
                %155 = memref.load %alloca_317[%c0_423] : memref<4xvector<16xf32>>
                %156 = vector.fma %153, %154, %155 : vector<16xf32>
                %c0_424 = arith.constant 0 : index
                memref.store %156, %alloca_317[%c0_424] : memref<4xvector<16xf32>>
                %157 = arith.addi %120, %c1 : index
                %158 = memref.load %alloc_312[%157, %arg8] : memref<32x256xf32>
                %159 = vector.broadcast %158 : f32 to vector<16xf32>
                %160 = vector.load %alloc_313[%arg8, %122] : memref<256x64xf32>, vector<16xf32>
                %c1_425 = arith.constant 1 : index
                %161 = memref.load %alloca_317[%c1_425] : memref<4xvector<16xf32>>
                %162 = vector.fma %159, %160, %161 : vector<16xf32>
                %c1_426 = arith.constant 1 : index
                memref.store %162, %alloca_317[%c1_426] : memref<4xvector<16xf32>>
                %163 = memref.load %alloc_312[%157, %139] : memref<32x256xf32>
                %164 = vector.broadcast %163 : f32 to vector<16xf32>
                %165 = vector.load %alloc_313[%139, %122] : memref<256x64xf32>, vector<16xf32>
                %c1_427 = arith.constant 1 : index
                %166 = memref.load %alloca_317[%c1_427] : memref<4xvector<16xf32>>
                %167 = vector.fma %164, %165, %166 : vector<16xf32>
                %c1_428 = arith.constant 1 : index
                memref.store %167, %alloca_317[%c1_428] : memref<4xvector<16xf32>>
                %168 = memref.load %alloc_312[%157, %145] : memref<32x256xf32>
                %169 = vector.broadcast %168 : f32 to vector<16xf32>
                %170 = vector.load %alloc_313[%145, %122] : memref<256x64xf32>, vector<16xf32>
                %c1_429 = arith.constant 1 : index
                %171 = memref.load %alloca_317[%c1_429] : memref<4xvector<16xf32>>
                %172 = vector.fma %169, %170, %171 : vector<16xf32>
                %c1_430 = arith.constant 1 : index
                memref.store %172, %alloca_317[%c1_430] : memref<4xvector<16xf32>>
                %173 = memref.load %alloc_312[%157, %151] : memref<32x256xf32>
                %174 = vector.broadcast %173 : f32 to vector<16xf32>
                %175 = vector.load %alloc_313[%151, %122] : memref<256x64xf32>, vector<16xf32>
                %c1_431 = arith.constant 1 : index
                %176 = memref.load %alloca_317[%c1_431] : memref<4xvector<16xf32>>
                %177 = vector.fma %174, %175, %176 : vector<16xf32>
                %c1_432 = arith.constant 1 : index
                memref.store %177, %alloca_317[%c1_432] : memref<4xvector<16xf32>>
                %178 = arith.addi %120, %c2 : index
                %179 = memref.load %alloc_312[%178, %arg8] : memref<32x256xf32>
                %180 = vector.broadcast %179 : f32 to vector<16xf32>
                %181 = vector.load %alloc_313[%arg8, %122] : memref<256x64xf32>, vector<16xf32>
                %c2_433 = arith.constant 2 : index
                %182 = memref.load %alloca_317[%c2_433] : memref<4xvector<16xf32>>
                %183 = vector.fma %180, %181, %182 : vector<16xf32>
                %c2_434 = arith.constant 2 : index
                memref.store %183, %alloca_317[%c2_434] : memref<4xvector<16xf32>>
                %184 = memref.load %alloc_312[%178, %139] : memref<32x256xf32>
                %185 = vector.broadcast %184 : f32 to vector<16xf32>
                %186 = vector.load %alloc_313[%139, %122] : memref<256x64xf32>, vector<16xf32>
                %c2_435 = arith.constant 2 : index
                %187 = memref.load %alloca_317[%c2_435] : memref<4xvector<16xf32>>
                %188 = vector.fma %185, %186, %187 : vector<16xf32>
                %c2_436 = arith.constant 2 : index
                memref.store %188, %alloca_317[%c2_436] : memref<4xvector<16xf32>>
                %189 = memref.load %alloc_312[%178, %145] : memref<32x256xf32>
                %190 = vector.broadcast %189 : f32 to vector<16xf32>
                %191 = vector.load %alloc_313[%145, %122] : memref<256x64xf32>, vector<16xf32>
                %c2_437 = arith.constant 2 : index
                %192 = memref.load %alloca_317[%c2_437] : memref<4xvector<16xf32>>
                %193 = vector.fma %190, %191, %192 : vector<16xf32>
                %c2_438 = arith.constant 2 : index
                memref.store %193, %alloca_317[%c2_438] : memref<4xvector<16xf32>>
                %194 = memref.load %alloc_312[%178, %151] : memref<32x256xf32>
                %195 = vector.broadcast %194 : f32 to vector<16xf32>
                %196 = vector.load %alloc_313[%151, %122] : memref<256x64xf32>, vector<16xf32>
                %c2_439 = arith.constant 2 : index
                %197 = memref.load %alloca_317[%c2_439] : memref<4xvector<16xf32>>
                %198 = vector.fma %195, %196, %197 : vector<16xf32>
                %c2_440 = arith.constant 2 : index
                memref.store %198, %alloca_317[%c2_440] : memref<4xvector<16xf32>>
                %199 = arith.addi %120, %c3 : index
                %200 = memref.load %alloc_312[%199, %arg8] : memref<32x256xf32>
                %201 = vector.broadcast %200 : f32 to vector<16xf32>
                %202 = vector.load %alloc_313[%arg8, %122] : memref<256x64xf32>, vector<16xf32>
                %c3_441 = arith.constant 3 : index
                %203 = memref.load %alloca_317[%c3_441] : memref<4xvector<16xf32>>
                %204 = vector.fma %201, %202, %203 : vector<16xf32>
                %c3_442 = arith.constant 3 : index
                memref.store %204, %alloca_317[%c3_442] : memref<4xvector<16xf32>>
                %205 = memref.load %alloc_312[%199, %139] : memref<32x256xf32>
                %206 = vector.broadcast %205 : f32 to vector<16xf32>
                %207 = vector.load %alloc_313[%139, %122] : memref<256x64xf32>, vector<16xf32>
                %c3_443 = arith.constant 3 : index
                %208 = memref.load %alloca_317[%c3_443] : memref<4xvector<16xf32>>
                %209 = vector.fma %206, %207, %208 : vector<16xf32>
                %c3_444 = arith.constant 3 : index
                memref.store %209, %alloca_317[%c3_444] : memref<4xvector<16xf32>>
                %210 = memref.load %alloc_312[%199, %145] : memref<32x256xf32>
                %211 = vector.broadcast %210 : f32 to vector<16xf32>
                %212 = vector.load %alloc_313[%145, %122] : memref<256x64xf32>, vector<16xf32>
                %c3_445 = arith.constant 3 : index
                %213 = memref.load %alloca_317[%c3_445] : memref<4xvector<16xf32>>
                %214 = vector.fma %211, %212, %213 : vector<16xf32>
                %c3_446 = arith.constant 3 : index
                memref.store %214, %alloca_317[%c3_446] : memref<4xvector<16xf32>>
                %215 = memref.load %alloc_312[%199, %151] : memref<32x256xf32>
                %216 = vector.broadcast %215 : f32 to vector<16xf32>
                %217 = vector.load %alloc_313[%151, %122] : memref<256x64xf32>, vector<16xf32>
                %c3_447 = arith.constant 3 : index
                %218 = memref.load %alloca_317[%c3_447] : memref<4xvector<16xf32>>
                %219 = vector.fma %216, %217, %218 : vector<16xf32>
                %c3_448 = arith.constant 3 : index
                memref.store %219, %alloca_317[%c3_448] : memref<4xvector<16xf32>>
              }
              %c0_410 = arith.constant 0 : index
              %130 = memref.load %alloca_317[%c0_410] : memref<4xvector<16xf32>>
              vector.store %130, %alloc_308[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c1_411 = arith.constant 1 : index
              %131 = memref.load %alloca_317[%c1_411] : memref<4xvector<16xf32>>
              vector.store %131, %alloc_308[%124, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c2_412 = arith.constant 2 : index
              %132 = memref.load %alloca_317[%c2_412] : memref<4xvector<16xf32>>
              vector.store %132, %alloc_308[%126, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c3_413 = arith.constant 3 : index
              %133 = memref.load %alloca_317[%c3_413] : memref<4xvector<16xf32>>
              vector.store %133, %alloc_308[%128, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    %c0_318 = arith.constant 0 : index
    %c64_319 = arith.constant 64 : index
    %c1_320 = arith.constant 1 : index
    scf.for %arg3 = %c0_318 to %c64_319 step %c1_320 {
      %c0_389 = arith.constant 0 : index
      %c768_390 = arith.constant 768 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c768_390 step %c1_391 {
        %117 = memref.load %alloc_308[%arg3, %arg4] : memref<64x768xf32>
        %118 = memref.load %alloc_24[%arg4] : memref<768xf32>
        %119 = arith.addf %117, %118 : f32
        memref.store %119, %alloc_308[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_321 = memref.reinterpret_cast %alloc_308 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_322 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_323 = arith.constant 0 : index
    %c64_324 = arith.constant 64 : index
    %c1_325 = arith.constant 1 : index
    scf.for %arg3 = %c0_323 to %c64_324 step %c1_325 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_191[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = memref.load %reinterpret_cast_321[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = arith.addf %117, %118 : f32
          memref.store %119, %alloc_322[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_326 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_327 = arith.constant 0 : index
    %c64_328 = arith.constant 64 : index
    %c1_329 = arith.constant 1 : index
    scf.for %arg3 = %c0_327 to %c64_328 step %c1_329 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_322[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_395 = arith.constant 0 : index
          %118 = memref.load %alloc_37[%c0_395, %arg4, %arg5] : memref<1x1x768xf32>
          %119 = arith.addf %117, %118 : f32
          memref.store %119, %alloc_326[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_330 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_331 = arith.constant 0 : index
    %c64_332 = arith.constant 64 : index
    %c1_333 = arith.constant 1 : index
    scf.for %arg3 = %c0_331 to %c64_332 step %c1_333 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          memref.store %cst_1, %alloc_330[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %c0_334 = arith.constant 0 : index
    %c64_335 = arith.constant 64 : index
    %c1_336 = arith.constant 1 : index
    scf.for %arg3 = %c0_334 to %c64_335 step %c1_336 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_326[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_395 = arith.constant 0 : index
          %118 = memref.load %alloc_330[%arg3, %arg4, %c0_395] : memref<64x1x1xf32>
          %119 = arith.addf %118, %117 : f32
          %c0_396 = arith.constant 0 : index
          memref.store %119, %alloc_330[%arg3, %arg4, %c0_396] : memref<64x1x1xf32>
        }
      }
    }
    %c0_337 = arith.constant 0 : index
    %c64_338 = arith.constant 64 : index
    %c1_339 = arith.constant 1 : index
    scf.for %arg3 = %c0_337 to %c64_338 step %c1_339 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          %117 = memref.load %alloc_330[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = arith.divf %117, %cst : f32
          memref.store %118, %alloc_330[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_340 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_341 = arith.constant 0 : index
    %c64_342 = arith.constant 64 : index
    %c1_343 = arith.constant 1 : index
    scf.for %arg3 = %c0_341 to %c64_342 step %c1_343 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_326[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_395 = arith.constant 0 : index
          %118 = memref.load %alloc_330[%arg3, %arg4, %c0_395] : memref<64x1x1xf32>
          %119 = arith.subf %117, %118 : f32
          memref.store %119, %alloc_340[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_344 = memref.alloc() : memref<f32>
    %cast_345 = memref.cast %alloc_344 : memref<f32> to memref<*xf32>
    %103 = llvm.mlir.addressof @constant_44 : !llvm.ptr<array<12 x i8>>
    %104 = llvm.getelementptr %103[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%104, %cast_345) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_346 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_347 = arith.constant 0 : index
    %c64_348 = arith.constant 64 : index
    %c1_349 = arith.constant 1 : index
    scf.for %arg3 = %c0_347 to %c64_348 step %c1_349 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_340[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = memref.load %alloc_344[] : memref<f32>
          %119 = math.powf %117, %118 : f32
          memref.store %119, %alloc_346[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_350 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_351 = arith.constant 0 : index
    %c64_352 = arith.constant 64 : index
    %c1_353 = arith.constant 1 : index
    scf.for %arg3 = %c0_351 to %c64_352 step %c1_353 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          memref.store %cst_1, %alloc_350[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %c0_354 = arith.constant 0 : index
    %c64_355 = arith.constant 64 : index
    %c1_356 = arith.constant 1 : index
    scf.for %arg3 = %c0_354 to %c64_355 step %c1_356 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_346[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_395 = arith.constant 0 : index
          %118 = memref.load %alloc_350[%arg3, %arg4, %c0_395] : memref<64x1x1xf32>
          %119 = arith.addf %118, %117 : f32
          %c0_396 = arith.constant 0 : index
          memref.store %119, %alloc_350[%arg3, %arg4, %c0_396] : memref<64x1x1xf32>
        }
      }
    }
    %c0_357 = arith.constant 0 : index
    %c64_358 = arith.constant 64 : index
    %c1_359 = arith.constant 1 : index
    scf.for %arg3 = %c0_357 to %c64_358 step %c1_359 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          %117 = memref.load %alloc_350[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = arith.divf %117, %cst : f32
          memref.store %118, %alloc_350[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_360 = memref.alloc() : memref<f32>
    %cast_361 = memref.cast %alloc_360 : memref<f32> to memref<*xf32>
    %105 = llvm.mlir.addressof @constant_45 : !llvm.ptr<array<12 x i8>>
    %106 = llvm.getelementptr %105[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%106, %cast_361) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_362 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_363 = arith.constant 0 : index
    %c64_364 = arith.constant 64 : index
    %c1_365 = arith.constant 1 : index
    scf.for %arg3 = %c0_363 to %c64_364 step %c1_365 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          %117 = memref.load %alloc_350[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = memref.load %alloc_360[] : memref<f32>
          %119 = arith.addf %117, %118 : f32
          memref.store %119, %alloc_362[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_366 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_367 = arith.constant 0 : index
    %c64_368 = arith.constant 64 : index
    %c1_369 = arith.constant 1 : index
    scf.for %arg3 = %c0_367 to %c64_368 step %c1_369 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c1_393 step %c1_394 {
          %117 = memref.load %alloc_362[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %118 = math.sqrt %117 : f32
          memref.store %118, %alloc_366[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_370 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_371 = arith.constant 0 : index
    %c64_372 = arith.constant 64 : index
    %c1_373 = arith.constant 1 : index
    scf.for %arg3 = %c0_371 to %c64_372 step %c1_373 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_340[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_395 = arith.constant 0 : index
          %118 = memref.load %alloc_366[%arg3, %arg4, %c0_395] : memref<64x1x1xf32>
          %119 = arith.divf %117, %118 : f32
          memref.store %119, %alloc_370[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_374 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_375 = arith.constant 0 : index
    %c64_376 = arith.constant 64 : index
    %c1_377 = arith.constant 1 : index
    scf.for %arg3 = %c0_375 to %c64_376 step %c1_377 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_370[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = memref.load %alloc_26[%arg5] : memref<768xf32>
          %119 = arith.mulf %117, %118 : f32
          memref.store %119, %alloc_374[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_378 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_379 = arith.constant 0 : index
    %c64_380 = arith.constant 64 : index
    %c1_381 = arith.constant 1 : index
    scf.for %arg3 = %c0_379 to %c64_380 step %c1_381 {
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg4 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c768_393 = arith.constant 768 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg5 = %c0_392 to %c768_393 step %c1_394 {
          %117 = memref.load %alloc_374[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %118 = memref.load %alloc_28[%arg5] : memref<768xf32>
          %119 = arith.addf %117, %118 : f32
          memref.store %119, %alloc_378[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %107 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref3", 0 : i32]], alignment = 16 : i64} : <1, memref<64x1x50264xf32>>
    %108 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %108 : !llvm.ptr<i64>
    %109 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %109 : !llvm.ptr<i64>
    %110 = rmem.slot %c0 {mem = "t3"} : (index) -> memref<1x50264xf32>
    %c0_382 = arith.constant 0 : index
    %c64_383 = arith.constant 64 : index
    %c1_384 = arith.constant 1 : index
    %111:3 = scf.for %arg3 = %c0_382 to %c64_383 step %c1_384 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %110) -> (index, index, memref<1x50264xf32>) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = rmem.slot %arg4 {mem = "t3"} : (index) -> memref<1x50264xf32>
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg7 = %c0_389 to %c1_390 step %c1_391 {
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg8 = %c0_392 to %c1_393 step %c1_394 {
          %c0_395 = arith.constant 0 : index
          %c50264_396 = arith.constant 50264 : index
          %c1_397 = arith.constant 1 : index
          scf.for %arg9 = %c0_395 to %c50264_396 step %c1_397 {
            %c50264_398 = arith.constant 50264 : index
            %122 = arith.muli %arg8, %c50264_398 : index
            %123 = arith.addi %122, %arg9 : index
            memref.store %cst_1, %arg6[%arg7, %123] : memref<1x50264xf32>
          }
        }
      }
      %120 = rmem.wrid : index
      %121 = rmem.rdma %arg5, %107[%arg3] %c50264 0 %120 {map = #map3, mem = "t3"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %109 -> %120 : <i64>, index
      scf.yield %117, %118, %119 : index, index, memref<1x50264xf32>
    }
    %112 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %112 : !llvm.ptr<i64>
    %113 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %113 : !llvm.ptr<i64>
    %114 = rmem.wrid : index
    %115 = rmem.rdma %c0, %107[%c0] %c50264 4 %114 {map = #map3, mem = "t3"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %c0_385 = arith.constant 0 : index
    %c64_386 = arith.constant 64 : index
    %c1_387 = arith.constant 1 : index
    %alloca_388 = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
    %116:4 = scf.for %arg3 = %c0_385 to %c64_386 step %c1_387 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %115, %arg7 = %114) -> (index, index, memref<1x50264xf32>, index) {
      %117 = arith.addi %arg4, %c1 : index
      %118 = arith.addi %arg5, %c1 : index
      %119 = arith.addi %arg3, %c1 : index
      %120 = rmem.wrid : index
      %121 = rmem.rdma %arg4, %107[%119] %c50264 4 %120 {map = #map3, mem = "t3"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %112 -> %arg7 : <i64>, index
      %c0_389 = arith.constant 0 : index
      %c1_390 = arith.constant 1 : index
      %c1_391 = arith.constant 1 : index
      scf.for %arg8 = %c0_389 to %c1_390 step %c1_391 {
        %124 = arith.addi %arg3, %arg8 : index
        %c0_392 = arith.constant 0 : index
        %c1_393 = arith.constant 1 : index
        %c1_394 = arith.constant 1 : index
        scf.for %arg9 = %c0_392 to %c1_393 step %c1_394 {
          %c0_395 = arith.constant 0 : index
          %c50264_396 = arith.constant 50264 : index
          %c8 = arith.constant 8 : index
          scf.for %arg10 = %c0_395 to %c50264_396 step %c8 {
            %c0_397 = arith.constant 0 : index
            %c768_398 = arith.constant 768 : index
            %c8_399 = arith.constant 8 : index
            scf.for %arg11 = %c0_397 to %c768_398 step %c8_399 {
              %c0_400 = arith.constant 0 : index
              %c1_401 = arith.constant 1 : index
              %c1_402 = arith.constant 1 : index
              scf.for %arg12 = %c0_400 to %c1_401 step %c1_402 {
                %125 = arith.addi %arg12, %arg9 : index
                %c50264_403 = arith.constant 50264 : index
                %126 = arith.muli %arg9, %c50264_403 : index
                %127 = arith.addi %126, %arg10 : index
                %c50264_404 = arith.constant 50264 : index
                %128 = arith.muli %arg12, %c50264_404 : index
                %129 = arith.addi %127, %128 : index
                %130 = vector.load %arg6[%arg8, %129] : memref<1x50264xf32>, vector<8xf32>
                %c0_405 = arith.constant 0 : index
                memref.store %130, %alloca_388[%c0_405] : memref<1xvector<8xf32>>
                %131 = memref.load %alloc_378[%124, %125, %arg11] : memref<64x1x768xf32>
                %132 = vector.broadcast %131 : f32 to vector<8xf32>
                %133 = vector.load %alloc_32[%arg11, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %c0_406 = arith.constant 0 : index
                %134 = memref.load %alloca_388[%c0_406] : memref<1xvector<8xf32>>
                %135 = vector.fma %132, %133, %134 : vector<8xf32>
                %c0_407 = arith.constant 0 : index
                memref.store %135, %alloca_388[%c0_407] : memref<1xvector<8xf32>>
                %136 = arith.addi %arg11, %c1 : index
                %137 = memref.load %alloc_378[%124, %125, %136] : memref<64x1x768xf32>
                %138 = vector.broadcast %137 : f32 to vector<8xf32>
                %139 = vector.load %alloc_32[%136, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %c0_408 = arith.constant 0 : index
                %140 = memref.load %alloca_388[%c0_408] : memref<1xvector<8xf32>>
                %141 = vector.fma %138, %139, %140 : vector<8xf32>
                %c0_409 = arith.constant 0 : index
                memref.store %141, %alloca_388[%c0_409] : memref<1xvector<8xf32>>
                %142 = arith.addi %arg11, %c2 : index
                %143 = memref.load %alloc_378[%124, %125, %142] : memref<64x1x768xf32>
                %144 = vector.broadcast %143 : f32 to vector<8xf32>
                %145 = vector.load %alloc_32[%142, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %c0_410 = arith.constant 0 : index
                %146 = memref.load %alloca_388[%c0_410] : memref<1xvector<8xf32>>
                %147 = vector.fma %144, %145, %146 : vector<8xf32>
                %c0_411 = arith.constant 0 : index
                memref.store %147, %alloca_388[%c0_411] : memref<1xvector<8xf32>>
                %148 = arith.addi %arg11, %c3 : index
                %149 = memref.load %alloc_378[%124, %125, %148] : memref<64x1x768xf32>
                %150 = vector.broadcast %149 : f32 to vector<8xf32>
                %151 = vector.load %alloc_32[%148, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %c0_412 = arith.constant 0 : index
                %152 = memref.load %alloca_388[%c0_412] : memref<1xvector<8xf32>>
                %153 = vector.fma %150, %151, %152 : vector<8xf32>
                %c0_413 = arith.constant 0 : index
                memref.store %153, %alloca_388[%c0_413] : memref<1xvector<8xf32>>
                %154 = arith.addi %arg11, %c4 : index
                %155 = memref.load %alloc_378[%124, %125, %154] : memref<64x1x768xf32>
                %156 = vector.broadcast %155 : f32 to vector<8xf32>
                %157 = vector.load %alloc_32[%154, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %c0_414 = arith.constant 0 : index
                %158 = memref.load %alloca_388[%c0_414] : memref<1xvector<8xf32>>
                %159 = vector.fma %156, %157, %158 : vector<8xf32>
                %c0_415 = arith.constant 0 : index
                memref.store %159, %alloca_388[%c0_415] : memref<1xvector<8xf32>>
                %160 = arith.addi %arg11, %c5 : index
                %161 = memref.load %alloc_378[%124, %125, %160] : memref<64x1x768xf32>
                %162 = vector.broadcast %161 : f32 to vector<8xf32>
                %163 = vector.load %alloc_32[%160, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %c0_416 = arith.constant 0 : index
                %164 = memref.load %alloca_388[%c0_416] : memref<1xvector<8xf32>>
                %165 = vector.fma %162, %163, %164 : vector<8xf32>
                %c0_417 = arith.constant 0 : index
                memref.store %165, %alloca_388[%c0_417] : memref<1xvector<8xf32>>
                %166 = arith.addi %arg11, %c6 : index
                %167 = memref.load %alloc_378[%124, %125, %166] : memref<64x1x768xf32>
                %168 = vector.broadcast %167 : f32 to vector<8xf32>
                %169 = vector.load %alloc_32[%166, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %c0_418 = arith.constant 0 : index
                %170 = memref.load %alloca_388[%c0_418] : memref<1xvector<8xf32>>
                %171 = vector.fma %168, %169, %170 : vector<8xf32>
                %c0_419 = arith.constant 0 : index
                memref.store %171, %alloca_388[%c0_419] : memref<1xvector<8xf32>>
                %172 = arith.addi %arg11, %c7 : index
                %173 = memref.load %alloc_378[%124, %125, %172] : memref<64x1x768xf32>
                %174 = vector.broadcast %173 : f32 to vector<8xf32>
                %175 = vector.load %alloc_32[%172, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %c0_420 = arith.constant 0 : index
                %176 = memref.load %alloca_388[%c0_420] : memref<1xvector<8xf32>>
                %177 = vector.fma %174, %175, %176 : vector<8xf32>
                %c0_421 = arith.constant 0 : index
                memref.store %177, %alloca_388[%c0_421] : memref<1xvector<8xf32>>
                %c0_422 = arith.constant 0 : index
                %178 = memref.load %alloca_388[%c0_422] : memref<1xvector<8xf32>>
                vector.store %178, %arg6[%arg8, %129] : memref<1x50264xf32>, vector<8xf32>
              }
            }
          }
        }
      }
      %122 = rmem.wrid : index
      %123 = rmem.rdma %arg5, %107[%arg3] %c50264 0 %122 {map = #map3, mem = "t3"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %113 -> %122 : <i64>, index
      scf.yield %117, %118, %121, %120 : index, index, memref<1x50264xf32>, index
    }
    return %107 : !rmem.rmref<1, memref<64x1x50264xf32>>
  }
}


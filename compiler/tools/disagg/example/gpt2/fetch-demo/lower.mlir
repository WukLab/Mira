module attributes {rmem.templates = {t0 = ["ref0", 8192, 0, 768, f32, 768, 1, 1]}} {
  llvm.func @rsync(!llvm.ptr<i64>, i64)
  llvm.mlir.global external @rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.func @rdma_req(i64, i64, i64, i64, i32)
  llvm.mlir.global external @rdma_wrid_cnt() {addr_space = 0 : i32} : i64
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, %arg1: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>) attributes {access_mem_catcher = [["ref0", 0]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %0 = llvm.mlir.constant(4 : i32) : i32
    %1 = llvm.mlir.constant(4 : i64) : i64
    %2 = llvm.mlir.constant(768 : i64) : i64
    %3 = llvm.mlir.constant(3735928559 : index) : i64
    %4 = llvm.mlir.constant(16 : index) : i64
    %5 = llvm.mlir.constant(1 : i64) : i64
    %6 = llvm.mlir.constant(1 : index) : i64
    %7 = llvm.mlir.constant(0 : index) : i64
    %8 = llvm.mlir.constant(0 : i64) : i64
    %9 = llvm.mlir.constant(64 : index) : i64
    %10 = llvm.mlir.constant(768 : index) : i64
    %11 = llvm.mlir.null : !llvm.ptr<f32>
    %12 = llvm.getelementptr %11[49152] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %13 = llvm.ptrtoint %12 : !llvm.ptr<f32> to i64
    %14 = llvm.add %13, %4  : i64
    %15 = llvm.call @malloc(%14) : (i64) -> !llvm.ptr<i8>
    %16 = llvm.bitcast %15 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %17 = llvm.ptrtoint %16 : !llvm.ptr<f32> to i64
    %18 = llvm.sub %4, %6  : i64
    %19 = llvm.add %17, %18  : i64
    %20 = llvm.urem %19, %4  : i64
    %21 = llvm.sub %19, %20  : i64
    %22 = llvm.inttoptr %21 : i64 to !llvm.ptr<f32>
    %23 = llvm.alloca %5 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %8, %23 : !llvm.ptr<i64>
    %24 = llvm.alloca %5 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %8, %24 : !llvm.ptr<i64>
    %25 = llvm.mlir.addressof @rdma_wrid_cnt : !llvm.ptr<i64>
    %26 = llvm.load %25 : !llvm.ptr<i64>
    %27 = llvm.add %26, %5  : i64
    llvm.store %27, %25 : !llvm.ptr<i64>
    %28 = llvm.getelementptr %11[768] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %29 = llvm.inttoptr %3 : i64 to !llvm.ptr<f32>
    %30 = llvm.mlir.addressof @rbuf : !llvm.ptr<ptr<i8>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<i8>>
    %32 = llvm.mul %2, %1  : i64
    %33 = llvm.mul %32, %8  : i64
    %34 = llvm.getelementptr %31[%33] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %35 = llvm.bitcast %34 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %29, %36[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.insertvalue %7, %38[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %10, %39[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.insertvalue %6, %40[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.ptrtoint %35 : !llvm.ptr<f32> to i64
    %43 = llvm.ptrtoint %28 : !llvm.ptr<f32> to i64
    %44 = llvm.extractvalue %arg0[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %45 = llvm.extractvalue %arg0[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %46 = llvm.add %45, %7  : i64
    %47 = llvm.getelementptr %44[%46] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %48 = llvm.ptrtoint %47 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%42, %43, %48, %26, %0) : (i64, i64, i64, i64, i32) -> ()
    llvm.call @rsync(%23, %26) : (!llvm.ptr<i64>, i64) -> ()
    llvm.br ^bb1(%7, %41 : i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb1(%49: i64, %50: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>):  // 2 preds: ^bb0, ^bb11
    %51 = llvm.icmp "slt" %49, %9 : i64
    llvm.cond_br %51, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%7 : i64)
  ^bb3(%52: i64):  // 2 preds: ^bb2, ^bb10
    %53 = llvm.icmp "slt" %52, %6 : i64
    llvm.cond_br %53, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%7 : i64)
  ^bb5(%54: i64):  // 2 preds: ^bb4, ^bb9
    %55 = llvm.icmp "slt" %54, %6 : i64
    llvm.cond_br %55, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    llvm.br ^bb7(%7 : i64)
  ^bb7(%56: i64):  // 2 preds: ^bb6, ^bb8
    %57 = llvm.icmp "slt" %56, %10 : i64
    llvm.cond_br %57, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %58 = llvm.add %49, %52  : i64
    %59 = llvm.extractvalue %arg1[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %60 = llvm.mul %58, %10  : i64
    %61 = llvm.mul %54, %10  : i64
    %62 = llvm.add %60, %61  : i64
    %63 = llvm.add %62, %56  : i64
    %64 = llvm.getelementptr %59[%63] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %65 = llvm.load %64 : !llvm.ptr<f32>
    %66 = llvm.add %61, %56  : i64
    %67 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.getelementptr %67[%66] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %69 = llvm.load %68 : !llvm.ptr<f32>
    %70 = llvm.fadd %65, %69  : f32
    %71 = llvm.getelementptr %22[%63] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %70, %71 : !llvm.ptr<f32>
    %72 = llvm.add %56, %6  : i64
    llvm.br ^bb7(%72 : i64)
  ^bb9:  // pred: ^bb7
    %73 = llvm.add %54, %6  : i64
    llvm.br ^bb5(%73 : i64)
  ^bb10:  // pred: ^bb5
    %74 = llvm.add %52, %6  : i64
    llvm.br ^bb3(%74 : i64)
  ^bb11:  // pred: ^bb3
    %75 = llvm.add %49, %6  : i64
    llvm.br ^bb1(%75, %50 : i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>)
  ^bb12:  // pred: ^bb1
    llvm.return
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, %arg1: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>) attributes {access_mem_catcher = [["ref0", 0]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    llvm.call @main_graph(%arg0, %arg1) : (!llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>) -> ()
    llvm.return
  }
}


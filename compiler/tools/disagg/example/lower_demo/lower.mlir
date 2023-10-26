module attributes {rmem.pools = [["ref2"], ["ref0", "ref1"]], rmem.templates = {t0 = ["ref0", 0, 0, 12582912, f32, 196608, 1, 1 : i32], t1 = ["ref1", 0, 0, 196608, f32, 3072, 1, 1 : i32], t2 = ["ref2", 786432, 0, 12582912, f32, 196608, 1, 1 : i32]}} {
  llvm.func @rsync(!llvm.ptr<i64>, i64)
  llvm.func @rdma_req(i64, i64, i64, i64, i32)
  llvm.mlir.global external @rdma_wrid_cnt() {addr_space = 0 : i32} : i64
  llvm.mlir.global external @rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.func @_disagg_alloc(i32, i64) -> !llvm.ptr<i8>
  llvm.func @trans_matmul(%arg0: !llvm.ptr<f32>, %arg1: !llvm.ptr<f32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<f32>, %arg12: !llvm.ptr<f32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> attributes {access_mem_catcher = [["ref2", 0 : i32]], llvm.emit_c_interface} {
    %0 = llvm.mlir.constant(768 : index) : i64
    %1 = llvm.mlir.constant(8 : index) : i64
    %2 = llvm.mlir.constant(3072 : i64) : i64
    %3 = llvm.mlir.constant(3072 : index) : i64
    %4 = llvm.mlir.constant(0 : i32) : i32
    %5 = llvm.mlir.constant(4 : i32) : i32
    %6 = llvm.mlir.constant(4 : i64) : i64
    %7 = llvm.mlir.constant(196608 : i64) : i64
    %8 = llvm.mlir.constant(3735928559 : index) : i64
    %9 = llvm.mlir.constant(1 : i64) : i64
    %10 = llvm.mlir.constant(0 : i64) : i64
    %11 = llvm.mlir.constant(0 : index) : i64
    %12 = llvm.mlir.constant(16 : index) : i64
    %13 = llvm.mlir.constant(2 : i32) : i32
    %14 = llvm.mlir.constant(196608 : index) : i64
    %15 = llvm.mlir.constant(16384 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(256 : index) : i64
    %18 = llvm.mlir.constant(12 : index) : i64
    %19 = llvm.mlir.constant(64 : index) : i64
    %20 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %21 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %22 = llvm.mlir.null : !llvm.ptr<f32>
    %23 = llvm.getelementptr %22[12582912] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %24 = llvm.ptrtoint %23 : !llvm.ptr<f32> to i64
    %25 = llvm.add %24, %12  : i64
    %26 = llvm.call @_disagg_alloc(%13, %25) : (i32, i64) -> !llvm.ptr<i8>
    %27 = llvm.bitcast %26 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %28 = llvm.ptrtoint %27 : !llvm.ptr<f32> to i64
    %29 = llvm.sub %12, %16  : i64
    %30 = llvm.add %28, %29  : i64
    %31 = llvm.urem %30, %12  : i64
    %32 = llvm.sub %30, %31  : i64
    %33 = llvm.inttoptr %32 : i64 to !llvm.ptr<f32>
    %34 = llvm.alloca %9 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %10, %34 : !llvm.ptr<i64>
    %35 = llvm.alloca %9 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %10, %35 : !llvm.ptr<i64>
    %36 = llvm.getelementptr %22[196608] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %37 = llvm.inttoptr %8 : i64 to !llvm.ptr<f32>
    %38 = llvm.mlir.addressof @rbuf : !llvm.ptr<ptr<i8>>
    %39 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %40 = llvm.mul %7, %6  : i64
    %41 = llvm.mul %40, %10  : i64
    %42 = llvm.getelementptr %39[%41] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %43 = llvm.bitcast %42 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %44 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %45 = llvm.insertvalue %37, %44[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.insertvalue %43, %45[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.insertvalue %11, %46[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.insertvalue %16, %47[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.insertvalue %14, %48[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.insertvalue %14, %49[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.insertvalue %16, %50[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.mlir.addressof @rdma_wrid_cnt : !llvm.ptr<i64>
    %53 = llvm.load %52 : !llvm.ptr<i64>
    %54 = llvm.add %53, %9  : i64
    llvm.store %54, %52 : !llvm.ptr<i64>
    %55 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %56 = llvm.getelementptr %55[%41] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %58 = llvm.insertvalue %57, %45[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.insertvalue %11, %58[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.insertvalue %16, %59[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.insertvalue %14, %60[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.insertvalue %14, %61[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %63 = llvm.insertvalue %16, %62[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.ptrtoint %57 : !llvm.ptr<f32> to i64
    %65 = llvm.ptrtoint %36 : !llvm.ptr<f32> to i64
    %66 = llvm.add %arg2, %11  : i64
    %67 = llvm.getelementptr %arg1[%66] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %68 = llvm.ptrtoint %67 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%64, %65, %68, %53, %5) : (i64, i64, i64, i64, i32) -> ()
    llvm.br ^bb1(%11, %51, %63, %53 : i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64)
  ^bb1(%69: i64, %70: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %71: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %72: i64):  // 2 preds: ^bb0, ^bb14
    %73 = llvm.icmp "slt" %69, %19 : i64
    llvm.cond_br %73, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %74 = llvm.add %69, %16  : i64
    %75 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %76 = llvm.getelementptr %75[%41] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %78 = llvm.insertvalue %77, %45[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.insertvalue %11, %78[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.insertvalue %16, %79[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.insertvalue %14, %80[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.insertvalue %14, %81[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %83 = llvm.insertvalue %16, %82[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %84 = llvm.load %52 : !llvm.ptr<i64>
    %85 = llvm.add %84, %9  : i64
    llvm.store %85, %52 : !llvm.ptr<i64>
    %86 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %87 = llvm.getelementptr %86[%41] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %88 = llvm.bitcast %87 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %89 = llvm.insertvalue %88, %45[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.insertvalue %11, %89[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %91 = llvm.insertvalue %16, %90[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %92 = llvm.insertvalue %14, %91[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %93 = llvm.insertvalue %14, %92[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %94 = llvm.insertvalue %16, %93[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %95 = llvm.ptrtoint %88 : !llvm.ptr<f32> to i64
    %96 = llvm.mul %74, %14  : i64
    %97 = llvm.add %96, %arg2  : i64
    %98 = llvm.getelementptr %arg1[%97] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %99 = llvm.ptrtoint %98 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%95, %65, %99, %84, %5) : (i64, i64, i64, i64, i32) -> ()
    llvm.call @rsync(%34, %72) : (!llvm.ptr<i64>, i64) -> ()
    llvm.br ^bb3(%11 : i64)
  ^bb3(%100: i64):  // 2 preds: ^bb2, ^bb13
    %101 = llvm.icmp "slt" %100, %16 : i64
    llvm.cond_br %101, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%11 : i64)
  ^bb5(%102: i64):  // 2 preds: ^bb4, ^bb12
    %103 = llvm.icmp "slt" %102, %18 : i64
    llvm.cond_br %103, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    llvm.br ^bb7(%11 : i64)
  ^bb7(%104: i64):  // 2 preds: ^bb6, ^bb11
    %105 = llvm.icmp "slt" %104, %17 : i64
    llvm.cond_br %105, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%11 : i64)
  ^bb9(%106: i64):  // 2 preds: ^bb8, ^bb10
    %107 = llvm.icmp "slt" %106, %19 : i64
    llvm.cond_br %107, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %108 = llvm.mul %102, %15  : i64
    %109 = llvm.mul %104, %19  : i64
    %110 = llvm.add %108, %109  : i64
    %111 = llvm.add %110, %106  : i64
    %112 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %113 = llvm.mul %100, %14  : i64
    %114 = llvm.add %113, %111  : i64
    %115 = llvm.getelementptr %112[%114] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %116 = llvm.load %115 : !llvm.ptr<f32>
    %117 = llvm.add %108, %104  : i64
    %118 = llvm.mul %106, %17  : i64
    %119 = llvm.add %117, %118  : i64
    %120 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %121 = llvm.add %113, %119  : i64
    %122 = llvm.getelementptr %120[%121] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %116, %122 : !llvm.ptr<f32>
    %123 = llvm.add %106, %16  : i64
    llvm.br ^bb9(%123 : i64)
  ^bb11:  // pred: ^bb9
    %124 = llvm.add %104, %16  : i64
    llvm.br ^bb7(%124 : i64)
  ^bb12:  // pred: ^bb7
    %125 = llvm.add %102, %16  : i64
    llvm.br ^bb5(%125 : i64)
  ^bb13:  // pred: ^bb5
    %126 = llvm.add %100, %16  : i64
    llvm.br ^bb3(%126 : i64)
  ^bb14:  // pred: ^bb3
    %127 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %128 = llvm.getelementptr %127[%41] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %129 = llvm.bitcast %128 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %130 = llvm.ptrtoint %129 : !llvm.ptr<f32> to i64
    %131 = llvm.mul %69, %14  : i64
    %132 = llvm.add %131, %11  : i64
    %133 = llvm.getelementptr %33[%132] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %134 = llvm.ptrtoint %133 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%130, %65, %134, %10, %4) : (i64, i64, i64, i64, i32) -> ()
    llvm.call @rsync(%35, %10) : (!llvm.ptr<i64>, i64) -> ()
    llvm.br ^bb1(%74, %83, %94, %84 : i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64)
  ^bb15:  // pred: ^bb1
    %135 = llvm.add %65, %12  : i64
    %136 = llvm.call @_disagg_alloc(%13, %135) : (i32, i64) -> !llvm.ptr<i8>
    %137 = llvm.bitcast %136 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %138 = llvm.ptrtoint %137 : !llvm.ptr<f32> to i64
    %139 = llvm.add %138, %29  : i64
    %140 = llvm.urem %139, %12  : i64
    %141 = llvm.sub %139, %140  : i64
    %142 = llvm.inttoptr %141 : i64 to !llvm.ptr<f32>
    %143 = llvm.insertvalue %137, %21[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %142, %143[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %11, %144[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %19, %145[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %18, %146[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %16, %147[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %17, %148[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %3, %149[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %17, %150[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %17, %151[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %16, %152[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.alloca %9 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %10, %154 : !llvm.ptr<i64>
    %155 = llvm.alloca %9 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %10, %155 : !llvm.ptr<i64>
    %156 = llvm.getelementptr %22[3072] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %157 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %158 = llvm.mul %2, %6  : i64
    %159 = llvm.mul %158, %10  : i64
    %160 = llvm.getelementptr %157[%159] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %161 = llvm.bitcast %160 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %162 = llvm.insertvalue %161, %45[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %163 = llvm.insertvalue %11, %162[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.insertvalue %16, %163[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.insertvalue %3, %164[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.insertvalue %3, %165[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.insertvalue %16, %166[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb16(%11, %167 : i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>)
  ^bb16(%168: i64, %169: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>):  // 2 preds: ^bb15, ^bb29
    %170 = llvm.icmp "slt" %168, %19 : i64
    llvm.cond_br %170, ^bb17, ^bb30
  ^bb17:  // pred: ^bb16
    %171 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %172 = llvm.getelementptr %171[%159] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %173 = llvm.bitcast %172 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %174 = llvm.insertvalue %173, %45[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %175 = llvm.insertvalue %11, %174[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %176 = llvm.insertvalue %16, %175[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %177 = llvm.insertvalue %3, %176[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %178 = llvm.insertvalue %3, %177[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %179 = llvm.insertvalue %16, %178[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb18(%11 : i64)
  ^bb18(%180: i64):  // 2 preds: ^bb17, ^bb28
    %181 = llvm.icmp "slt" %180, %16 : i64
    llvm.cond_br %181, ^bb19, ^bb29
  ^bb19:  // pred: ^bb18
    llvm.br ^bb20(%11 : i64)
  ^bb20(%182: i64):  // 2 preds: ^bb19, ^bb27
    %183 = llvm.icmp "slt" %182, %18 : i64
    llvm.cond_br %183, ^bb21, ^bb28
  ^bb21:  // pred: ^bb20
    llvm.br ^bb22(%11 : i64)
  ^bb22(%184: i64):  // 2 preds: ^bb21, ^bb26
    %185 = llvm.icmp "slt" %184, %16 : i64
    llvm.cond_br %185, ^bb23, ^bb27
  ^bb23:  // pred: ^bb22
    llvm.br ^bb24(%11 : i64)
  ^bb24(%186: i64):  // 2 preds: ^bb23, ^bb25
    %187 = llvm.icmp "slt" %186, %17 : i64
    llvm.cond_br %187, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %188 = llvm.mul %182, %17  : i64
    %189 = llvm.mul %184, %17  : i64
    %190 = llvm.add %188, %189  : i64
    %191 = llvm.add %190, %186  : i64
    %192 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %193 = llvm.mul %180, %3  : i64
    %194 = llvm.add %193, %191  : i64
    %195 = llvm.getelementptr %192[%194] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %20, %195 : !llvm.ptr<f32>
    %196 = llvm.add %186, %16  : i64
    llvm.br ^bb24(%196 : i64)
  ^bb26:  // pred: ^bb24
    %197 = llvm.add %184, %16  : i64
    llvm.br ^bb22(%197 : i64)
  ^bb27:  // pred: ^bb22
    %198 = llvm.add %182, %16  : i64
    llvm.br ^bb20(%198 : i64)
  ^bb28:  // pred: ^bb20
    %199 = llvm.add %180, %16  : i64
    llvm.br ^bb18(%199 : i64)
  ^bb29:  // pred: ^bb18
    %200 = llvm.load %52 : !llvm.ptr<i64>
    %201 = llvm.add %200, %9  : i64
    llvm.store %201, %52 : !llvm.ptr<i64>
    %202 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %203 = llvm.getelementptr %202[%159] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %204 = llvm.bitcast %203 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %205 = llvm.ptrtoint %204 : !llvm.ptr<f32> to i64
    %206 = llvm.ptrtoint %156 : !llvm.ptr<f32> to i64
    %207 = llvm.mul %168, %3  : i64
    %208 = llvm.add %207, %11  : i64
    %209 = llvm.getelementptr %142[%208] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %210 = llvm.ptrtoint %209 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%205, %206, %210, %200, %4) : (i64, i64, i64, i64, i32) -> ()
    llvm.call @rsync(%155, %200) : (!llvm.ptr<i64>, i64) -> ()
    %211 = llvm.add %168, %16  : i64
    llvm.br ^bb16(%211, %179 : i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>)
  ^bb30:  // pred: ^bb16
    %212 = llvm.alloca %9 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %10, %212 : !llvm.ptr<i64>
    %213 = llvm.alloca %9 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %10, %213 : !llvm.ptr<i64>
    %214 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %215 = llvm.getelementptr %214[%41] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %216 = llvm.bitcast %215 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %217 = llvm.insertvalue %216, %45[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %218 = llvm.insertvalue %11, %217[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %219 = llvm.insertvalue %16, %218[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %220 = llvm.insertvalue %14, %219[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %221 = llvm.insertvalue %14, %220[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %222 = llvm.insertvalue %16, %221[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %223 = llvm.ptrtoint %216 : !llvm.ptr<f32> to i64
    %224 = llvm.add %11, %11  : i64
    %225 = llvm.getelementptr %33[%224] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %226 = llvm.ptrtoint %225 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%223, %65, %226, %10, %5) : (i64, i64, i64, i64, i32) -> ()
    %227 = llvm.load %52 : !llvm.ptr<i64>
    %228 = llvm.add %227, %9  : i64
    llvm.store %228, %52 : !llvm.ptr<i64>
    %229 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %230 = llvm.getelementptr %229[%159] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %231 = llvm.bitcast %230 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %232 = llvm.insertvalue %231, %45[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %233 = llvm.insertvalue %11, %232[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %234 = llvm.insertvalue %16, %233[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %235 = llvm.insertvalue %3, %234[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %236 = llvm.insertvalue %3, %235[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %237 = llvm.insertvalue %16, %236[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %238 = llvm.ptrtoint %231 : !llvm.ptr<f32> to i64
    %239 = llvm.ptrtoint %156 : !llvm.ptr<f32> to i64
    %240 = llvm.add %11, %11  : i64
    %241 = llvm.getelementptr %142[%240] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %242 = llvm.ptrtoint %241 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%238, %239, %242, %227, %5) : (i64, i64, i64, i64, i32) -> ()
    %243 = llvm.mlir.null : !llvm.ptr<vector<8xf32>>
    %244 = llvm.getelementptr %243[1] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    %245 = llvm.ptrtoint %244 : !llvm.ptr<vector<8xf32>> to i64
    %246 = llvm.alloca %245 x vector<8xf32> {alignment = 64 : i64} : (i64) -> !llvm.ptr<vector<8xf32>>
    llvm.br ^bb31(%11, %222, %237, %227 : i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64)
  ^bb31(%247: i64, %248: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %249: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %250: i64):  // 2 preds: ^bb30, ^bb53
    %251 = llvm.icmp "slt" %247, %19 : i64
    llvm.cond_br %251, ^bb32, ^bb54
  ^bb32:  // pred: ^bb31
    %252 = llvm.add %247, %16  : i64
    %253 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %254 = llvm.getelementptr %253[%41] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %255 = llvm.bitcast %254 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %256 = llvm.insertvalue %255, %45[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %257 = llvm.insertvalue %11, %256[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %258 = llvm.insertvalue %16, %257[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %259 = llvm.insertvalue %14, %258[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %260 = llvm.insertvalue %14, %259[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %261 = llvm.insertvalue %16, %260[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %262 = llvm.ptrtoint %255 : !llvm.ptr<f32> to i64
    %263 = llvm.mul %252, %14  : i64
    %264 = llvm.add %263, %11  : i64
    %265 = llvm.getelementptr %33[%264] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %266 = llvm.ptrtoint %265 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%262, %65, %266, %10, %5) : (i64, i64, i64, i64, i32) -> ()
    %267 = llvm.load %52 : !llvm.ptr<i64>
    %268 = llvm.add %267, %9  : i64
    llvm.store %268, %52 : !llvm.ptr<i64>
    %269 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %270 = llvm.getelementptr %269[%159] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %271 = llvm.bitcast %270 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %272 = llvm.insertvalue %271, %45[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %273 = llvm.insertvalue %11, %272[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %274 = llvm.insertvalue %16, %273[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %275 = llvm.insertvalue %3, %274[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %276 = llvm.insertvalue %3, %275[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %277 = llvm.insertvalue %16, %276[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %278 = llvm.ptrtoint %271 : !llvm.ptr<f32> to i64
    %279 = llvm.mul %252, %3  : i64
    %280 = llvm.add %279, %11  : i64
    %281 = llvm.getelementptr %142[%280] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %282 = llvm.ptrtoint %281 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%278, %239, %282, %267, %5) : (i64, i64, i64, i64, i32) -> ()
    llvm.call @rsync(%212, %250) : (!llvm.ptr<i64>, i64) -> ()
    llvm.br ^bb33(%11 : i64)
  ^bb33(%283: i64):  // 2 preds: ^bb32, ^bb52
    %284 = llvm.icmp "slt" %283, %16 : i64
    llvm.cond_br %284, ^bb34, ^bb53
  ^bb34:  // pred: ^bb33
    %285 = llvm.add %247, %283  : i64
    llvm.br ^bb35(%11 : i64)
  ^bb35(%286: i64):  // 2 preds: ^bb34, ^bb51
    %287 = llvm.icmp "slt" %286, %18 : i64
    llvm.cond_br %287, ^bb36, ^bb52
  ^bb36:  // pred: ^bb35
    llvm.br ^bb37(%11 : i64)
  ^bb37(%288: i64):  // 2 preds: ^bb36, ^bb50
    %289 = llvm.icmp "slt" %288, %16 : i64
    llvm.cond_br %289, ^bb38, ^bb51
  ^bb38:  // pred: ^bb37
    llvm.br ^bb39(%11 : i64)
  ^bb39(%290: i64):  // 2 preds: ^bb38, ^bb49
    %291 = llvm.icmp "slt" %290, %17 : i64
    llvm.cond_br %291, ^bb40, ^bb50
  ^bb40:  // pred: ^bb39
    llvm.br ^bb41(%11 : i64)
  ^bb41(%292: i64):  // 2 preds: ^bb40, ^bb48
    %293 = llvm.icmp "slt" %292, %19 : i64
    llvm.cond_br %293, ^bb42, ^bb49
  ^bb42:  // pred: ^bb41
    llvm.br ^bb43(%11 : i64)
  ^bb43(%294: i64):  // 2 preds: ^bb42, ^bb47
    %295 = llvm.icmp "slt" %294, %16 : i64
    llvm.cond_br %295, ^bb44, ^bb48
  ^bb44:  // pred: ^bb43
    %296 = llvm.add %294, %288  : i64
    %297 = llvm.mul %286, %17  : i64
    %298 = llvm.mul %288, %17  : i64
    %299 = llvm.add %297, %298  : i64
    %300 = llvm.add %299, %290  : i64
    %301 = llvm.mul %294, %17  : i64
    %302 = llvm.add %300, %301  : i64
    %303 = llvm.extractvalue %249[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %304 = llvm.mul %283, %3  : i64
    %305 = llvm.add %304, %302  : i64
    %306 = llvm.getelementptr %303[%305] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %307 = llvm.bitcast %306 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %308 = llvm.load %307 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    llvm.store %308, %246 : !llvm.ptr<vector<8xf32>>
    llvm.br ^bb45(%11 : i64)
  ^bb45(%309: i64):  // 2 preds: ^bb44, ^bb46
    %310 = llvm.icmp "slt" %309, %1 : i64
    llvm.cond_br %310, ^bb46, ^bb47
  ^bb46:  // pred: ^bb45
    %311 = llvm.add %292, %309  : i64
    %312 = llvm.mul %285, %0  : i64
    %313 = llvm.mul %286, %19  : i64
    %314 = llvm.add %312, %313  : i64
    %315 = llvm.mul %296, %19  : i64
    %316 = llvm.add %314, %315  : i64
    %317 = llvm.add %316, %311  : i64
    %318 = llvm.getelementptr %arg12[%317] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %319 = llvm.load %318 : !llvm.ptr<f32>
    %320 = llvm.mlir.undef : vector<8xf32>
    %321 = llvm.insertelement %319, %320[%4 : i32] : vector<8xf32>
    %322 = llvm.shufflevector %321, %320 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %323 = llvm.mul %286, %15  : i64
    %324 = llvm.add %323, %290  : i64
    %325 = llvm.mul %292, %17  : i64
    %326 = llvm.add %324, %325  : i64
    %327 = llvm.mul %309, %17  : i64
    %328 = llvm.add %326, %327  : i64
    %329 = llvm.extractvalue %248[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %330 = llvm.mul %283, %14  : i64
    %331 = llvm.add %330, %328  : i64
    %332 = llvm.getelementptr %329[%331] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %333 = llvm.bitcast %332 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %334 = llvm.load %333 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %335 = llvm.load %246 : !llvm.ptr<vector<8xf32>>
    %336 = "llvm.intr.fmuladd"(%322, %334, %335) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %336, %246 : !llvm.ptr<vector<8xf32>>
    %337 = llvm.add %309, %16  : i64
    llvm.br ^bb45(%337 : i64)
  ^bb47:  // pred: ^bb45
    %338 = llvm.load %246 : !llvm.ptr<vector<8xf32>>
    llvm.store %338, %307 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %339 = llvm.add %294, %16  : i64
    llvm.br ^bb43(%339 : i64)
  ^bb48:  // pred: ^bb43
    %340 = llvm.add %292, %1  : i64
    llvm.br ^bb41(%340 : i64)
  ^bb49:  // pred: ^bb41
    %341 = llvm.add %290, %1  : i64
    llvm.br ^bb39(%341 : i64)
  ^bb50:  // pred: ^bb39
    %342 = llvm.add %288, %16  : i64
    llvm.br ^bb37(%342 : i64)
  ^bb51:  // pred: ^bb37
    %343 = llvm.add %286, %16  : i64
    llvm.br ^bb35(%343 : i64)
  ^bb52:  // pred: ^bb35
    %344 = llvm.add %283, %16  : i64
    llvm.br ^bb33(%344 : i64)
  ^bb53:  // pred: ^bb33
    %345 = llvm.load %52 : !llvm.ptr<i64>
    %346 = llvm.add %345, %9  : i64
    llvm.store %346, %52 : !llvm.ptr<i64>
    %347 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %348 = llvm.getelementptr %347[%159] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %349 = llvm.bitcast %348 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %350 = llvm.ptrtoint %349 : !llvm.ptr<f32> to i64
    %351 = llvm.mul %247, %3  : i64
    %352 = llvm.add %351, %11  : i64
    %353 = llvm.getelementptr %142[%352] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %354 = llvm.ptrtoint %353 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%350, %239, %354, %345, %4) : (i64, i64, i64, i64, i32) -> ()
    llvm.call @rsync(%213, %345) : (!llvm.ptr<i64>, i64) -> ()
    llvm.br ^bb31(%252, %261, %277, %267 : i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64)
  ^bb54:  // pred: ^bb31
    llvm.return %153 : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_trans_matmul(%arg0: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {access_mem_catcher = [["ref2", 0 : i32]], llvm.emit_c_interface} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %12[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %12[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.call @trans_matmul(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
}


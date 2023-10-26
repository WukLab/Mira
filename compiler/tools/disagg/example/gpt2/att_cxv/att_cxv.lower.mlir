module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 8192, 0, 196608, f32, 196608, 1, 1], t1 = ["ref1", 268443648, 0, 12582912, f32, 262144, 64, 1]}} {
  llvm.func @rsync(!llvm.ptr<i64>, i64)
  llvm.mlir.global external @rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.func @rdma_req(i64, i64, i64, i64, i32)
  llvm.mlir.global external @rdma_wrid_cnt() {addr_space = 0 : i32} : i64
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, %arg1: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> attributes {access_mem_catcher = [["ref0", 0], ["ref1", 1]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %0 = llvm.mlir.constant(448 : index) : i64
    %1 = llvm.mlir.constant(7 : index) : i64
    %2 = llvm.mlir.constant(384 : index) : i64
    %3 = llvm.mlir.constant(6 : index) : i64
    %4 = llvm.mlir.constant(320 : index) : i64
    %5 = llvm.mlir.constant(5 : index) : i64
    %6 = llvm.mlir.constant(192 : index) : i64
    %7 = llvm.mlir.constant(3 : index) : i64
    %8 = llvm.mlir.constant(128 : index) : i64
    %9 = llvm.mlir.constant(16384 : index) : i64
    %10 = llvm.mlir.constant(0 : i32) : i32
    %11 = llvm.mlir.constant(3072 : index) : i64
    %12 = llvm.mlir.constant(256 : index) : i64
    %13 = llvm.mlir.constant(1179648 : index) : i64
    %14 = llvm.mlir.constant(3 : i64) : i64
    %15 = llvm.mlir.constant(786432 : index) : i64
    %16 = llvm.mlir.constant(2 : i64) : i64
    %17 = llvm.mlir.constant(64 : i64) : i64
    %18 = llvm.mlir.constant(262144 : i64) : i64
    %19 = llvm.mlir.constant(393216 : index) : i64
    %20 = llvm.mlir.constant(2 : index) : i64
    %21 = llvm.mlir.constant(4 : i32) : i32
    %22 = llvm.mlir.constant(4 : i64) : i64
    %23 = llvm.mlir.constant(196608 : i64) : i64
    %24 = llvm.mlir.constant(3735928559 : index) : i64
    %25 = llvm.mlir.constant(196608 : index) : i64
    %26 = llvm.mlir.constant(16 : index) : i64
    %27 = llvm.mlir.constant(8 : index) : i64
    %28 = llvm.mlir.constant(1 : i64) : i64
    %29 = llvm.mlir.constant(0 : index) : i64
    %30 = llvm.mlir.constant(0 : i64) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(4 : index) : i64
    %33 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %34 = llvm.mlir.constant(64 : index) : i64
    %35 = llvm.mlir.constant(12 : index) : i64
    %36 = llvm.mlir.constant(768 : index) : i64
    %37 = llvm.mlir.null : !llvm.ptr<f32>
    %38 = llvm.getelementptr %37[49152] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %39 = llvm.ptrtoint %38 : !llvm.ptr<f32> to i64
    %40 = llvm.add %39, %26  : i64
    %41 = llvm.call @malloc(%40) : (i64) -> !llvm.ptr<i8>
    %42 = llvm.bitcast %41 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %43 = llvm.ptrtoint %42 : !llvm.ptr<f32> to i64
    %44 = llvm.sub %26, %31  : i64
    %45 = llvm.add %43, %44  : i64
    %46 = llvm.urem %45, %26  : i64
    %47 = llvm.sub %45, %46  : i64
    %48 = llvm.inttoptr %47 : i64 to !llvm.ptr<f32>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %50 = llvm.insertvalue %42, %49[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %29, %51[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %34, %52[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %35, %53[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %31, %54[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %34, %55[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %36, %56[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %34, %57[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %34, %58[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %31, %59[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.br ^bb1(%29 : i64)
  ^bb1(%61: i64):  // 2 preds: ^bb0, ^bb11
    %62 = llvm.icmp "slt" %61, %34 : i64
    llvm.cond_br %62, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%29 : i64)
  ^bb3(%63: i64):  // 2 preds: ^bb2, ^bb10
    %64 = llvm.icmp "slt" %63, %35 : i64
    llvm.cond_br %64, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%29 : i64)
  ^bb5(%65: i64):  // 2 preds: ^bb4, ^bb9
    %66 = llvm.icmp "slt" %65, %31 : i64
    llvm.cond_br %66, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    llvm.br ^bb7(%29 : i64)
  ^bb7(%67: i64):  // 2 preds: ^bb6, ^bb8
    %68 = llvm.icmp "slt" %67, %34 : i64
    llvm.cond_br %68, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %69 = llvm.mul %61, %36  : i64
    %70 = llvm.mul %63, %34  : i64
    %71 = llvm.add %69, %70  : i64
    %72 = llvm.mul %65, %34  : i64
    %73 = llvm.add %71, %72  : i64
    %74 = llvm.add %73, %67  : i64
    %75 = llvm.getelementptr %48[%74] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %33, %75 : !llvm.ptr<f32>
    %76 = llvm.add %67, %31  : i64
    llvm.br ^bb7(%76 : i64)
  ^bb9:  // pred: ^bb7
    %77 = llvm.add %65, %31  : i64
    llvm.br ^bb5(%77 : i64)
  ^bb10:  // pred: ^bb5
    %78 = llvm.add %63, %31  : i64
    llvm.br ^bb3(%78 : i64)
  ^bb11:  // pred: ^bb3
    %79 = llvm.add %61, %31  : i64
    llvm.br ^bb1(%79 : i64)
  ^bb12:  // pred: ^bb1
    %80 = llvm.alloca %28 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %30, %80 : !llvm.ptr<i64>
    %81 = llvm.alloca %28 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %30, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.addressof @rdma_wrid_cnt : !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.add %83, %28  : i64
    llvm.store %84, %82 : !llvm.ptr<i64>
    %85 = llvm.getelementptr %37[196608] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %86 = llvm.inttoptr %24 : i64 to !llvm.ptr<f32>
    %87 = llvm.mlir.addressof @rbuf : !llvm.ptr<ptr<i8>>
    %88 = llvm.load %87 : !llvm.ptr<ptr<i8>>
    %89 = llvm.mul %23, %22  : i64
    %90 = llvm.mul %89, %30  : i64
    %91 = llvm.getelementptr %88[%90] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %92 = llvm.bitcast %91 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %93 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %94 = llvm.insertvalue %86, %93[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.insertvalue %92, %94[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.insertvalue %29, %95[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.insertvalue %25, %96[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.insertvalue %31, %97[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.ptrtoint %92 : !llvm.ptr<f32> to i64
    %100 = llvm.ptrtoint %85 : !llvm.ptr<f32> to i64
    %101 = llvm.extractvalue %arg0[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.extractvalue %arg0[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.add %102, %29  : i64
    %104 = llvm.getelementptr %101[%103] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %105 = llvm.ptrtoint %104 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%99, %100, %105, %83, %21) : (i64, i64, i64, i64, i32) -> ()
    %106 = llvm.load %82 : !llvm.ptr<i64>
    %107 = llvm.add %106, %28  : i64
    llvm.store %107, %82 : !llvm.ptr<i64>
    %108 = llvm.getelementptr %37[393216] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %109 = llvm.load %87 : !llvm.ptr<ptr<i8>>
    %110 = llvm.mul %18, %22  : i64
    %111 = llvm.srem %30, %17  : i64
    %112 = llvm.mul %110, %111  : i64
    %113 = llvm.getelementptr %109[%112] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %114 = llvm.bitcast %113 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %115 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %116 = llvm.insertvalue %86, %115[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.insertvalue %114, %116[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %118 = llvm.insertvalue %29, %117[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.insertvalue %20, %118[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %120 = llvm.insertvalue %25, %119[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %121 = llvm.insertvalue %25, %120[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %122 = llvm.insertvalue %31, %121[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %123 = llvm.ptrtoint %114 : !llvm.ptr<f32> to i64
    %124 = llvm.ptrtoint %108 : !llvm.ptr<f32> to i64
    %125 = llvm.extractvalue %arg1[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.extractvalue %arg1[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.add %126, %29  : i64
    %128 = llvm.getelementptr %125[%127] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %129 = llvm.ptrtoint %128 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%123, %124, %129, %106, %21) : (i64, i64, i64, i64, i32) -> ()
    %130 = llvm.load %82 : !llvm.ptr<i64>
    %131 = llvm.add %130, %28  : i64
    llvm.store %131, %82 : !llvm.ptr<i64>
    %132 = llvm.load %87 : !llvm.ptr<ptr<i8>>
    %133 = llvm.srem %28, %17  : i64
    %134 = llvm.mul %110, %133  : i64
    %135 = llvm.getelementptr %132[%134] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %136 = llvm.bitcast %135 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %137 = llvm.insertvalue %136, %116[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %138 = llvm.insertvalue %29, %137[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %139 = llvm.insertvalue %20, %138[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %140 = llvm.insertvalue %25, %139[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %141 = llvm.insertvalue %25, %140[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %142 = llvm.insertvalue %31, %141[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %143 = llvm.ptrtoint %136 : !llvm.ptr<f32> to i64
    %144 = llvm.add %126, %19  : i64
    %145 = llvm.getelementptr %125[%144] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %146 = llvm.ptrtoint %145 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%143, %124, %146, %130, %21) : (i64, i64, i64, i64, i32) -> ()
    %147 = llvm.load %82 : !llvm.ptr<i64>
    %148 = llvm.add %147, %28  : i64
    llvm.store %148, %82 : !llvm.ptr<i64>
    %149 = llvm.load %87 : !llvm.ptr<ptr<i8>>
    %150 = llvm.srem %16, %17  : i64
    %151 = llvm.mul %110, %150  : i64
    %152 = llvm.getelementptr %149[%151] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %153 = llvm.bitcast %152 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %154 = llvm.insertvalue %153, %116[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %155 = llvm.insertvalue %29, %154[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %156 = llvm.insertvalue %20, %155[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %157 = llvm.insertvalue %25, %156[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.insertvalue %25, %157[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %159 = llvm.insertvalue %31, %158[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %160 = llvm.ptrtoint %153 : !llvm.ptr<f32> to i64
    %161 = llvm.add %126, %15  : i64
    %162 = llvm.getelementptr %125[%161] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %163 = llvm.ptrtoint %162 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%160, %124, %163, %147, %21) : (i64, i64, i64, i64, i32) -> ()
    %164 = llvm.load %82 : !llvm.ptr<i64>
    %165 = llvm.add %164, %28  : i64
    llvm.store %165, %82 : !llvm.ptr<i64>
    %166 = llvm.load %87 : !llvm.ptr<ptr<i8>>
    %167 = llvm.srem %14, %17  : i64
    %168 = llvm.mul %110, %167  : i64
    %169 = llvm.getelementptr %166[%168] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %170 = llvm.bitcast %169 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %171 = llvm.insertvalue %170, %116[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.insertvalue %29, %171[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %173 = llvm.insertvalue %20, %172[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %174 = llvm.insertvalue %25, %173[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %175 = llvm.insertvalue %25, %174[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %176 = llvm.insertvalue %31, %175[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %177 = llvm.ptrtoint %170 : !llvm.ptr<f32> to i64
    %178 = llvm.add %126, %13  : i64
    %179 = llvm.getelementptr %125[%178] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %180 = llvm.ptrtoint %179 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%177, %124, %180, %164, %21) : (i64, i64, i64, i64, i32) -> ()
    llvm.call @rsync(%80, %83) : (!llvm.ptr<i64>, i64) -> ()
    %181 = llvm.mlir.null : !llvm.ptr<vector<8xf32>>
    %182 = llvm.getelementptr %181[1] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    %183 = llvm.ptrtoint %182 : !llvm.ptr<vector<8xf32>> to i64
    %184 = llvm.alloca %183 x vector<8xf32> {alignment = 64 : i64} : (i64) -> !llvm.ptr<vector<8xf32>>
    llvm.br ^bb13(%29, %32, %98, %122, %106, %142, %130, %159, %147, %176, %164 : i64, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64)
  ^bb13(%185: i64, %186: i64, %187: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, %188: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %189: i64, %190: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %191: i64, %192: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %193: i64, %194: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %195: i64):  // 2 preds: ^bb12, ^bb32
    %196 = llvm.icmp "slt" %185, %34 : i64
    llvm.cond_br %196, ^bb14, ^bb33
  ^bb14:  // pred: ^bb13
    %197 = llvm.add %186, %31  : i64
    %198 = llvm.add %185, %27  : i64
    %199 = llvm.load %82 : !llvm.ptr<i64>
    %200 = llvm.add %199, %28  : i64
    llvm.store %200, %82 : !llvm.ptr<i64>
    %201 = llvm.load %87 : !llvm.ptr<ptr<i8>>
    %202 = llvm.srem %186, %17  : i64
    %203 = llvm.mul %110, %202  : i64
    %204 = llvm.getelementptr %201[%203] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %205 = llvm.bitcast %204 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %206 = llvm.insertvalue %205, %116[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %207 = llvm.insertvalue %29, %206[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %208 = llvm.insertvalue %20, %207[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %209 = llvm.insertvalue %25, %208[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %210 = llvm.insertvalue %25, %209[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %211 = llvm.insertvalue %31, %210[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %212 = llvm.ptrtoint %205 : !llvm.ptr<f32> to i64
    %213 = llvm.mul %198, %25  : i64
    %214 = llvm.add %213, %126  : i64
    %215 = llvm.getelementptr %125[%214] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %216 = llvm.ptrtoint %215 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%212, %124, %216, %199, %21) : (i64, i64, i64, i64, i32) -> ()
    llvm.call @rsync(%80, %189) : (!llvm.ptr<i64>, i64) -> ()
    llvm.br ^bb15(%29 : i64)
  ^bb15(%217: i64):  // 2 preds: ^bb14, ^bb31
    %218 = llvm.icmp "slt" %217, %20 : i64
    llvm.cond_br %218, ^bb16, ^bb32
  ^bb16:  // pred: ^bb15
    %219 = llvm.add %185, %217  : i64
    llvm.br ^bb17(%29 : i64)
  ^bb17(%220: i64):  // 2 preds: ^bb16, ^bb30
    %221 = llvm.icmp "slt" %220, %35 : i64
    llvm.cond_br %221, ^bb18, ^bb31
  ^bb18:  // pred: ^bb17
    llvm.br ^bb19(%29 : i64)
  ^bb19(%222: i64):  // 2 preds: ^bb18, ^bb29
    %223 = llvm.icmp "slt" %222, %31 : i64
    llvm.cond_br %223, ^bb20, ^bb30
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%29 : i64)
  ^bb21(%224: i64):  // 2 preds: ^bb20, ^bb28
    %225 = llvm.icmp "slt" %224, %34 : i64
    llvm.cond_br %225, ^bb22, ^bb29
  ^bb22:  // pred: ^bb21
    llvm.br ^bb23(%29 : i64)
  ^bb23(%226: i64):  // 2 preds: ^bb22, ^bb27
    %227 = llvm.icmp "slt" %226, %12 : i64
    llvm.cond_br %227, ^bb24, ^bb28
  ^bb24:  // pred: ^bb23
    llvm.br ^bb25(%29 : i64)
  ^bb25(%228: i64):  // 2 preds: ^bb24, ^bb26
    %229 = llvm.icmp "slt" %228, %31 : i64
    llvm.cond_br %229, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %230 = llvm.add %228, %222  : i64
    %231 = llvm.mul %219, %36  : i64
    %232 = llvm.mul %220, %34  : i64
    %233 = llvm.add %231, %232  : i64
    %234 = llvm.mul %230, %34  : i64
    %235 = llvm.add %233, %234  : i64
    %236 = llvm.add %235, %224  : i64
    %237 = llvm.getelementptr %48[%236] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %238 = llvm.bitcast %237 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %239 = llvm.load %238 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    llvm.store %239, %184 : !llvm.ptr<vector<8xf32>>
    %240 = llvm.mul %217, %11  : i64
    %241 = llvm.mul %220, %12  : i64
    %242 = llvm.add %240, %241  : i64
    %243 = llvm.mul %222, %12  : i64
    %244 = llvm.add %242, %243  : i64
    %245 = llvm.add %244, %226  : i64
    %246 = llvm.mul %228, %12  : i64
    %247 = llvm.add %245, %246  : i64
    %248 = llvm.extractvalue %187[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.getelementptr %248[%247] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %250 = llvm.load %249 : !llvm.ptr<f32>
    %251 = llvm.mlir.undef : vector<8xf32>
    %252 = llvm.insertelement %250, %251[%10 : i32] : vector<8xf32>
    %253 = llvm.shufflevector %252, %251 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %254 = llvm.mul %220, %9  : i64
    %255 = llvm.add %254, %224  : i64
    %256 = llvm.mul %226, %34  : i64
    %257 = llvm.add %255, %256  : i64
    %258 = llvm.extractvalue %188[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %259 = llvm.mul %217, %25  : i64
    %260 = llvm.add %259, %257  : i64
    %261 = llvm.getelementptr %258[%260] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %262 = llvm.bitcast %261 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %263 = llvm.load %262 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %264 = llvm.load %184 : !llvm.ptr<vector<8xf32>>
    %265 = "llvm.intr.fmuladd"(%253, %263, %264) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %265, %184 : !llvm.ptr<vector<8xf32>>
    %266 = llvm.add %247, %31  : i64
    %267 = llvm.getelementptr %248[%266] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %268 = llvm.load %267 : !llvm.ptr<f32>
    %269 = llvm.insertelement %268, %251[%10 : i32] : vector<8xf32>
    %270 = llvm.shufflevector %269, %251 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %271 = llvm.add %257, %34  : i64
    %272 = llvm.add %259, %271  : i64
    %273 = llvm.getelementptr %258[%272] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %274 = llvm.bitcast %273 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %275 = llvm.load %274 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %276 = llvm.load %184 : !llvm.ptr<vector<8xf32>>
    %277 = "llvm.intr.fmuladd"(%270, %275, %276) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %277, %184 : !llvm.ptr<vector<8xf32>>
    %278 = llvm.add %247, %20  : i64
    %279 = llvm.getelementptr %248[%278] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %280 = llvm.load %279 : !llvm.ptr<f32>
    %281 = llvm.insertelement %280, %251[%10 : i32] : vector<8xf32>
    %282 = llvm.shufflevector %281, %251 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %283 = llvm.add %257, %8  : i64
    %284 = llvm.add %259, %283  : i64
    %285 = llvm.getelementptr %258[%284] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %286 = llvm.bitcast %285 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %287 = llvm.load %286 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %288 = llvm.load %184 : !llvm.ptr<vector<8xf32>>
    %289 = "llvm.intr.fmuladd"(%282, %287, %288) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %289, %184 : !llvm.ptr<vector<8xf32>>
    %290 = llvm.add %247, %7  : i64
    %291 = llvm.getelementptr %248[%290] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %292 = llvm.load %291 : !llvm.ptr<f32>
    %293 = llvm.insertelement %292, %251[%10 : i32] : vector<8xf32>
    %294 = llvm.shufflevector %293, %251 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %295 = llvm.add %257, %6  : i64
    %296 = llvm.add %259, %295  : i64
    %297 = llvm.getelementptr %258[%296] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %298 = llvm.bitcast %297 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %299 = llvm.load %298 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %300 = llvm.load %184 : !llvm.ptr<vector<8xf32>>
    %301 = "llvm.intr.fmuladd"(%294, %299, %300) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %301, %184 : !llvm.ptr<vector<8xf32>>
    %302 = llvm.add %247, %32  : i64
    %303 = llvm.getelementptr %248[%302] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %304 = llvm.load %303 : !llvm.ptr<f32>
    %305 = llvm.insertelement %304, %251[%10 : i32] : vector<8xf32>
    %306 = llvm.shufflevector %305, %251 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %307 = llvm.add %257, %12  : i64
    %308 = llvm.add %259, %307  : i64
    %309 = llvm.getelementptr %258[%308] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %310 = llvm.bitcast %309 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %311 = llvm.load %310 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %312 = llvm.load %184 : !llvm.ptr<vector<8xf32>>
    %313 = "llvm.intr.fmuladd"(%306, %311, %312) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %313, %184 : !llvm.ptr<vector<8xf32>>
    %314 = llvm.add %247, %5  : i64
    %315 = llvm.getelementptr %248[%314] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %316 = llvm.load %315 : !llvm.ptr<f32>
    %317 = llvm.insertelement %316, %251[%10 : i32] : vector<8xf32>
    %318 = llvm.shufflevector %317, %251 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %319 = llvm.add %257, %4  : i64
    %320 = llvm.add %259, %319  : i64
    %321 = llvm.getelementptr %258[%320] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %322 = llvm.bitcast %321 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %323 = llvm.load %322 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %324 = llvm.load %184 : !llvm.ptr<vector<8xf32>>
    %325 = "llvm.intr.fmuladd"(%318, %323, %324) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %325, %184 : !llvm.ptr<vector<8xf32>>
    %326 = llvm.add %247, %3  : i64
    %327 = llvm.getelementptr %248[%326] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %328 = llvm.load %327 : !llvm.ptr<f32>
    %329 = llvm.insertelement %328, %251[%10 : i32] : vector<8xf32>
    %330 = llvm.shufflevector %329, %251 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %331 = llvm.add %257, %2  : i64
    %332 = llvm.add %259, %331  : i64
    %333 = llvm.getelementptr %258[%332] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %334 = llvm.bitcast %333 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %335 = llvm.load %334 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %336 = llvm.load %184 : !llvm.ptr<vector<8xf32>>
    %337 = "llvm.intr.fmuladd"(%330, %335, %336) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %337, %184 : !llvm.ptr<vector<8xf32>>
    %338 = llvm.add %247, %1  : i64
    %339 = llvm.getelementptr %248[%338] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %340 = llvm.load %339 : !llvm.ptr<f32>
    %341 = llvm.insertelement %340, %251[%10 : i32] : vector<8xf32>
    %342 = llvm.shufflevector %341, %251 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %343 = llvm.add %257, %0  : i64
    %344 = llvm.add %259, %343  : i64
    %345 = llvm.getelementptr %258[%344] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %346 = llvm.bitcast %345 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %347 = llvm.load %346 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %348 = llvm.load %184 : !llvm.ptr<vector<8xf32>>
    %349 = "llvm.intr.fmuladd"(%342, %347, %348) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %349, %184 : !llvm.ptr<vector<8xf32>>
    %350 = llvm.load %184 : !llvm.ptr<vector<8xf32>>
    llvm.store %350, %238 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %351 = llvm.add %228, %31  : i64
    llvm.br ^bb25(%351 : i64)
  ^bb27:  // pred: ^bb25
    %352 = llvm.add %226, %27  : i64
    llvm.br ^bb23(%352 : i64)
  ^bb28:  // pred: ^bb23
    %353 = llvm.add %224, %27  : i64
    llvm.br ^bb21(%353 : i64)
  ^bb29:  // pred: ^bb21
    %354 = llvm.add %222, %31  : i64
    llvm.br ^bb19(%354 : i64)
  ^bb30:  // pred: ^bb19
    %355 = llvm.add %220, %31  : i64
    llvm.br ^bb17(%355 : i64)
  ^bb31:  // pred: ^bb17
    %356 = llvm.add %217, %31  : i64
    llvm.br ^bb15(%356 : i64)
  ^bb32:  // pred: ^bb15
    %357 = llvm.add %185, %20  : i64
    llvm.br ^bb13(%357, %197, %187, %190, %191, %192, %193, %194, %195, %211, %199 : i64, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64)
  ^bb33:  // pred: ^bb13
    llvm.return %60 : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, %arg2: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>) attributes {access_mem_catcher = [["ref0", 0], ["ref1", 1]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %0 = llvm.call @main_graph(%arg1, %arg2) : (!llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %0, %arg0 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
}


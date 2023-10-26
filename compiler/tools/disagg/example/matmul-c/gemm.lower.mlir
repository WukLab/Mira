module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 8192, 0, 33030144, f32, 8192, 64, 1], t1 = ["ref1", 268443648, 0, 262144, f32, 262144, 1, 1]}} {
  llvm.func @rsync(!llvm.ptr<i64>, i64)
  llvm.mlir.global external @rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.func @rdma_req(i64, i64, i64, i64, i32)
  llvm.mlir.global external @rdma_wrid_cnt() {addr_space = 0 : i32} : i64
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %arg1: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> attributes {access_mem_catcher = [["ref0", 0], ["ref1", 1]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %0 = llvm.mlir.constant(1539 : index) : i64
    %1 = llvm.mlir.constant(1538 : index) : i64
    %2 = llvm.mlir.constant(1537 : index) : i64
    %3 = llvm.mlir.constant(1027 : index) : i64
    %4 = llvm.mlir.constant(1026 : index) : i64
    %5 = llvm.mlir.constant(1025 : index) : i64
    %6 = llvm.mlir.constant(515 : index) : i64
    %7 = llvm.mlir.constant(514 : index) : i64
    %8 = llvm.mlir.constant(513 : index) : i64
    %9 = llvm.mlir.constant(1536 : index) : i64
    %10 = llvm.mlir.constant(1024 : index) : i64
    %11 = llvm.mlir.constant(0 : i32) : i32
    %12 = llvm.mlir.constant(8 : index) : i64
    %13 = llvm.mlir.constant(24576 : index) : i64
    %14 = llvm.mlir.constant(3 : i64) : i64
    %15 = llvm.mlir.constant(16384 : index) : i64
    %16 = llvm.mlir.constant(2 : i64) : i64
    %17 = llvm.mlir.constant(8192 : index) : i64
    %18 = llvm.mlir.constant(64 : i64) : i64
    %19 = llvm.mlir.constant(8192 : i64) : i64
    %20 = llvm.mlir.constant(2048 : index) : i64
    %21 = llvm.mlir.constant(4 : i32) : i32
    %22 = llvm.mlir.constant(4 : i64) : i64
    %23 = llvm.mlir.constant(262144 : i64) : i64
    %24 = llvm.mlir.constant(3735928559 : index) : i64
    %25 = llvm.mlir.constant(262144 : index) : i64
    %26 = llvm.mlir.constant(16 : index) : i64
    %27 = llvm.mlir.constant(64 : index) : i64
    %28 = llvm.mlir.constant(4 : index) : i64
    %29 = llvm.mlir.constant(1 : i64) : i64
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.mlir.constant(0 : i64) : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.mlir.constant(3 : index) : i64
    %35 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %36 = llvm.mlir.constant(64512 : index) : i64
    %37 = llvm.mlir.constant(512 : index) : i64
    %38 = llvm.mlir.null : !llvm.ptr<f32>
    %39 = llvm.getelementptr %38[33030144] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %40 = llvm.ptrtoint %39 : !llvm.ptr<f32> to i64
    %41 = llvm.add %40, %26  : i64
    %42 = llvm.call @malloc(%41) : (i64) -> !llvm.ptr<i8>
    %43 = llvm.bitcast %42 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %44 = llvm.ptrtoint %43 : !llvm.ptr<f32> to i64
    %45 = llvm.sub %26, %32  : i64
    %46 = llvm.add %44, %45  : i64
    %47 = llvm.urem %46, %26  : i64
    %48 = llvm.sub %46, %47  : i64
    %49 = llvm.inttoptr %48 : i64 to !llvm.ptr<f32>
    %50 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %51 = llvm.insertvalue %43, %50[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.insertvalue %49, %51[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.insertvalue %30, %52[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.insertvalue %36, %53[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.insertvalue %37, %54[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.insertvalue %37, %55[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.insertvalue %32, %56[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%30 : i64)
  ^bb1(%58: i64):  // 2 preds: ^bb0, ^bb5
    %59 = llvm.icmp "slt" %58, %36 : i64
    llvm.cond_br %59, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%30 : i64)
  ^bb3(%60: i64):  // 2 preds: ^bb2, ^bb4
    %61 = llvm.icmp "slt" %60, %37 : i64
    llvm.cond_br %61, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %62 = llvm.mul %58, %37  : i64
    %63 = llvm.add %62, %60  : i64
    %64 = llvm.getelementptr %49[%63] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %35, %64 : !llvm.ptr<f32>
    %65 = llvm.add %60, %32  : i64
    llvm.br ^bb3(%65 : i64)
  ^bb5:  // pred: ^bb3
    %66 = llvm.add %58, %32  : i64
    llvm.br ^bb1(%66 : i64)
  ^bb6:  // pred: ^bb1
    %67 = llvm.mlir.null : !llvm.ptr<vector<8xf32>>
    %68 = llvm.getelementptr %67[4] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    %69 = llvm.ptrtoint %68 : !llvm.ptr<vector<8xf32>> to i64
    %70 = llvm.alloca %69 x vector<8xf32> {alignment = 64 : i64} : (i64) -> !llvm.ptr<vector<8xf32>>
    %71 = llvm.alloca %29 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %31, %71 : !llvm.ptr<i64>
    %72 = llvm.alloca %29 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %31, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.addressof @rdma_wrid_cnt : !llvm.ptr<i64>
    %74 = llvm.load %73 : !llvm.ptr<i64>
    %75 = llvm.add %74, %29  : i64
    llvm.store %75, %73 : !llvm.ptr<i64>
    %76 = llvm.getelementptr %38[262144] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %77 = llvm.inttoptr %24 : i64 to !llvm.ptr<f32>
    %78 = llvm.mlir.addressof @rbuf : !llvm.ptr<ptr<i8>>
    %79 = llvm.load %78 : !llvm.ptr<ptr<i8>>
    %80 = llvm.mul %23, %22  : i64
    %81 = llvm.mul %80, %31  : i64
    %82 = llvm.getelementptr %79[%81] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %83 = llvm.bitcast %82 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %84 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %85 = llvm.insertvalue %77, %84[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.insertvalue %83, %85[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.insertvalue %30, %86[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.insertvalue %25, %87[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.insertvalue %32, %88[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.ptrtoint %83 : !llvm.ptr<f32> to i64
    %91 = llvm.ptrtoint %76 : !llvm.ptr<f32> to i64
    %92 = llvm.extractvalue %arg1[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %93 = llvm.extractvalue %arg1[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %94 = llvm.add %93, %30  : i64
    %95 = llvm.getelementptr %92[%94] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %96 = llvm.ptrtoint %95 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%90, %91, %96, %74, %21) : (i64, i64, i64, i64, i32) -> ()
    %97 = llvm.load %73 : !llvm.ptr<i64>
    %98 = llvm.add %97, %29  : i64
    llvm.store %98, %73 : !llvm.ptr<i64>
    %99 = llvm.getelementptr %38[8192] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %100 = llvm.load %78 : !llvm.ptr<ptr<i8>>
    %101 = llvm.mul %19, %22  : i64
    %102 = llvm.srem %31, %18  : i64
    %103 = llvm.mul %101, %102  : i64
    %104 = llvm.getelementptr %100[%103] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %105 = llvm.bitcast %104 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %106 = llvm.insertvalue %77, %50[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.insertvalue %105, %106[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.insertvalue %30, %107[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.insertvalue %28, %108[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %110 = llvm.insertvalue %20, %109[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %111 = llvm.insertvalue %20, %110[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.insertvalue %32, %111[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %113 = llvm.ptrtoint %105 : !llvm.ptr<f32> to i64
    %114 = llvm.ptrtoint %99 : !llvm.ptr<f32> to i64
    %115 = llvm.extractvalue %arg0[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %116 = llvm.extractvalue %arg0[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.add %116, %30  : i64
    %118 = llvm.getelementptr %115[%117] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %119 = llvm.ptrtoint %118 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%113, %114, %119, %97, %21) : (i64, i64, i64, i64, i32) -> ()
    %120 = llvm.load %73 : !llvm.ptr<i64>
    %121 = llvm.add %120, %29  : i64
    llvm.store %121, %73 : !llvm.ptr<i64>
    %122 = llvm.load %78 : !llvm.ptr<ptr<i8>>
    %123 = llvm.srem %29, %18  : i64
    %124 = llvm.mul %101, %123  : i64
    %125 = llvm.getelementptr %122[%124] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %126 = llvm.bitcast %125 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %127 = llvm.insertvalue %126, %106[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %128 = llvm.insertvalue %30, %127[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %129 = llvm.insertvalue %28, %128[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %130 = llvm.insertvalue %20, %129[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %131 = llvm.insertvalue %20, %130[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %132 = llvm.insertvalue %32, %131[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %133 = llvm.ptrtoint %126 : !llvm.ptr<f32> to i64
    %134 = llvm.add %116, %17  : i64
    %135 = llvm.getelementptr %115[%134] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %136 = llvm.ptrtoint %135 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%133, %114, %136, %120, %21) : (i64, i64, i64, i64, i32) -> ()
    %137 = llvm.load %73 : !llvm.ptr<i64>
    %138 = llvm.add %137, %29  : i64
    llvm.store %138, %73 : !llvm.ptr<i64>
    %139 = llvm.load %78 : !llvm.ptr<ptr<i8>>
    %140 = llvm.srem %16, %18  : i64
    %141 = llvm.mul %101, %140  : i64
    %142 = llvm.getelementptr %139[%141] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %143 = llvm.bitcast %142 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %144 = llvm.insertvalue %143, %106[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %145 = llvm.insertvalue %30, %144[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %146 = llvm.insertvalue %28, %145[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.insertvalue %20, %146[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.insertvalue %20, %147[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %149 = llvm.insertvalue %32, %148[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.ptrtoint %143 : !llvm.ptr<f32> to i64
    %151 = llvm.add %116, %15  : i64
    %152 = llvm.getelementptr %115[%151] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %153 = llvm.ptrtoint %152 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%150, %114, %153, %137, %21) : (i64, i64, i64, i64, i32) -> ()
    %154 = llvm.load %73 : !llvm.ptr<i64>
    %155 = llvm.add %154, %29  : i64
    llvm.store %155, %73 : !llvm.ptr<i64>
    %156 = llvm.load %78 : !llvm.ptr<ptr<i8>>
    %157 = llvm.srem %14, %18  : i64
    %158 = llvm.mul %101, %157  : i64
    %159 = llvm.getelementptr %156[%158] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %160 = llvm.bitcast %159 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %161 = llvm.insertvalue %160, %106[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %162 = llvm.insertvalue %30, %161[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %163 = llvm.insertvalue %28, %162[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.insertvalue %20, %163[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.insertvalue %20, %164[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.insertvalue %32, %165[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.ptrtoint %160 : !llvm.ptr<f32> to i64
    %168 = llvm.add %116, %13  : i64
    %169 = llvm.getelementptr %115[%168] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %170 = llvm.ptrtoint %169 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%167, %114, %170, %154, %21) : (i64, i64, i64, i64, i32) -> ()
    llvm.call @rsync(%71, %74) : (!llvm.ptr<i64>, i64) -> ()
    llvm.br ^bb7(%30, %28, %89, %112, %97, %132, %120, %149, %137, %166, %154 : i64, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64)
  ^bb7(%171: i64, %172: i64, %173: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, %174: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %175: i64, %176: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %177: i64, %178: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %179: i64, %180: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %181: i64):  // 2 preds: ^bb6, ^bb20
    %182 = llvm.icmp "slt" %171, %36 : i64
    llvm.cond_br %182, ^bb8, ^bb21
  ^bb8:  // pred: ^bb7
    %183 = llvm.add %172, %32  : i64
    %184 = llvm.add %171, %27  : i64
    %185 = llvm.load %73 : !llvm.ptr<i64>
    %186 = llvm.add %185, %29  : i64
    llvm.store %186, %73 : !llvm.ptr<i64>
    %187 = llvm.load %78 : !llvm.ptr<ptr<i8>>
    %188 = llvm.srem %172, %18  : i64
    %189 = llvm.mul %101, %188  : i64
    %190 = llvm.getelementptr %187[%189] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %191 = llvm.bitcast %190 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %192 = llvm.insertvalue %191, %106[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %193 = llvm.insertvalue %30, %192[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %194 = llvm.insertvalue %28, %193[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %195 = llvm.insertvalue %20, %194[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %196 = llvm.insertvalue %20, %195[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %197 = llvm.insertvalue %32, %196[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %198 = llvm.ptrtoint %191 : !llvm.ptr<f32> to i64
    %199 = llvm.mul %184, %37  : i64
    %200 = llvm.add %199, %116  : i64
    %201 = llvm.getelementptr %115[%200] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %202 = llvm.ptrtoint %201 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%198, %114, %202, %185, %21) : (i64, i64, i64, i64, i32) -> ()
    llvm.call @rsync(%71, %175) : (!llvm.ptr<i64>, i64) -> ()
    llvm.br ^bb9(%30 : i64)
  ^bb9(%203: i64):  // 2 preds: ^bb8, ^bb19
    %204 = llvm.icmp "slt" %203, %28 : i64
    llvm.cond_br %204, ^bb10, ^bb20
  ^bb10:  // pred: ^bb9
    %205 = llvm.mul %203, %28  : i64
    %206 = llvm.add %171, %205  : i64
    llvm.br ^bb11(%30 : i64)
  ^bb11(%207: i64):  // 2 preds: ^bb10, ^bb18
    %208 = llvm.icmp "slt" %207, %37 : i64
    llvm.cond_br %208, ^bb12, ^bb19
  ^bb12:  // pred: ^bb11
    llvm.br ^bb13(%30 : i64)
  ^bb13(%209: i64):  // 2 preds: ^bb12, ^bb17
    %210 = llvm.icmp "slt" %209, %37 : i64
    llvm.cond_br %210, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    %211 = llvm.mul %206, %37  : i64
    %212 = llvm.add %211, %207  : i64
    %213 = llvm.getelementptr %49[%212] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %214 = llvm.bitcast %213 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %215 = llvm.load %214 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    llvm.store %215, %70 : !llvm.ptr<vector<8xf32>>
    %216 = llvm.add %206, %32  : i64
    %217 = llvm.mul %216, %37  : i64
    %218 = llvm.add %217, %207  : i64
    %219 = llvm.getelementptr %49[%218] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %220 = llvm.bitcast %219 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %221 = llvm.load %220 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %222 = llvm.getelementptr %70[1] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    llvm.store %221, %222 : !llvm.ptr<vector<8xf32>>
    %223 = llvm.add %206, %33  : i64
    %224 = llvm.mul %223, %37  : i64
    %225 = llvm.add %224, %207  : i64
    %226 = llvm.getelementptr %49[%225] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %227 = llvm.bitcast %226 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %228 = llvm.load %227 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %229 = llvm.getelementptr %70[2] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    llvm.store %228, %229 : !llvm.ptr<vector<8xf32>>
    %230 = llvm.add %206, %34  : i64
    %231 = llvm.mul %230, %37  : i64
    %232 = llvm.add %231, %207  : i64
    %233 = llvm.getelementptr %49[%232] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %234 = llvm.bitcast %233 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %235 = llvm.load %234 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %236 = llvm.getelementptr %70[3] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    llvm.store %235, %236 : !llvm.ptr<vector<8xf32>>
    llvm.br ^bb15(%30 : i64)
  ^bb15(%237: i64):  // 2 preds: ^bb14, ^bb16
    %238 = llvm.icmp "slt" %237, %12 : i64
    llvm.cond_br %238, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %239 = llvm.add %209, %237  : i64
    %240 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %241 = llvm.mul %203, %20  : i64
    %242 = llvm.add %241, %239  : i64
    %243 = llvm.getelementptr %240[%242] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %244 = llvm.load %243 : !llvm.ptr<f32>
    %245 = llvm.mlir.undef : vector<8xf32>
    %246 = llvm.insertelement %244, %245[%11 : i32] : vector<8xf32>
    %247 = llvm.shufflevector %246, %245 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %248 = llvm.mul %209, %37  : i64
    %249 = llvm.add %207, %248  : i64
    %250 = llvm.mul %237, %37  : i64
    %251 = llvm.add %249, %250  : i64
    %252 = llvm.extractvalue %173[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.getelementptr %252[%251] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %254 = llvm.bitcast %253 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %255 = llvm.load %254 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %256 = llvm.load %70 : !llvm.ptr<vector<8xf32>>
    %257 = "llvm.intr.fmuladd"(%247, %255, %256) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %257, %70 : !llvm.ptr<vector<8xf32>>
    %258 = llvm.add %239, %32  : i64
    %259 = llvm.add %241, %258  : i64
    %260 = llvm.getelementptr %240[%259] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %261 = llvm.load %260 : !llvm.ptr<f32>
    %262 = llvm.insertelement %261, %245[%11 : i32] : vector<8xf32>
    %263 = llvm.shufflevector %262, %245 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %264 = llvm.add %251, %37  : i64
    %265 = llvm.getelementptr %252[%264] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %266 = llvm.bitcast %265 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %267 = llvm.load %266 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %268 = llvm.load %70 : !llvm.ptr<vector<8xf32>>
    %269 = "llvm.intr.fmuladd"(%263, %267, %268) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %269, %70 : !llvm.ptr<vector<8xf32>>
    %270 = llvm.add %239, %33  : i64
    %271 = llvm.add %241, %270  : i64
    %272 = llvm.getelementptr %240[%271] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %273 = llvm.load %272 : !llvm.ptr<f32>
    %274 = llvm.insertelement %273, %245[%11 : i32] : vector<8xf32>
    %275 = llvm.shufflevector %274, %245 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %276 = llvm.add %251, %10  : i64
    %277 = llvm.getelementptr %252[%276] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %278 = llvm.bitcast %277 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %279 = llvm.load %278 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %280 = llvm.load %70 : !llvm.ptr<vector<8xf32>>
    %281 = "llvm.intr.fmuladd"(%275, %279, %280) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %281, %70 : !llvm.ptr<vector<8xf32>>
    %282 = llvm.add %239, %34  : i64
    %283 = llvm.add %241, %282  : i64
    %284 = llvm.getelementptr %240[%283] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %285 = llvm.load %284 : !llvm.ptr<f32>
    %286 = llvm.insertelement %285, %245[%11 : i32] : vector<8xf32>
    %287 = llvm.shufflevector %286, %245 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %288 = llvm.add %251, %9  : i64
    %289 = llvm.getelementptr %252[%288] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %290 = llvm.bitcast %289 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %291 = llvm.load %290 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %292 = llvm.load %70 : !llvm.ptr<vector<8xf32>>
    %293 = "llvm.intr.fmuladd"(%287, %291, %292) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %293, %70 : !llvm.ptr<vector<8xf32>>
    %294 = llvm.add %239, %37  : i64
    %295 = llvm.add %241, %294  : i64
    %296 = llvm.getelementptr %240[%295] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %297 = llvm.load %296 : !llvm.ptr<f32>
    %298 = llvm.insertelement %297, %245[%11 : i32] : vector<8xf32>
    %299 = llvm.shufflevector %298, %245 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %300 = llvm.load %254 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %301 = llvm.load %222 : !llvm.ptr<vector<8xf32>>
    %302 = "llvm.intr.fmuladd"(%299, %300, %301) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %302, %222 : !llvm.ptr<vector<8xf32>>
    %303 = llvm.add %239, %8  : i64
    %304 = llvm.add %241, %303  : i64
    %305 = llvm.getelementptr %240[%304] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %306 = llvm.load %305 : !llvm.ptr<f32>
    %307 = llvm.insertelement %306, %245[%11 : i32] : vector<8xf32>
    %308 = llvm.shufflevector %307, %245 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %309 = llvm.load %266 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %310 = llvm.load %222 : !llvm.ptr<vector<8xf32>>
    %311 = "llvm.intr.fmuladd"(%308, %309, %310) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %311, %222 : !llvm.ptr<vector<8xf32>>
    %312 = llvm.add %239, %7  : i64
    %313 = llvm.add %241, %312  : i64
    %314 = llvm.getelementptr %240[%313] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %315 = llvm.load %314 : !llvm.ptr<f32>
    %316 = llvm.insertelement %315, %245[%11 : i32] : vector<8xf32>
    %317 = llvm.shufflevector %316, %245 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %318 = llvm.load %278 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %319 = llvm.load %222 : !llvm.ptr<vector<8xf32>>
    %320 = "llvm.intr.fmuladd"(%317, %318, %319) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %320, %222 : !llvm.ptr<vector<8xf32>>
    %321 = llvm.add %239, %6  : i64
    %322 = llvm.add %241, %321  : i64
    %323 = llvm.getelementptr %240[%322] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %324 = llvm.load %323 : !llvm.ptr<f32>
    %325 = llvm.insertelement %324, %245[%11 : i32] : vector<8xf32>
    %326 = llvm.shufflevector %325, %245 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %327 = llvm.load %290 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %328 = llvm.load %222 : !llvm.ptr<vector<8xf32>>
    %329 = "llvm.intr.fmuladd"(%326, %327, %328) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %329, %222 : !llvm.ptr<vector<8xf32>>
    %330 = llvm.add %239, %10  : i64
    %331 = llvm.add %241, %330  : i64
    %332 = llvm.getelementptr %240[%331] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %333 = llvm.load %332 : !llvm.ptr<f32>
    %334 = llvm.insertelement %333, %245[%11 : i32] : vector<8xf32>
    %335 = llvm.shufflevector %334, %245 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %336 = llvm.load %254 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %337 = llvm.load %229 : !llvm.ptr<vector<8xf32>>
    %338 = "llvm.intr.fmuladd"(%335, %336, %337) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %338, %229 : !llvm.ptr<vector<8xf32>>
    %339 = llvm.add %239, %5  : i64
    %340 = llvm.add %241, %339  : i64
    %341 = llvm.getelementptr %240[%340] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %342 = llvm.load %341 : !llvm.ptr<f32>
    %343 = llvm.insertelement %342, %245[%11 : i32] : vector<8xf32>
    %344 = llvm.shufflevector %343, %245 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %345 = llvm.load %266 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %346 = llvm.load %229 : !llvm.ptr<vector<8xf32>>
    %347 = "llvm.intr.fmuladd"(%344, %345, %346) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %347, %229 : !llvm.ptr<vector<8xf32>>
    %348 = llvm.add %239, %4  : i64
    %349 = llvm.add %241, %348  : i64
    %350 = llvm.getelementptr %240[%349] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %351 = llvm.load %350 : !llvm.ptr<f32>
    %352 = llvm.insertelement %351, %245[%11 : i32] : vector<8xf32>
    %353 = llvm.shufflevector %352, %245 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %354 = llvm.load %278 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %355 = llvm.load %229 : !llvm.ptr<vector<8xf32>>
    %356 = "llvm.intr.fmuladd"(%353, %354, %355) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %356, %229 : !llvm.ptr<vector<8xf32>>
    %357 = llvm.add %239, %3  : i64
    %358 = llvm.add %241, %357  : i64
    %359 = llvm.getelementptr %240[%358] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %360 = llvm.load %359 : !llvm.ptr<f32>
    %361 = llvm.insertelement %360, %245[%11 : i32] : vector<8xf32>
    %362 = llvm.shufflevector %361, %245 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %363 = llvm.load %290 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %364 = llvm.load %229 : !llvm.ptr<vector<8xf32>>
    %365 = "llvm.intr.fmuladd"(%362, %363, %364) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %365, %229 : !llvm.ptr<vector<8xf32>>
    %366 = llvm.add %239, %9  : i64
    %367 = llvm.add %241, %366  : i64
    %368 = llvm.getelementptr %240[%367] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %369 = llvm.load %368 : !llvm.ptr<f32>
    %370 = llvm.insertelement %369, %245[%11 : i32] : vector<8xf32>
    %371 = llvm.shufflevector %370, %245 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %372 = llvm.load %254 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %373 = llvm.load %236 : !llvm.ptr<vector<8xf32>>
    %374 = "llvm.intr.fmuladd"(%371, %372, %373) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %374, %236 : !llvm.ptr<vector<8xf32>>
    %375 = llvm.add %239, %2  : i64
    %376 = llvm.add %241, %375  : i64
    %377 = llvm.getelementptr %240[%376] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %378 = llvm.load %377 : !llvm.ptr<f32>
    %379 = llvm.insertelement %378, %245[%11 : i32] : vector<8xf32>
    %380 = llvm.shufflevector %379, %245 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %381 = llvm.load %266 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %382 = llvm.load %236 : !llvm.ptr<vector<8xf32>>
    %383 = "llvm.intr.fmuladd"(%380, %381, %382) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %383, %236 : !llvm.ptr<vector<8xf32>>
    %384 = llvm.add %239, %1  : i64
    %385 = llvm.add %241, %384  : i64
    %386 = llvm.getelementptr %240[%385] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %387 = llvm.load %386 : !llvm.ptr<f32>
    %388 = llvm.insertelement %387, %245[%11 : i32] : vector<8xf32>
    %389 = llvm.shufflevector %388, %245 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %390 = llvm.load %278 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %391 = llvm.load %236 : !llvm.ptr<vector<8xf32>>
    %392 = "llvm.intr.fmuladd"(%389, %390, %391) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %392, %236 : !llvm.ptr<vector<8xf32>>
    %393 = llvm.add %239, %0  : i64
    %394 = llvm.add %241, %393  : i64
    %395 = llvm.getelementptr %240[%394] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %396 = llvm.load %395 : !llvm.ptr<f32>
    %397 = llvm.insertelement %396, %245[%11 : i32] : vector<8xf32>
    %398 = llvm.shufflevector %397, %245 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %399 = llvm.load %290 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %400 = llvm.load %236 : !llvm.ptr<vector<8xf32>>
    %401 = "llvm.intr.fmuladd"(%398, %399, %400) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %401, %236 : !llvm.ptr<vector<8xf32>>
    %402 = llvm.add %237, %28  : i64
    llvm.br ^bb15(%402 : i64)
  ^bb17:  // pred: ^bb15
    %403 = llvm.load %70 : !llvm.ptr<vector<8xf32>>
    llvm.store %403, %214 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %404 = llvm.load %222 : !llvm.ptr<vector<8xf32>>
    llvm.store %404, %220 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %405 = llvm.load %229 : !llvm.ptr<vector<8xf32>>
    llvm.store %405, %227 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %406 = llvm.load %236 : !llvm.ptr<vector<8xf32>>
    llvm.store %406, %234 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %407 = llvm.add %209, %12  : i64
    llvm.br ^bb13(%407 : i64)
  ^bb18:  // pred: ^bb13
    %408 = llvm.add %207, %12  : i64
    llvm.br ^bb11(%408 : i64)
  ^bb19:  // pred: ^bb11
    %409 = llvm.add %203, %32  : i64
    llvm.br ^bb9(%409 : i64)
  ^bb20:  // pred: ^bb9
    %410 = llvm.add %171, %26  : i64
    llvm.br ^bb7(%410, %183, %173, %176, %177, %178, %179, %180, %181, %197, %185 : i64, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64)
  ^bb21:  // pred: ^bb7
    llvm.return %57 : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg1: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %arg2: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>) attributes {access_mem_catcher = [["ref0", 0], ["ref1", 1]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %0 = llvm.call @main_graph(%arg1, %arg2) : (!llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    llvm.store %0, %arg0 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.return
  }
}


#map = affine_map<(d0, d1) -> (0, d0, d1)>

module attributes {
    rmem.templates = {
  // "t" = [rbase,  l_ofst,    r_ofst, SizeInEle, eleType, bSize,  nBlock, type],
    "t0" = ["ref0", 8192,      0,      768,        f32,    768,   1,   1]
  }
} {
  func.func @main_graph(%arg0: memref<1x1x768xf32>, %arg1: memref<64x1x768xf32>) -> () attributes {input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"],
    access_mem_catcher = [["ref0", 0]],
    "remote_target" = 1,
    "operand_types" = [
      !rmem.rmref<1, memref<1x1x768xf32>>,
      memref<64x1x768xf32>
    ]
  } {
    %alloc_20 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      // acces_mem [0->768]
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %162 = affine.load %arg1[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %163 = affine.load %arg0[0, %arg4, %arg5] : memref<1x1x768xf32> 
          %164 = arith.addf %162, %163 : f32
          affine.store %164, %alloc_20[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    func.return
  }
}
  func.func @main_graph(%arg0: !rmem.rmref<1, memref<64512x512xf32>>, %arg1: !rmem.rmref<1, memref<512x512xf32>>) -> !rmem.rmref<1, memref<64512x512xf32>> attributes {access_mem_catcher = [["ref0", 0], ["ref1", 1]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %0 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref2", 0]], alignment = 16 : i64} : <1, memref<64512x512xf32>>
    func.return %0 : !rmem.rmref<1, memref<64512x512xf32>>
  }

  // func.func @main_graph(%arg0: !rmem.rmref<1, memref<64512x512xf32>>, %arg1: !rmem.rmref<1, memref<512x512xf32>>) -> memref<64512x512xf32> attributes {access_mem_catcher = [["ref0", 0], ["ref1", 1]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
  //   %alloc = memref.alloc() {alignment = 16 : i64} : memref<64512x512xf32>
  //   func.return %alloc : memref<64512x512xf32>
  // }
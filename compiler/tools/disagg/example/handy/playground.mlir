module {
  // llvm.func @testEleTyCompatibility(i64) -> !llvm.ptr<memref<2x3xi32>>
  func.func @memref_reshape(%arg0: memref<2x3xi32>, %shape: memref<1xi32>) -> memref<6xi32> {
    %new_vec = memref.reshape %arg0(%shape) : (memref<2x3xi32>, memref<1xi32>) -> memref<6xi32>
    return %new_vec : memref<6xi32>
  }
  func.func @main() {
    %0 = memref.alloc() : memref<2x3xi32>
    %s1 = memref.alloc() : memref<1xi32>
    %1 = call @memref_reshape(%0, %s1) : (memref<2x3xi32>, memref<1xi32>) -> memref<6xi32>

    memref.dealloc %1 : memref<6xi32>
    %null = rmem.nullref : !rmem.rmref<1, !llvm.ptr<i8>>
    return
  }
}

module @nest {
  
}
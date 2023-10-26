module {
  memref.global "private" constant @__constant_5xf32 : memref<5xf32> = dense<[-1.000000e+00, 1.000000e+00, 0.000000e+00, -0.000000e+00, 1.000000e-01]> {alignment = 64 : i64}
  memref.global "private" constant @__constant_8xf32 : memref<8xf32> = dense<[-1.000000e+00, 1.000000e+00, 0.000000e+00, -0.000000e+00, -1.000000e-01, 1.000000e-01, 3.000000e+00, -3.000000e+00]> {alignment = 64 : i64}
  func.func @abs(%arg0: memref<5xf32>) -> memref<5xf32> {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c5 = arith.constant 5 : index
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<5xf32>
    scf.for %arg1 = %c0 to %c5 step %c1 {
      %subview = memref.subview %arg0[%arg1] [1] [1] : memref<5xf32> to memref<1xf32, strided<[1], offset: ?>>
      %0 = memref.load %subview[%c0] : memref<1xf32, strided<[1], offset: ?>>
      %1 = math.absf %0 : f32
      memref.store %1, %alloc[%arg1] : memref<5xf32>
    }
    return %alloc : memref<5xf32>
  }
  func.func @neg(%arg0: memref<8xf32>) -> memref<8xf32> {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c8 = arith.constant 8 : index
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<8xf32>
    scf.for %arg1 = %c0 to %c8 step %c1 {
      %subview = memref.subview %arg0[%arg1] [1] [1] : memref<8xf32> to memref<1xf32, strided<[1], offset: ?>>
      %0 = memref.load %subview[%c0] : memref<1xf32, strided<[1], offset: ?>>
      %1 = arith.negf %0 : f32
      memref.store %1, %alloc[%arg1] : memref<8xf32>
    }
    return %alloc : memref<8xf32>
  }
  func.func @main() {
    %0 = memref.get_global @__constant_8xf32 : memref<8xf32>
    %1 = memref.get_global @__constant_5xf32 : memref<5xf32>
    %2 = call @abs(%1) : (memref<5xf32>) -> memref<5xf32>
    %cast = memref.cast %2 : memref<5xf32> to memref<*xf32>
    call @printMemrefF32(%cast) : (memref<*xf32>) -> ()
    %3 = call @neg(%0) : (memref<8xf32>) -> memref<8xf32>
    %cast_0 = memref.cast %3 : memref<8xf32> to memref<*xf32>
    call @printMemrefF32(%cast_0) : (memref<*xf32>) -> ()
    return
  }
  func.func private @printMemrefF32(memref<*xf32>)
}
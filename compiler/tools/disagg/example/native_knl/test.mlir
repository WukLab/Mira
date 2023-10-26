module {
  memref.global "private" constant @__constant_5x2xf32 : memref<5x2xf32> = dense<[[-1.100000e+00, 1.200000e+00], [1.000000e-01, -2.000000e-01], [3.000000e-01, -2.200000e+00], [2.100000e+00, 0.000000e+00], [-0.000000e+00, 3.000000e-01]]> {alignment = 64 : i64}
  func.func @abs(%arg0: memref<5x2xf32>, %arg1: memref<2x5xf32>) {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c5 = arith.constant 5 : index
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<2x5xf32>
    %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<2x5xf32>
    scf.for %arg2 = %c0 to %c2 step %c1 {
      scf.for %arg3 = %c0 to %c5 step %c1 {
        %subview = memref.subview %arg0[%arg3, %arg2] [1, 1] [1, 1] : memref<5x2xf32> to memref<1x1xf32, strided<[2, 1], offset: ?>>
        %0 = memref.load %subview[%c0, %c0] : memref<1x1xf32, strided<[2, 1], offset: ?>>
        memref.store %0, %alloc_0[%arg2, %arg3] : memref<2x5xf32>
      }
    }
    scf.for %arg2 = %c0 to %c2 step %c1 {
      scf.for %arg3 = %c0 to %c5 step %c1 {
        %subview = memref.subview %alloc_0[%arg2, %arg3] [1, 1] [1, 1] : memref<2x5xf32> to memref<1x1xf32, strided<[5, 1], offset: ?>>
        %0 = memref.load %subview[%c0, %c0] : memref<1x1xf32, strided<[5, 1], offset: ?>>
        %1 = math.absf %0 : f32
        memref.store %1, %alloc[%arg2, %arg3] : memref<2x5xf32>
      }
    }
    memref.copy %alloc, %arg1 : memref<2x5xf32> to memref<2x5xf32>
    return
  }
  func.func @main() {
    %0 = memref.get_global @__constant_5x2xf32 : memref<5x2xf32>
    %alloc = memref.alloc() : memref<2x5xf32>
    call @abs(%0, %alloc) : (memref<5x2xf32>, memref<2x5xf32>) -> ()
    %cast = memref.cast %alloc : memref<2x5xf32> to memref<*xf32>
    call @printMemrefF32(%cast) : (memref<*xf32>) -> ()
    return
  }
  func.func private @printMemrefF32(memref<*xf32>)
}
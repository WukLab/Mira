#map = affine_map<(d0, d1) -> (d0, d1)>
module {
  memref.global "private" constant @__constant_2x3xf32 : memref<2x3xf32> = dense<[[-1.000000e+00, 1.000000e+00, 0.000000e+00], [-0.000000e+00, -1.000000e-01, 1.000000e-01]]> {alignment = 64 : i64}
  func.func @max(%arg0: memref<2x3xf32>, %arg1: memref<2x3xf32>) -> memref<2x3xf32> {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<2x3xf32>
    scf.for %arg2 = %c0 to %c2 step %c1 {
      %subview = memref.subview %arg0[%arg2, 0] [1, 3] [1, 1] : memref<2x3xf32> to memref<1x3xf32, strided<[3, 1], offset: ?>>
      %subview_0 = memref.subview %arg1[%arg2, 0] [1, 3] [1, 1] : memref<2x3xf32> to memref<1x3xf32, strided<[3, 1], offset: ?>>
      %subview_1 = memref.subview %alloc[%arg2, 0] [1, 3] [1, 1] : memref<2x3xf32> to memref<1x3xf32, strided<[3, 1], offset: ?>>
      linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel", "parallel"]} ins(%subview, %subview_0 : memref<1x3xf32, strided<[3, 1], offset: ?>>, memref<1x3xf32, strided<[3, 1], offset: ?>>) outs(%subview_1 : memref<1x3xf32, strided<[3, 1], offset: ?>>) {
      ^bb0(%in: f32, %in_2: f32, %out: f32):
        %0 = arith.maxf %in, %in_2 : f32
        linalg.yield %0 : f32
      }
      memref.copy %subview_1, %subview_1 : memref<1x3xf32, strided<[3, 1], offset: ?>> to memref<1x3xf32, strided<[3, 1], offset: ?>>
    }
    return %alloc : memref<2x3xf32>
  }
  func.func @main() {
    %0 = memref.get_global @__constant_2x3xf32 : memref<2x3xf32>
    %1 = call @max(%0, %0) : (memref<2x3xf32>, memref<2x3xf32>) -> memref<2x3xf32>
    %cast = memref.cast %1 : memref<2x3xf32> to memref<*xf32>
    call @printMemrefF32(%cast) : (memref<*xf32>) -> ()
    return
  }
  func.func private @printMemrefF32(memref<*xf32>)
}
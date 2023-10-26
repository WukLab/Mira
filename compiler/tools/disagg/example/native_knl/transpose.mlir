#map = affine_map<(d0, d1) -> (d1, d0)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
module {
  memref.global "private" constant @__constant_5x2xf32 : memref<5x2xf32> = dense<[[-1.100000e+00, 1.200000e+00], [1.000000e-01, -2.000000e-01], [3.000000e-01, -2.200000e+00], [2.100000e+00, 0.000000e+00], [-0.000000e+00, 3.000000e-01]]> {alignment = 64 : i64}
  func.func @abs(%arg0: memref<5x2xf32>) -> memref<2x5xf32> {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<2x5xf32>
    %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<2x5xf32>
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %subview = memref.subview %arg0[0, %arg1] [5, 1] [1, 1] : memref<5x2xf32> to memref<5x1xf32, strided<[2, 1], offset: ?>>
      %subview_1 = memref.subview %alloc_0[%arg1, 0] [1, 5] [1, 1] : memref<2x5xf32> to memref<1x5xf32, strided<[5, 1], offset: ?>>
      linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel"]} ins(%subview : memref<5x1xf32, strided<[2, 1], offset: ?>>) outs(%subview_1 : memref<1x5xf32, strided<[5, 1], offset: ?>>) {
      ^bb0(%in: f32, %out: f32):
        linalg.yield %in : f32
      }
      memref.copy %subview_1, %subview_1 : memref<1x5xf32, strided<[5, 1], offset: ?>> to memref<1x5xf32, strided<[5, 1], offset: ?>>
    }
    scf.for %arg1 = %c0 to %c2 step %c1 {
      %subview = memref.subview %alloc_0[%arg1, 0] [1, 5] [1, 1] : memref<2x5xf32> to memref<1x5xf32, strided<[5, 1], offset: ?>>
      %subview_1 = memref.subview %alloc[%arg1, 0] [1, 5] [1, 1] : memref<2x5xf32> to memref<1x5xf32, strided<[5, 1], offset: ?>>
      linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%subview : memref<1x5xf32, strided<[5, 1], offset: ?>>) outs(%subview_1 : memref<1x5xf32, strided<[5, 1], offset: ?>>) {
      ^bb0(%in: f32, %out: f32):
        %0 = math.absf %in : f32
        linalg.yield %0 : f32
      }
      memref.copy %subview_1, %subview_1 : memref<1x5xf32, strided<[5, 1], offset: ?>> to memref<1x5xf32, strided<[5, 1], offset: ?>>
    }
    return %alloc : memref<2x5xf32>
  }
  func.func @main() {
    %0 = memref.get_global @__constant_5x2xf32 : memref<5x2xf32>
    %1 = call @abs(%0) : (memref<5x2xf32>) -> memref<2x5xf32>
    %cast = memref.cast %1 : memref<2x5xf32> to memref<*xf32>
    call @printMemrefF32(%cast) : (memref<*xf32>) -> ()
    return
  }
  func.func private @printMemrefF32(memref<*xf32>)
}
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c6 = arith.constant 6 : index
    %c7 = arith.constant 7 : index
    %c0 = arith.constant 0 : index
    %cst_0 = arith.constant 0xFF800000 : f32
    %cst_1 = arith.constant 0.000000e+00 : f32
%alloc_2716 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1024xf32>
%alloc_584 = memref.alloc() {alignment = 16 : i64} : memref<1024x50264xf32>
%1338 = rmem.alloc_memref(2, ) {alignment = 16 : i64} : <1, memref<64x1x50264xf32>>
affine.for %arg49 = 0 to 64 {
  affine.for %arg50 = 0 to 1 {
    affine.for %arg51 = 0 to 50264 step 8 {
      affine.for %arg52 = 0 to 1024 step 8 {
        %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
        affine.for %arg53 = 0 to 1 {
          %1339 = arith.addi %arg53, %arg50 : index
          %1340 = rmem.vec.load %1338[%arg49, %1339, %arg51] : !rmem.rmref<1, memref<64x1x50264xf32>>, vector<8xf32>
          affine.store %1340, %alloca[0] : memref<1xvector<8xf32>>

          %1341 = memref.load %alloc_2716[%arg49, %1339, %arg52] : memref<64x1x1024xf32>
          %1342 = vector.broadcast %1341 : f32 to vector<8xf32>
          %1343 = vector.load %alloc_584[%arg52, %arg51] : memref<1024x50264xf32>, vector<8xf32>
          %1344 = affine.load %alloca[0] : memref<1xvector<8xf32>>
          %1345 = vector.fma %1342, %1343, %1344 : vector<8xf32>
          affine.store %1345, %alloca[0] : memref<1xvector<8xf32>>
          %1346 = arith.addi %arg52, %c1 : index
          %1347 = memref.load %alloc_2716[%arg49, %1339, %1346] : memref<64x1x1024xf32>
          %1348 = vector.broadcast %1347 : f32 to vector<8xf32>
          %1349 = vector.load %alloc_584[%1346, %arg51] : memref<1024x50264xf32>, vector<8xf32>
          %1350 = affine.load %alloca[0] : memref<1xvector<8xf32>>
          %1351 = vector.fma %1348, %1349, %1350 : vector<8xf32>
          affine.store %1351, %alloca[0] : memref<1xvector<8xf32>>
          %1352 = arith.addi %arg52, %c2 : index
          %1353 = memref.load %alloc_2716[%arg49, %1339, %1352] : memref<64x1x1024xf32>
          %1354 = vector.broadcast %1353 : f32 to vector<8xf32>
          %1355 = vector.load %alloc_584[%1352, %arg51] : memref<1024x50264xf32>, vector<8xf32>
          %1356 = affine.load %alloca[0] : memref<1xvector<8xf32>>
          %1357 = vector.fma %1354, %1355, %1356 : vector<8xf32>
          affine.store %1357, %alloca[0] : memref<1xvector<8xf32>>
          %1358 = arith.addi %arg52, %c3 : index
          %1359 = memref.load %alloc_2716[%arg49, %1339, %1358] : memref<64x1x1024xf32>
          %1360 = vector.broadcast %1359 : f32 to vector<8xf32>
          %1361 = vector.load %alloc_584[%1358, %arg51] : memref<1024x50264xf32>, vector<8xf32>
          %1362 = affine.load %alloca[0] : memref<1xvector<8xf32>>
          %1363 = vector.fma %1360, %1361, %1362 : vector<8xf32>
          affine.store %1363, %alloca[0] : memref<1xvector<8xf32>>
          %1364 = arith.addi %arg52, %c4 : index
          %1365 = memref.load %alloc_2716[%arg49, %1339, %1364] : memref<64x1x1024xf32>
          %1366 = vector.broadcast %1365 : f32 to vector<8xf32>
          %1367 = vector.load %alloc_584[%1364, %arg51] : memref<1024x50264xf32>, vector<8xf32>
          %1368 = affine.load %alloca[0] : memref<1xvector<8xf32>>
          %1369 = vector.fma %1366, %1367, %1368 : vector<8xf32>
          affine.store %1369, %alloca[0] : memref<1xvector<8xf32>>
          %1370 = arith.addi %arg52, %c5 : index
          %1371 = memref.load %alloc_2716[%arg49, %1339, %1370] : memref<64x1x1024xf32>
          %1372 = vector.broadcast %1371 : f32 to vector<8xf32>
          %1373 = vector.load %alloc_584[%1370, %arg51] : memref<1024x50264xf32>, vector<8xf32>
          %1374 = affine.load %alloca[0] : memref<1xvector<8xf32>>
          %1375 = vector.fma %1372, %1373, %1374 : vector<8xf32>
          affine.store %1375, %alloca[0] : memref<1xvector<8xf32>>
          %1376 = arith.addi %arg52, %c6 : index
          %1377 = memref.load %alloc_2716[%arg49, %1339, %1376] : memref<64x1x1024xf32>
          %1378 = vector.broadcast %1377 : f32 to vector<8xf32>
          %1379 = vector.load %alloc_584[%1376, %arg51] : memref<1024x50264xf32>, vector<8xf32>
          %1380 = affine.load %alloca[0] : memref<1xvector<8xf32>>
          %1381 = vector.fma %1378, %1379, %1380 : vector<8xf32>
          affine.store %1381, %alloca[0] : memref<1xvector<8xf32>>
          %1382 = arith.addi %arg52, %c7 : index
          %1383 = memref.load %alloc_2716[%arg49, %1339, %1382] : memref<64x1x1024xf32>
          %1384 = vector.broadcast %1383 : f32 to vector<8xf32>
          %1385 = vector.load %alloc_584[%1382, %arg51] : memref<1024x50264xf32>, vector<8xf32>
          %1386 = affine.load %alloca[0] : memref<1xvector<8xf32>>
          %1387 = vector.fma %1384, %1385, %1386 : vector<8xf32>
          affine.store %1387, %alloca[0] : memref<1xvector<8xf32>>
          %1388 = affine.load %alloca[0] : memref<1xvector<8xf32>>
          rmem.vec.store %1388, %1338[%arg49, %1339, %arg51] : !rmem.rmref<1, memref<64x1x50264xf32>>, vector<8xf32>
        }
      }
    }
  }
}
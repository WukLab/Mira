
//===-------------------------------------------===//
Legalizing operation : 'builtin.module'(0x7fde2ab089e0) {
} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.func'(0x7fde2a816b30) {
} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.func'(0x7fde2a816ff0) {
} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.global'(0x7fde2a817050) {
} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.func'(0x7fde2a819450) {
} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2a8192e0) {
  %0 = "llvm.mlir.constant"() {value = 10 : index} : () -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2a819600) {
  %1 = "llvm.mlir.constant"() {value = 0 : index} : () -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2a8198b0) {
  %2 = "llvm.mlir.constant"() {value = 1 : index} : () -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2a819a30) {
  %3 = "llvm.mlir.constant"() {value = 0 : i32} : () -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2a819bb0) {
  %4 = "llvm.mlir.constant"() {value = 5 : index} : () -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2a819d60) {
  %5 = "llvm.mlir.constant"() {value = -1 : index} : () -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2a819f10) {
  %6 = "llvm.mlir.constant"() {value = 4 : index} : () -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2a81a0d0) {
  %7 = "llvm.mlir.constant"() {value = 9.990000e+01 : f64} : () -> f64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2a81a280) {
  %8 = "llvm.mlir.constant"() {value = 10 : i32} : () -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.call'(0x7fde2a81a440) {
  %9 = "llvm.call"(%8) {callee = @init_min_heap} : (i32) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>

  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.call -> ()' {
  } -> FAILURE : pattern failed to match

  * Pattern : 'llvm.call -> ()' {
    ** Insert  : 'llvm.call'(0x7fde2aa0ae70)
    ** Replace : 'llvm.call'(0x7fde2a81a440)

    //===-------------------------------------------===//
    Legalizing operation : 'llvm.call'(0x7fde2aa0ae70) {
      %9 = "llvm.call"(%8) {callee = @init_min_heap} : (i32) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.br'(0x7fde2a81ac70) {
  "llvm.br"(%1)[^bb1] : (i64) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.icmp'(0x7fde2a81ad80) {
  %12 = "llvm.icmp"(%11, %0) {predicate = 2 : i64} : (i64, i64) -> i1

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.cond_br'(0x7fde2a81b1e0) {
  "llvm.cond_br"(%12)[^bb2, ^bb3] {operand_segment_sizes = dense<[1, 0, 0]> : vector<3xi32>} : (i1) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.br'(0x7fde2a81cc20) {
  "llvm.br"(%1)[^bb4] : (i64) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.icmp'(0x7fde2a81cd20) {
  %24 = "llvm.icmp"(%23, %4) {predicate = 2 : i64} : (i64, i64) -> i1

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.cond_br'(0x7fde2a81cf10) {
  "llvm.cond_br"(%24)[^bb5, ^bb6] {operand_segment_sizes = dense<[1, 0, 0]> : vector<3xi32>} : (i1) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2a81d930) {
  %29 = "llvm.getelementptr"(%10) {structIndices = dense<[0, 1]> : tensor<2xi32>} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.addressof'(0x7fde2a81db50) {
  %30 = "llvm.mlir.addressof"() {global_name = @str0} : () -> !llvm.ptr<array<7 x i8>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2a81dbc0) {
  %31 = "llvm.getelementptr"(%30) {structIndices = dense<0> : tensor<2xi32>} : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.br'(0x7fde2a81dc80) {
  "llvm.br"()[^bb7] : () -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2a81dd50) {
  %32 = "llvm.load"(%29) : (!llvm.ptr<i32>) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.icmp'(0x7fde2a81ddd0) {
  %33 = "llvm.icmp"(%32, %3) {predicate = 1 : i64} : (i32, i32) -> i1

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.cond_br'(0x7fde2a81dfc0) {
  "llvm.cond_br"(%33)[^bb8, ^bb9] {operand_segment_sizes = dense<[1, 0, 0]> : vector<3xi32>} : (i1) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.return'(0x7fde2a81e8a0) {
  "llvm.return"(%3) : (i32) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.call'(0x7fde2a81e1d0) {
  %34 = "llvm.call"(%10) {callee = @extract_min} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(f64, i32)>>

  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.call -> ()' {
  } -> FAILURE : pattern failed to match

  * Pattern : 'llvm.call -> ()' {
    ** Insert  : 'rmem.pack'(0x7fde2ac04590)
    ** Insert  : 'llvm.call'(0x7fde2a974d00)
    ** Replace : 'llvm.call'(0x7fde2a81e1d0)

    //===-------------------------------------------===//
    Legalizing operation : 'rmem.pack'(0x7fde2ac04590) {
      %35 = "rmem.pack"(%10) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//

    //===-------------------------------------------===//
    Legalizing operation : 'llvm.call'(0x7fde2a974d00) {
      %36 = "llvm.call"(%35) {callee = @extract_min} : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2a81e380) {
  %38 = "llvm.getelementptr"(%37) {structIndices = dense<[0, 1]> : tensor<2xi32>} : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2a81e420) {
  %39 = "llvm.load"(%38) : (!llvm.ptr<i32>) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2a81e620) {
  %40 = "llvm.getelementptr"(%37) {structIndices = dense<0> : tensor<2xi32>} : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2a81e6d0) {
  %41 = "llvm.load"(%40) : (!llvm.ptr<f64>) -> f64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.call'(0x7fde2a81e780) {
  %42 = "llvm.call"(%32, %39, %41) {callee = @printf} : (!llvm.ptr<i8>, i32, f64) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.br'(0x7fde2a81e830) {
  "llvm.br"()[^bb7] : () -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mul'(0x7fde2a81cfd0) {
  %26 = "llvm.mul"(%24, %5) : (i64, i64) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.add'(0x7fde2a81b2d0) {
  %27 = "llvm.add"(%26, %6) : (i64, i64) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.trunc'(0x7fde2a81b370) {
  %28 = "llvm.trunc"(%27) : (i64) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.call'(0x7fde2a81d6d0) {
  "llvm.call"(%11, %28) {callee = @heapify} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, i32) -> ()

  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.call -> ()' {
  } -> FAILURE : pattern failed to match

  * Pattern : 'llvm.call -> ()' {
    ** Insert  : 'rmem.pack'(0x7fde2a817a60)
    ** Insert  : 'llvm.call'(0x7fde2a977ea0)
    ** Replace : 'llvm.call'(0x7fde2a81d6d0)

    //===-------------------------------------------===//
    Legalizing operation : 'rmem.pack'(0x7fde2a817a60) {
      %29 = "rmem.pack"(%10) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//

    //===-------------------------------------------===//
    Legalizing operation : 'llvm.call'(0x7fde2a977ea0) {
      "llvm.call"(%29, %28) {callee = @heapify} : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>, i32) -> ()

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.add'(0x7fde2a81b520) {
  %30 = "llvm.add"(%24, %2) : (i64, i64) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.br'(0x7fde2a81d760) {
  "llvm.br"(%30)[^bb4] : (i64) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.trunc'(0x7fde2a81af00) {
  %14 = "llvm.trunc"(%12) : (i64) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2a81b770) {
  %15 = "llvm.getelementptr"(%11) {structIndices = dense<0> : tensor<2xi32>} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2a81b810) {
  %16 = "llvm.load"(%15) : (!llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2a81bc40) {
  %17 = "llvm.getelementptr"(%16, %12) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.call'(0x7fde2a81be40) {
  %18 = "llvm.call"(%14, %7) {callee = @new_heap_node} : (i32, f64) -> !llvm.ptr<struct<(f64, i32)>>

  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.call -> ()' {
  } -> FAILURE : pattern failed to match

  * Pattern : 'llvm.call -> ()' {
    ** Insert  : 'llvm.call'(0x7fde2a977f70)
    ** Replace : 'llvm.call'(0x7fde2a81be40)

    //===-------------------------------------------===//
    Legalizing operation : 'llvm.call'(0x7fde2a977f70) {
      %18 = "llvm.call"(%14, %7) {callee = @new_heap_node} : (i32, f64) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.store'(0x7fde2a81bf20) {
  "llvm.store"(%19, %17) : (!llvm.ptr<struct<(f64, i32)>>, !llvm.ptr<ptr<struct<(f64, i32)>>>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2a81bfc0) {
  %20 = "llvm.getelementptr"(%11) {structIndices = dense<[0, 3]> : tensor<2xi32>} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2a81c4c0) {
  %21 = "llvm.load"(%20) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.extractvalue'(0x7fde2a81c040) {
  %22 = "llvm.extractvalue"(%21) {position = [1]} : (!llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2a81c900) {
  %23 = "llvm.getelementptr"(%22, %12) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.store'(0x7fde2a81ca10) {
  "llvm.store"(%14, %23) : (i32, !llvm.ptr<i32>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.add'(0x7fde2a81cab0) {
  %24 = "llvm.add"(%12, %2) : (i64, i64) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.br'(0x7fde2a81cb40) {
  "llvm.br"(%24)[^bb1] : (i64) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.func'(0x7fde2ac04f10) {
  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.func -> ()' {
    ** Insert  : 'llvm.func'(0x7fde2ab09d70)
    ** Erase   : 'llvm.func'(0x7fde2ac04f10)

    //===-------------------------------------------===//
    Legalizing operation : 'llvm.func'(0x7fde2ab09d70) {
    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2a81c470) {
  %0 = "llvm.mlir.constant"() {value = 0 : index} : () -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2a81b720) {
  %1 = "llvm.mlir.constant"() {value = 1 : index} : () -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2a81bee0) {
  %2 = "llvm.mlir.constant"() {value = 4 : index} : () -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2a819160) {
  %3 = "llvm.mlir.constant"() {value = 4 : i64} : () -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2a81d9b0) {
  %4 = "llvm.mlir.constant"() {value = 8 : i64} : () -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2a81c9a0) {
  %5 = "llvm.mlir.constant"() {value = 0 : i32} : () -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2a81df40) {
  %6 = "llvm.mlir.constant"() {value = 56 : i64} : () -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.call'(0x7fde2a81ce90) {
  %7 = "llvm.call"(%6) {callee = @malloc} : (i64) -> !llvm.ptr<i8>

  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.call -> ()' {
    ** Insert  : 'rmem.malloc_ptr'(0x7fde29f0ba60)
    ** Replace : 'llvm.call'(0x7fde2a81ce90)

    //===-------------------------------------------===//
    Legalizing operation : 'rmem.malloc_ptr'(0x7fde29f0ba60) {
      %7 = "rmem.malloc_ptr"(%6) : (i64) -> !rmem.rmref<!llvm.ptr<i8>>

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.bitcast'(0x7fde2a81e920) {
  %9 = "llvm.bitcast"(%8) : (!llvm.ptr<i8>) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2a81e9f0) {
  %10 = "llvm.getelementptr"(%9) {structIndices = dense<[0, 3]> : tensor<2xi32>} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.sext'(0x7fde2a81eac0) {
  %11 = "llvm.sext"(<<UNKNOWN SSA VALUE>>) : (i32) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mul'(0x7fde2a81eb40) {
  %12 = "llvm.mul"(%11, %3) : (i64, i64) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.udiv'(0x7fde2a81ed70) {
  %13 = "llvm.udiv"(%12, %2) : (i64, i64) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.null'(0x7fde2a81e9a0) {
  %14 = "llvm.mlir.null"() : () -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2a81d4b0) {
  %15 = "llvm.getelementptr"(%14, %13) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.ptrtoint'(0x7fde2a81ee10) {
  %16 = "llvm.ptrtoint"(%15) : (!llvm.ptr<i32>) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.call'(0x7fde2a81ee90) {
  %17 = "llvm.call"(%16) {callee = @malloc} : (i64) -> !llvm.ptr<i8>

  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.call -> ()' {
    ** Insert  : 'rmem.malloc_ptr'(0x7fde2ab0a2c0)
    ** Replace : 'llvm.call'(0x7fde2a81ee90)

    //===-------------------------------------------===//
    Legalizing operation : 'rmem.malloc_ptr'(0x7fde2ab0a2c0) {
      %17 = "rmem.malloc_ptr"(%16) : (i64) -> !rmem.rmref<!llvm.ptr<i8>>

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.bitcast'(0x7fde2a81ef10) {
  %19 = "llvm.bitcast"(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.undef'(0x7fde2a81ea70) {
  %20 = "llvm.mlir.undef"() : () -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.insertvalue'(0x7fde2a81f110) {
  %21 = "llvm.insertvalue"(%20, %19) {position = [0]} : (!llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr<i32>) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.insertvalue'(0x7fde2ac04090) {
  %22 = "llvm.insertvalue"(%21, %19) {position = [1]} : (!llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr<i32>) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.insertvalue'(0x7fde2ac04310) {
  %23 = "llvm.insertvalue"(%22, %0) {position = [2]} : (!llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.insertvalue'(0x7fde2ac04400) {
  %24 = "llvm.insertvalue"(%23, %13) {position = [3, 0]} : (!llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.insertvalue'(0x7fde2ac044f0) {
  %25 = "llvm.insertvalue"(%24, %1) {position = [4, 0]} : (!llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.store'(0x7fde2ac04600) {
  "llvm.store"(%25, %10) : (!llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac046a0) {
  %26 = "llvm.getelementptr"(%9) {structIndices = dense<[0, 1]> : tensor<2xi32>} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.store'(0x7fde2ac04710) {
  "llvm.store"(%5, %26) : (i32, !llvm.ptr<i32>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac04af0) {
  %27 = "llvm.getelementptr"(%9) {structIndices = dense<[0, 2]> : tensor<2xi32>} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.store'(0x7fde2ac04bb0) {
  "llvm.store"(<<UNKNOWN SSA VALUE>>, %27) : (i32, !llvm.ptr<i32>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac04c50) {
  %28 = "llvm.getelementptr"(%9) {structIndices = dense<0> : tensor<2xi32>} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mul'(0x7fde2ac04d20) {
  %29 = "llvm.mul"(%11, %4) : (i64, i64) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.call'(0x7fde2ac04df0) {
  %30 = "llvm.call"(%29) {callee = @malloc} : (i64) -> !llvm.ptr<i8>

  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.call -> ()' {
    ** Insert  : 'rmem.malloc_ptr'(0x7fde2ab0a340)
    ** Replace : 'llvm.call'(0x7fde2ac04df0)

    //===-------------------------------------------===//
    Legalizing operation : 'rmem.malloc_ptr'(0x7fde2ab0a340) {
      %30 = "rmem.malloc_ptr"(%29) : (i64) -> !rmem.rmref<!llvm.ptr<i8>>

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.bitcast'(0x7fde2ac04ea0) {
  %32 = "llvm.bitcast"(%31) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.store'(0x7fde2ac04f70) {
  "llvm.store"(%32, %28) : (!llvm.ptr<ptr<struct<(f64, i32)>>>, !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.return'(0x7fde2ac050d0) {
  "llvm.return"(%9) : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> ()

  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.return -> ()' {
    ** Insert  : 'rmem.pack'(0x7fde2ab0a440)
    ** Insert  : 'llvm.return'(0x7fde2ab0a4b0)
    ** Replace : 'llvm.return'(0x7fde2ac050d0)

    //===-------------------------------------------===//
    Legalizing operation : 'rmem.pack'(0x7fde2ab0a440) {
      %34 = "rmem.pack"(%10) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//

    //===-------------------------------------------===//
    Legalizing operation : 'llvm.return'(0x7fde2ab0a4b0) {
      "llvm.return"(%34) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>) -> ()

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.func'(0x7fde2ac05140) {
  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.func -> ()' {
    ** Insert  : 'llvm.func'(0x7fde2a81ed00)
    ** Erase   : 'llvm.func'(0x7fde2ac05140)

    //===-------------------------------------------===//
    Legalizing operation : 'llvm.func'(0x7fde2a81ed00) {
    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2ac04130) {
  %0 = "llvm.mlir.constant"() {value = 16 : i64} : () -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.call'(0x7fde2ac049d0) {
  %1 = "llvm.call"(%0) {callee = @malloc} : (i64) -> !llvm.ptr<i8>

  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.call -> ()' {
    ** Insert  : 'rmem.malloc_ptr'(0x7fde2ab0a240)
    ** Replace : 'llvm.call'(0x7fde2ac049d0)

    //===-------------------------------------------===//
    Legalizing operation : 'rmem.malloc_ptr'(0x7fde2ab0a240) {
      %1 = "rmem.malloc_ptr"(%0) : (i64) -> !rmem.rmref<!llvm.ptr<i8>>

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.bitcast'(0x7fde2ac04a50) {
  %3 = "llvm.bitcast"(%2) : (!llvm.ptr<i8>) -> !llvm.ptr<struct<(f64, i32)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac051b0) {
  %4 = "llvm.getelementptr"(%3) {structIndices = dense<[0, 1]> : tensor<2xi32>} : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.store'(0x7fde2ac05250) {
  "llvm.store"(<<UNKNOWN SSA VALUE>>, %4) : (i32, !llvm.ptr<i32>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac05310) {
  %5 = "llvm.getelementptr"(%3) {structIndices = dense<0> : tensor<2xi32>} : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.store'(0x7fde2ac053b0) {
  "llvm.store"(<<UNKNOWN SSA VALUE>>, %5) : (f64, !llvm.ptr<f64>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.return'(0x7fde2ac05440) {
  "llvm.return"(%3) : (!llvm.ptr<struct<(f64, i32)>>) -> ()

  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.return -> ()' {
    ** Insert  : 'rmem.pack'(0x7fde2a978110)
    ** Insert  : 'llvm.return'(0x7fde2a978180)
    ** Replace : 'llvm.return'(0x7fde2ac05440)

    //===-------------------------------------------===//
    Legalizing operation : 'rmem.pack'(0x7fde2a978110) {
      %7 = "rmem.pack"(%4) : (!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//

    //===-------------------------------------------===//
    Legalizing operation : 'llvm.return'(0x7fde2a978180) {
      "llvm.return"(%7) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>) -> ()

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.func'(0x7fde2ab06320) {
  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.func -> ()' {
    ** Insert  : 'llvm.func'(0x7fde2ab09fc0)
    ** Erase   : 'llvm.func'(0x7fde2ab06320)

    //===-------------------------------------------===//
    Legalizing operation : 'llvm.func'(0x7fde2ab09fc0) {
    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2ac05740) {
  %1 = "llvm.mlir.constant"() {value = 2 : i32} : () -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2ac05790) {
  %2 = "llvm.mlir.constant"() {value = 1 : i32} : () -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.shl'(0x7fde2ac05810) {
  %3 = "llvm.shl"(<<UNKNOWN SSA VALUE>>, %2) : (i32, i32) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.add'(0x7fde2ac058e0) {
  %4 = "llvm.add"(%3, %2) : (i32, i32) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.add'(0x7fde2ac059b0) {
  %5 = "llvm.add"(%3, %1) : (i32, i32) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac05a80) {
  %6 = "llvm.getelementptr"(<<UNKNOWN SSA VALUE>>) {structIndices = dense<[0, 1]> : tensor<2xi32>} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ac05b80) {
  %7 = "llvm.load"(%6) : (!llvm.ptr<i32>) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.icmp'(0x7fde2ac05c00) {
  %8 = "llvm.icmp"(%4, %7) {predicate = 2 : i64} : (i32, i32) -> i1

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.cond_br'(0x7fde2ac05df0) {
  "llvm.cond_br"(%8)[^bb1, ^bb2] {operand_segment_sizes = dense<[1, 0, 0]> : vector<3xi32>} : (i1) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.br'(0x7fde2ac06ae0) {
  "llvm.br"(<<UNKNOWN SSA VALUE>>)[^bb3] : (i32) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.br'(0x7fde2ac060a0) {
  "llvm.br"()[^bb4] : () -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ac06170) {
  %24 = "llvm.load"(%6) : (!llvm.ptr<i32>) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.icmp'(0x7fde2ac06ee0) {
  %25 = "llvm.icmp"(%5, %24) {predicate = 2 : i64} : (i32, i32) -> i1

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.cond_br'(0x7fde2ac070d0) {
  "llvm.cond_br"(%25)[^bb5, ^bb6] {operand_segment_sizes = dense<[1, 0, 0]> : vector<3xi32>} : (i1) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.br'(0x7fde2ac07d30) {
  "llvm.br"(%23)[^bb7] : (i32) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.br'(0x7fde2ac07e50) {
  "llvm.br"()[^bb8] : () -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.icmp'(0x7fde2ac07ed0) {
  %41 = "llvm.icmp"(%40, <<UNKNOWN SSA VALUE>>) {predicate = 1 : i64} : (i32, i32) -> i1

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.cond_br'(0x7fde2ac080d0) {
  "llvm.cond_br"(%41)[^bb9, ^bb10] {operand_segment_sizes = dense<[1, 0, 0]> : vector<3xi32>} : (i1) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.return'(0x7fde2ab06f60) {
  "llvm.return"() : () -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac08050) {
  %42 = "llvm.getelementptr"(<<UNKNOWN SSA VALUE>>) {structIndices = dense<0> : tensor<2xi32>} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ac08250) {
  %43 = "llvm.load"(%42) : (!llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.sext'(0x7fde2ac082d0) {
  %44 = "llvm.sext"(%40) : (i32) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac083c0) {
  %45 = "llvm.getelementptr"(%43, %44) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab05e30) {
  %46 = "llvm.load"(%45) : (!llvm.ptr<ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.sext'(0x7fde2ab05f40) {
  %47 = "llvm.sext"(<<UNKNOWN SSA VALUE>>) : (i32) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ab06070) {
  %48 = "llvm.getelementptr"(%43, %47) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab06160) {
  %49 = "llvm.load"(%48) : (!llvm.ptr<ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ab061e0) {
  %50 = "llvm.getelementptr"(<<UNKNOWN SSA VALUE>>) {structIndices = dense<[0, 3]> : tensor<2xi32>} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab062b0) {
  %51 = "llvm.load"(%50) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ab06390) {
  %52 = "llvm.getelementptr"(%46) {structIndices = dense<[0, 1]> : tensor<2xi32>} : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab06440) {
  %53 = "llvm.load"(%52) : (!llvm.ptr<i32>) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.sext'(0x7fde2ab064c0) {
  %54 = "llvm.sext"(%53) : (i32) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.extractvalue'(0x7fde2ab06590) {
  %55 = "llvm.extractvalue"(%51) {position = [1]} : (!llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ab06640) {
  %56 = "llvm.getelementptr"(%55, %54) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.store'(0x7fde2ab06750) {
  "llvm.store"(<<UNKNOWN SSA VALUE>>, %56) : (i32, !llvm.ptr<i32>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab067f0) {
  %57 = "llvm.load"(%50) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ab068d0) {
  %58 = "llvm.getelementptr"(%49) {structIndices = dense<[0, 1]> : tensor<2xi32>} : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab06980) {
  %59 = "llvm.load"(%58) : (!llvm.ptr<i32>) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.sext'(0x7fde2ab06a00) {
  %60 = "llvm.sext"(%59) : (i32) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.extractvalue'(0x7fde2ab06ad0) {
  %61 = "llvm.extractvalue"(%57) {position = [1]} : (!llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ab06b80) {
  %62 = "llvm.getelementptr"(%61, %60) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.store'(0x7fde2ab06c40) {
  "llvm.store"(%40, %62) : (i32, !llvm.ptr<i32>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab06d80) {
  %63 = "llvm.load"(%42) : (!llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ab06e00) {
  %64 = "llvm.getelementptr"(%63, %44) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ab06ed0) {
  %65 = "llvm.getelementptr"(%63, %47) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.call'(0x7fde2ab06fb0) {
  "llvm.call"(%64, %65) {callee = @swap_heap_node} : (!llvm.ptr<ptr<struct<(f64, i32)>>>, !llvm.ptr<ptr<struct<(f64, i32)>>>) -> ()

  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.call -> ()' {
  } -> FAILURE : pattern failed to match

  * Pattern : 'llvm.call -> ()' {
    ** Insert  : 'rmem.pack'(0x7fde2ac05eb0)
    ** Insert  : 'rmem.pack'(0x7fde2ac08190)
    ** Insert  : 'llvm.call'(0x7fde2ac07180)
    ** Replace : 'llvm.call'(0x7fde2ab06fb0)

    //===-------------------------------------------===//
    Legalizing operation : 'rmem.pack'(0x7fde2ac05eb0) {
      %68 = "rmem.pack"(%65) : (!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//

    //===-------------------------------------------===//
    Legalizing operation : 'rmem.pack'(0x7fde2ac08190) {
      %69 = "rmem.pack"(%67) : (!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//

    //===-------------------------------------------===//
    Legalizing operation : 'llvm.call'(0x7fde2ac07180) {
      "llvm.call"(%68, %69) {callee = @swap_heap_node} : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>, !llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>) -> ()

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.call'(0x7fde2ab07110) {
  "llvm.call"(<<UNKNOWN SSA VALUE>>, %40) {callee = @heapify} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, i32) -> ()

  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.call -> ()' {
  } -> FAILURE : pattern failed to match

  * Pattern : 'llvm.call -> ()' {
    ** Insert  : 'rmem.pack'(0x7fde29f0bae0)
    ** Insert  : 'llvm.call'(0x7fde29f0bb50)
    ** Replace : 'llvm.call'(0x7fde2ab07110)

    //===-------------------------------------------===//
    Legalizing operation : 'rmem.pack'(0x7fde29f0bae0) {
      %70 = "rmem.pack"(%0) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//

    //===-------------------------------------------===//
    Legalizing operation : 'llvm.call'(0x7fde29f0bb50) {
      "llvm.call"(%70, %40) {callee = @heapify} : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>, i32) -> ()

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.br'(0x7fde2ab07040) {
  "llvm.br"()[^bb10] : () -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac07050) {
  %26 = "llvm.getelementptr"(<<UNKNOWN SSA VALUE>>) {structIndices = dense<0> : tensor<2xi32>} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ac07250) {
  %27 = "llvm.load"(%26) : (!llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.sext'(0x7fde2ac072d0) {
  %28 = "llvm.sext"(%5) : (i32) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac073c0) {
  %29 = "llvm.getelementptr"(%27, %28) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ac07490) {
  %30 = "llvm.load"(%29) : (!llvm.ptr<ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac07560) {
  %31 = "llvm.getelementptr"(%30) {structIndices = dense<0> : tensor<2xi32>} : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ac07600) {
  %32 = "llvm.load"(%31) : (!llvm.ptr<f64>) -> f64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.sext'(0x7fde2ac07680) {
  %33 = "llvm.sext"(%23) : (i32) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac077a0) {
  %34 = "llvm.getelementptr"(%27, %33) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ac07870) {
  %35 = "llvm.load"(%34) : (!llvm.ptr<ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac07940) {
  %36 = "llvm.getelementptr"(%35) {structIndices = dense<0> : tensor<2xi32>} : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ac079e0) {
  %37 = "llvm.load"(%36) : (!llvm.ptr<f64>) -> f64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.fcmp'(0x7fde2ac07a60) {
  %38 = "llvm.fcmp"(%32, %37) {predicate = 4 : i64} : (f64, f64) -> i1

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.select'(0x7fde2ac07b30) {
  %39 = "llvm.select"(%38, %5, %23) : (i1, i32, i32) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.br'(0x7fde2ac07ca0) {
  "llvm.br"(%39)[^bb7] : (i32) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac05d70) {
  %9 = "llvm.getelementptr"(<<UNKNOWN SSA VALUE>>) {structIndices = dense<0> : tensor<2xi32>} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ac05f60) {
  %10 = "llvm.load"(%9) : (!llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.sext'(0x7fde2ac05fe0) {
  %11 = "llvm.sext"(%4) : (i32) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac048e0) {
  %12 = "llvm.getelementptr"(%10, %11) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ac06260) {
  %13 = "llvm.load"(%12) : (!llvm.ptr<ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac06310) {
  %14 = "llvm.getelementptr"(%13) {structIndices = dense<0> : tensor<2xi32>} : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ac063b0) {
  %15 = "llvm.load"(%14) : (!llvm.ptr<f64>) -> f64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.sext'(0x7fde2ac06430) {
  %16 = "llvm.sext"(<<UNKNOWN SSA VALUE>>) : (i32) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac06550) {
  %17 = "llvm.getelementptr"(%10, %16) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ac06640) {
  %18 = "llvm.load"(%17) : (!llvm.ptr<ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ac066f0) {
  %19 = "llvm.getelementptr"(%18) {structIndices = dense<0> : tensor<2xi32>} : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ac06790) {
  %20 = "llvm.load"(%19) : (!llvm.ptr<f64>) -> f64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.fcmp'(0x7fde2ac06810) {
  %21 = "llvm.fcmp"(%15, %20) {predicate = 4 : i64} : (f64, f64) -> i1

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.select'(0x7fde2ac068e0) {
  %22 = "llvm.select"(%21, %4, <<UNKNOWN SSA VALUE>>) : (i1, i32, i32) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.br'(0x7fde2ac06a50) {
  "llvm.br"(%22)[^bb3] : (i32) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.func'(0x7fde2ab070b0) {
  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.func -> ()' {
    ** Insert  : 'llvm.func'(0x7fde2a978080)
    ** Erase   : 'llvm.func'(0x7fde2ab070b0)

    //===-------------------------------------------===//
    Legalizing operation : 'llvm.func'(0x7fde2a978080) {
    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2ab06540) {
  %1 = "llvm.mlir.constant"() {value = -1 : i32} : () -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.constant'(0x7fde2ab06870) {
  %2 = "llvm.mlir.constant"() {value = 0 : i32} : () -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ab066e0) {
  %3 = "llvm.getelementptr"(<<UNKNOWN SSA VALUE>>) {structIndices = dense<[0, 1]> : tensor<2xi32>} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab05eb0) {
  %4 = "llvm.load"(%3) : (!llvm.ptr<i32>) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.icmp'(0x7fde2ab06ce0) {
  %5 = "llvm.icmp"(%4, %2) {predicate = 0 : i64} : (i32, i32) -> i1

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.cond_br'(0x7fde2ab07540) {
  "llvm.cond_br"(%5)[^bb1, ^bb2] {operand_segment_sizes = dense<[1, 0, 0]> : vector<3xi32>} : (i1) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ab076a0) {
  %7 = "llvm.getelementptr"(<<UNKNOWN SSA VALUE>>) {structIndices = dense<0> : tensor<2xi32>} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab07870) {
  %8 = "llvm.load"(%7) : (!llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab07920) {
  %9 = "llvm.load"(%8) : (!llvm.ptr<ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab079c0) {
  %10 = "llvm.load"(%3) : (!llvm.ptr<i32>) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.add'(0x7fde2ab07a40) {
  %11 = "llvm.add"(%10, %1) : (i32, i32) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.sext'(0x7fde2ab07b10) {
  %12 = "llvm.sext"(%11) : (i32) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ab07430) {
  %13 = "llvm.getelementptr"(%8, %12) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab07df0) {
  %14 = "llvm.load"(%13) : (!llvm.ptr<ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.store'(0x7fde2ab07e90) {
  "llvm.store"(%14, %8) : (!llvm.ptr<struct<(f64, i32)>>, !llvm.ptr<ptr<struct<(f64, i32)>>>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ab07f30) {
  %15 = "llvm.getelementptr"(<<UNKNOWN SSA VALUE>>) {structIndices = dense<[0, 3]> : tensor<2xi32>} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab08000) {
  %16 = "llvm.load"(%15) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ab080c0) {
  %17 = "llvm.getelementptr"(%9) {structIndices = dense<[0, 1]> : tensor<2xi32>} : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab08160) {
  %18 = "llvm.load"(%17) : (!llvm.ptr<i32>) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.sext'(0x7fde2ab081e0) {
  %19 = "llvm.sext"(%18) : (i32) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab082e0) {
  %20 = "llvm.load"(%3) : (!llvm.ptr<i32>) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.add'(0x7fde2ab08360) {
  %21 = "llvm.add"(%20, %1) : (i32, i32) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.extractvalue'(0x7fde2ab08450) {
  %22 = "llvm.extractvalue"(%16) {position = [1]} : (!llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ab08500) {
  %23 = "llvm.getelementptr"(%22, %19) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.store'(0x7fde2ab08610) {
  "llvm.store"(%21, %23) : (i32, !llvm.ptr<i32>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab086b0) {
  %24 = "llvm.load"(%15) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ab07bd0) {
  %25 = "llvm.getelementptr"(%14) {structIndices = dense<[0, 1]> : tensor<2xi32>} : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab07c50) {
  %26 = "llvm.load"(%25) : (!llvm.ptr<i32>) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.sext'(0x7fde2ab08a80) {
  %27 = "llvm.sext"(%26) : (i32) -> i64

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.extractvalue'(0x7fde2ab08b20) {
  %28 = "llvm.extractvalue"(%24) {position = [1]} : (!llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.getelementptr'(0x7fde2ab08bf0) {
  %29 = "llvm.getelementptr"(%28, %27) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.store'(0x7fde2ab08c80) {
  "llvm.store"(%2, %29) : (i32, !llvm.ptr<i32>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab08d20) {
  %30 = "llvm.load"(%3) : (!llvm.ptr<i32>) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.add'(0x7fde2ab08df0) {
  %31 = "llvm.add"(%30, %1) : (i32, i32) -> i32

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.store'(0x7fde2ab08ee0) {
  "llvm.store"(%31, %3) : (i32, !llvm.ptr<i32>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.call'(0x7fde2ab09040) {
  "llvm.call"(<<UNKNOWN SSA VALUE>>, %2) {callee = @heapify} : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, i32) -> ()

  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.call -> ()' {
  } -> FAILURE : pattern failed to match

  * Pattern : 'llvm.call -> ()' {
    ** Insert  : 'rmem.pack'(0x7fde2ac05010)
    ** Insert  : 'llvm.call'(0x7fde2ac06d90)
    ** Replace : 'llvm.call'(0x7fde2ab09040)

    //===-------------------------------------------===//
    Legalizing operation : 'rmem.pack'(0x7fde2ac05010) {
      %32 = "rmem.pack"(%0) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//

    //===-------------------------------------------===//
    Legalizing operation : 'llvm.call'(0x7fde2ac06d90) {
      "llvm.call"(%32, %2) {callee = @heapify} : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>, i32) -> ()

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.br'(0x7fde2ab08f70) {
  "llvm.br"(%9)[^bb3] : (!llvm.ptr<struct<(f64, i32)>>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.br'(0x7fde2ab09170) {
  "llvm.br"()[^bb4] : () -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.return'(0x7fde2ab09200) {
  "llvm.return"(%33) : (!llvm.ptr<struct<(f64, i32)>>) -> ()

  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.return -> ()' {
    ** Insert  : 'rmem.pack'(0x7fde2ac06b90)
    ** Insert  : 'llvm.return'(0x7fde2ac061e0)
    ** Replace : 'llvm.return'(0x7fde2ab09200)

    //===-------------------------------------------===//
    Legalizing operation : 'rmem.pack'(0x7fde2ac06b90) {
      %35 = "rmem.pack"(%34) : (!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//

    //===-------------------------------------------===//
    Legalizing operation : 'llvm.return'(0x7fde2ac061e0) {
      "llvm.return"(%35) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>) -> ()

    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.mlir.null'(0x7fde2ab07600) {
  %6 = "llvm.mlir.null"() : () -> !llvm.ptr<struct<(f64, i32)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.br'(0x7fde2ab07710) {
  "llvm.br"(%6)[^bb3] : (!llvm.ptr<struct<(f64, i32)>>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.func'(0x7fde2ab08980) {
  * Fold {
  } -> FAILURE : unable to fold

  * Pattern : 'llvm.func -> ()' {
    ** Insert  : 'llvm.func'(0x7fde2a9782c0)
    ** Erase   : 'llvm.func'(0x7fde2ab08980)

    //===-------------------------------------------===//
    Legalizing operation : 'llvm.func'(0x7fde2a9782c0) {
    } -> SUCCESS : operation marked legal by the target
    //===-------------------------------------------===//
  } -> SUCCESS : pattern applied successfully
} -> SUCCESS
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab085a0) {
  %2 = "llvm.load"(<<UNKNOWN SSA VALUE>>) : (!llvm.ptr<ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.load'(0x7fde2ab08260) {
  %3 = "llvm.load"(<<UNKNOWN SSA VALUE>>) : (!llvm.ptr<ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.store'(0x7fde2ab07cc0) {
  "llvm.store"(%3, <<UNKNOWN SSA VALUE>>) : (!llvm.ptr<struct<(f64, i32)>>, !llvm.ptr<ptr<struct<(f64, i32)>>>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.store'(0x7fde2ab07d50) {
  "llvm.store"(%2, <<UNKNOWN SSA VALUE>>) : (!llvm.ptr<struct<(f64, i32)>>, !llvm.ptr<ptr<struct<(f64, i32)>>>) -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//

//===-------------------------------------------===//
Legalizing operation : 'llvm.return'(0x7fde2ab07fa0) {
  "llvm.return"() : () -> ()

} -> SUCCESS : operation marked legal by the target
//===-------------------------------------------===//
** Insert  : 'rmem.unpack'(0x7fde2a9788f0)
** Insert  : 'rmem.unpack'(0x7fde29f0bbf0)
** Insert  : 'builtin.unrealized_conversion_cast'(0x7fde2a819050)
** Insert  : 'rmem.unpack'(0x7fde29f0bd90)
** Insert  : 'builtin.unrealized_conversion_cast'(0x7fde2ab0aaa0)
** Insert  : 'builtin.unrealized_conversion_cast'(0x7fde29f0c070)
** Insert  : 'rmem.unpack'(0x7fde29f0bcf0)
** Insert  : 'builtin.unrealized_conversion_cast'(0x7fde29f0c120)
** Insert  : 'builtin.unrealized_conversion_cast'(0x7fde2ab0ac00)
** Insert  : 'builtin.unrealized_conversion_cast'(0x7fde2ac08cd0)
** Insert  : 'rmem.materialize'(0x7fde2ac08d50)
** Insert  : 'rmem.materialize'(0x7fde2a978ea0)
** Insert  : 'rmem.materialize'(0x7fde2a81d2c0)
** Insert  : 'rmem.materialize'(0x7fde29f0bf10)
** Insert  : 'rmem.materialize'(0x7fde2a978a30)
** Insert  : 'rmem.unpack'(0x7fde2ac08bf0)
** Insert  : 'rmem.materialize'(0x7fde2ac08dd0)
** Insert  : 'rmem.unpack'(0x7fde2ab0ad70)
** Insert  : 'rmem.materialize'(0x7fde2ab0adf0)
** Insert  : 'rmem.materialize'(0x7fde2a978f50)
** Insert  : 'rmem.materialize'(0x7fde2a817ee0)
** Insert  : 'rmem.materialize'(0x7fde2ac08e50)
** Insert  : 'rmem.materialize'(0x7fde2aa0b1d0)
-- Arg mat -- 
-vals:
<block argument> of type '!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>' at index: 1
-type: !llvm.ptr<ptr<struct<(f64, i32)>>>
------
-- Arg mat -- 
-vals:
<block argument> of type '!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>' at index: 0
-type: !llvm.ptr<ptr<struct<(f64, i32)>>>
------
-- Arg mat -- 
-vals:
<block argument> of type '!llvm.ptr<struct<(f64, i32)>>' at index: 0
-type: !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
------
-- Target mat -- 
-vals:
<block argument> of type '!llvm.ptr<struct<(f64, i32)>>' at index: 0
-type: !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
------
-- Arg mat -- 
-vals:
<block argument> of type '!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>' at index: 0
-type: !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
------
-- Target mat -- 
-vals:
%66 = "llvm.getelementptr"(%63, %47) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
-type: !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>
------
-- Target mat -- 
-vals:
%64 = "llvm.getelementptr"(%63, %44) {structIndices = dense<-2147483648> : tensor<1xi32>} : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
-type: !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>
------
-- Arg mat -- 
-vals:
<block argument> of type '!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>' at index: 0
-type: !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
------
-- Target mat -- 
-vals:
%3 = "llvm.bitcast"(%2) : (!llvm.ptr<i8>) -> !llvm.ptr<struct<(f64, i32)>>
-type: !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
------
-- Target mat -- 
-vals:
%9 = "llvm.bitcast"(%8) : (!llvm.ptr<i8>) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
-type: !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>
------
-- Target mat -- 
-vals:
%9 = "llvm.call"(%8) {callee = @init_min_heap} : (i32) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>
-type: !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>
------
-- Src mat -- 
-vals:
%0 = "rmem.unpack"(%arg0) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>) -> !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>
-type: !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
------
-- Src mat -- 
-vals:
%0 = "rmem.unpack"(%arg0) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>) -> !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>
-type: !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
------
-- Src mat -- 
-vals:
%0 = "rmem.unpack"(%arg0) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>) -> !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>
-type: !llvm.ptr<ptr<struct<(f64, i32)>>>
------
-- Src mat -- 
-vals:
%2 = "rmem.unpack"(%arg1) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>) -> !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>
-type: !llvm.ptr<ptr<struct<(f64, i32)>>>
------
-- Src mat -- 
-vals:
%10 = "builtin.unrealized_conversion_cast"(%9) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>) -> !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>
-type: !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
------
-- Src mat -- 
-vals:
%40 = "llvm.call"(%39) {callee = @extract_min} : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>
-type: !llvm.ptr<struct<(f64, i32)>>
------
-- Src mat -- 
-vals:
%20 = "llvm.call"(%16, %7) {callee = @new_heap_node} : (i32, f64) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>
-type: !llvm.ptr<struct<(f64, i32)>>
------
-- Src mat -- 
-vals:
%7 = "rmem.malloc_ptr"(%6) : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
-type: !llvm.ptr<i8>
------
-- Src mat -- 
-vals:
%20 = "rmem.malloc_ptr"(%19) : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
-type: !llvm.ptr<i8>
------
-- Src mat -- 
-vals:
%34 = "rmem.malloc_ptr"(%33) : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
-type: !llvm.ptr<i8>
------
-- Src mat -- 
-vals:
%1 = "rmem.malloc_ptr"(%0) : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
-type: !llvm.ptr<i8>
------
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%d-%f\0A\00") {addr_space = 0 : i32}
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(10 : index) : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(5 : index) : i64
    %5 = llvm.mlir.constant(-1 : index) : i64
    %6 = llvm.mlir.constant(4 : index) : i64
    %7 = llvm.mlir.constant(9.990000e+01 : f64) : f64
    %8 = llvm.mlir.constant(10 : i32) : i32
    %9 = llvm.call @init_min_heap(%8) : (i32) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>
    %10 = builtin.unrealized_conversion_cast %9 : !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)> to !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>
    %11 = rmem.materialize %10 : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    llvm.br ^bb1(%1 : i64)
  ^bb1(%12: i64):  // 2 preds: ^bb0, ^bb2
    %13 = llvm.icmp "slt" %12, %0 : i64
    llvm.cond_br %13, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %14 = llvm.trunc %12 : i64 to i32
    %15 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %16 = llvm.load %15 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %17 = llvm.getelementptr %16[%12] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %18 = llvm.call @new_heap_node(%14, %7) : (i32, f64) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>
    %19 = rmem.unpack(%18) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>) -> !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
    %20 = rmem.materialize %19 : (!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>
    llvm.store %20, %17 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %21 = llvm.getelementptr %11[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %22 = llvm.load %21 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %23 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.getelementptr %23[%12] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %14, %24 : !llvm.ptr<i32>
    %25 = llvm.add %12, %2  : i64
    llvm.br ^bb1(%25 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%1 : i64)
  ^bb4(%26: i64):  // 2 preds: ^bb3, ^bb5
    %27 = llvm.icmp "slt" %26, %4 : i64
    llvm.cond_br %27, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %28 = llvm.mul %26, %5  : i64
    %29 = llvm.add %28, %6  : i64
    %30 = llvm.trunc %29 : i64 to i32
    %31 = rmem.pack(%10) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>
    llvm.call @heapify(%31, %30) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>, i32) -> ()
    %32 = llvm.add %26, %2  : i64
    llvm.br ^bb4(%32 : i64)
  ^bb6:  // pred: ^bb4
    %33 = llvm.getelementptr %11[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>
    %34 = llvm.mlir.addressof @str0 : !llvm.ptr<array<7 x i8>>
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<array<7 x i8>>) -> !llvm.ptr<i8>
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb6, ^bb8
    %36 = llvm.load %33 : !llvm.ptr<i32>
    %37 = llvm.icmp "ne" %36, %3 : i32
    llvm.cond_br %37, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %38 = rmem.pack(%10) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>
    %39 = llvm.call @extract_min(%38) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>
    %40 = rmem.unpack(%39) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>) -> !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
    %41 = rmem.materialize %40 : (!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>) -> !llvm.ptr<struct<(f64, i32)>>
    %42 = llvm.getelementptr %41[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %43 = llvm.load %42 : !llvm.ptr<i32>
    %44 = llvm.getelementptr %41[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %45 = llvm.load %44 : !llvm.ptr<f64>
    %46 = llvm.call @printf(%35, %43, %45) : (!llvm.ptr<i8>, i32, f64) -> i32
    llvm.br ^bb7
  ^bb9:  // pred: ^bb7
    llvm.return %3 : i32
  }
  llvm.func @init_min_heap(%arg0: i32) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)> {
    %0 = llvm.mlir.constant(0 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(4 : i64) : i64
    %4 = llvm.mlir.constant(8 : i64) : i64
    %5 = llvm.mlir.constant(0 : i32) : i32
    %6 = llvm.mlir.constant(56 : i64) : i64
    %7 = rmem.malloc_ptr %6 : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
    %8 = rmem.materialize %7 : (!rmem.rmref<!llvm.ptr<i8>>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %10 = builtin.unrealized_conversion_cast %9 : !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>> to !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>
    %11 = llvm.getelementptr %9[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %12 = llvm.sext %arg0 : i32 to i64
    %13 = llvm.mul %12, %3  : i64
    %14 = llvm.udiv %13, %2  : i64
    %15 = llvm.mlir.null : !llvm.ptr<i32>
    %16 = llvm.getelementptr %15[%14] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %17 = llvm.ptrtoint %16 : !llvm.ptr<i32> to i64
    %18 = rmem.malloc_ptr %17 : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
    %19 = rmem.materialize %18 : (!rmem.rmref<!llvm.ptr<i8>>) -> !llvm.ptr<i8>
    %20 = llvm.bitcast %19 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %21 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.insertvalue %20, %21[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %23 = llvm.insertvalue %20, %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.insertvalue %0, %23[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.insertvalue %14, %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %26 = llvm.insertvalue %1, %25[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    llvm.store %26, %11 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %27 = llvm.getelementptr %9[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>
    llvm.store %5, %27 : !llvm.ptr<i32>
    %28 = llvm.getelementptr %9[0, 2] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>
    llvm.store %arg0, %28 : !llvm.ptr<i32>
    %29 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %30 = llvm.mul %12, %4  : i64
    %31 = rmem.malloc_ptr %30 : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
    %32 = rmem.materialize %31 : (!rmem.rmref<!llvm.ptr<i8>>) -> !llvm.ptr<i8>
    %33 = llvm.bitcast %32 : !llvm.ptr<i8> to !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %33, %29 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %34 = rmem.pack(%10) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>
    llvm.return %34 : !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>
  }
  llvm.func @new_heap_node(%arg0: i32, %arg1: f64) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)> {
    %0 = llvm.mlir.constant(16 : i64) : i64
    %1 = rmem.malloc_ptr %0 : (i64) -> !rmem.rmref<!llvm.ptr<i8>>
    %2 = rmem.materialize %1 : (!rmem.rmref<!llvm.ptr<i8>>) -> !llvm.ptr<i8>
    %3 = llvm.bitcast %2 : !llvm.ptr<i8> to !llvm.ptr<struct<(f64, i32)>>
    %4 = builtin.unrealized_conversion_cast %3 : !llvm.ptr<struct<(f64, i32)>> to !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
    %5 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    llvm.store %arg0, %5 : !llvm.ptr<i32>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    llvm.store %arg1, %6 : !llvm.ptr<f64>
    %7 = rmem.pack(%4) : (!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>
    llvm.return %7 : !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>
  }
  llvm.func @heapify(%arg0: !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>, %arg1: i32) {
    %0 = rmem.unpack(%arg0) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>) -> !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>
    %1 = rmem.materialize %0 : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %2 = llvm.mlir.constant(2 : i32) : i32
    %3 = llvm.mlir.constant(1 : i32) : i32
    %4 = llvm.shl %arg1, %3  : i32
    %5 = llvm.add %4, %3  : i32
    %6 = llvm.add %4, %2  : i32
    %7 = llvm.getelementptr %1[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>
    %8 = llvm.load %7 : !llvm.ptr<i32>
    %9 = llvm.icmp "slt" %5, %8 : i32
    llvm.cond_br %9, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %10 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %12 = llvm.sext %5 : i32 to i64
    %13 = llvm.getelementptr %11[%12] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %16 = llvm.load %15 : !llvm.ptr<f64>
    %17 = llvm.sext %arg1 : i32 to i64
    %18 = llvm.getelementptr %11[%17] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %19 = llvm.load %18 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %21 = llvm.load %20 : !llvm.ptr<f64>
    %22 = llvm.fcmp "olt" %16, %21 : f64
    %23 = llvm.select %22, %5, %arg1 : i1, i32
    llvm.br ^bb3(%23 : i32)
  ^bb2:  // pred: ^bb0
    llvm.br ^bb3(%arg1 : i32)
  ^bb3(%24: i32):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    %25 = llvm.load %7 : !llvm.ptr<i32>
    %26 = llvm.icmp "slt" %6, %25 : i32
    llvm.cond_br %26, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %27 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %28 = llvm.load %27 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %29 = llvm.sext %6 : i32 to i64
    %30 = llvm.getelementptr %28[%29] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %32 = llvm.getelementptr %31[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %33 = llvm.load %32 : !llvm.ptr<f64>
    %34 = llvm.sext %24 : i32 to i64
    %35 = llvm.getelementptr %28[%34] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %36 = llvm.load %35 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<f64>
    %38 = llvm.load %37 : !llvm.ptr<f64>
    %39 = llvm.fcmp "olt" %33, %38 : f64
    %40 = llvm.select %39, %6, %24 : i1, i32
    llvm.br ^bb7(%40 : i32)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%24 : i32)
  ^bb7(%41: i32):  // 2 preds: ^bb5, ^bb6
    llvm.br ^bb8
  ^bb8:  // pred: ^bb7
    %42 = llvm.icmp "ne" %41, %arg1 : i32
    llvm.cond_br %42, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    %43 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %44 = llvm.load %43 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %45 = llvm.sext %41 : i32 to i64
    %46 = llvm.getelementptr %44[%45] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %47 = llvm.load %46 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %48 = llvm.sext %arg1 : i32 to i64
    %49 = llvm.getelementptr %44[%48] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %50 = llvm.load %49 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %51 = llvm.getelementptr %1[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %52 = llvm.load %51 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %53 = llvm.getelementptr %47[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %54 = llvm.load %53 : !llvm.ptr<i32>
    %55 = llvm.sext %54 : i32 to i64
    %56 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %57 = llvm.getelementptr %56[%55] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %arg1, %57 : !llvm.ptr<i32>
    %58 = llvm.load %51 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %59 = llvm.getelementptr %50[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %60 = llvm.load %59 : !llvm.ptr<i32>
    %61 = llvm.sext %60 : i32 to i64
    %62 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %63 = llvm.getelementptr %62[%61] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %41, %63 : !llvm.ptr<i32>
    %64 = llvm.load %43 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %65 = llvm.getelementptr %64[%45] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %66 = builtin.unrealized_conversion_cast %65 : !llvm.ptr<ptr<struct<(f64, i32)>>> to !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>
    %67 = llvm.getelementptr %64[%48] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %68 = builtin.unrealized_conversion_cast %67 : !llvm.ptr<ptr<struct<(f64, i32)>>> to !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>
    %69 = rmem.pack(%66) : (!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>
    %70 = rmem.pack(%68) : (!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>
    llvm.call @swap_heap_node(%69, %70) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>, !llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>) -> ()
    %71 = rmem.pack(%0) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>
    llvm.call @heapify(%71, %41) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>, i32) -> ()
    llvm.br ^bb10
  ^bb10:  // 2 preds: ^bb8, ^bb9
    llvm.return
  }
  llvm.func @extract_min(%arg0: !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)> {
    %0 = rmem.unpack(%arg0) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>) -> !rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>
    %1 = rmem.materialize %0 : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %2 = llvm.mlir.constant(-1 : i32) : i32
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.getelementptr %1[0, 1] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<i32>
    %5 = llvm.load %4 : !llvm.ptr<i32>
    %6 = llvm.icmp "eq" %5, %3 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.null : !llvm.ptr<struct<(f64, i32)>>
    llvm.br ^bb3(%7 : !llvm.ptr<struct<(f64, i32)>>)
  ^bb2:  // pred: ^bb0
    %8 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<ptr<struct<(f64, i32)>>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %11 = llvm.load %4 : !llvm.ptr<i32>
    %12 = llvm.add %11, %2  : i32
    %13 = llvm.sext %12 : i32 to i64
    %14 = llvm.getelementptr %9[%13] : (!llvm.ptr<ptr<struct<(f64, i32)>>>, i64) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %15 = llvm.load %14 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %15, %9 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %16 = llvm.getelementptr %1[0, 3] : (!llvm.ptr<struct<(ptr<ptr<struct<(f64, i32)>>>, i32, i32, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %17 = llvm.load %16 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %18 = llvm.getelementptr %10[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %19 = llvm.load %18 : !llvm.ptr<i32>
    %20 = llvm.sext %19 : i32 to i64
    %21 = llvm.load %4 : !llvm.ptr<i32>
    %22 = llvm.add %21, %2  : i32
    %23 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.getelementptr %23[%20] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %22, %24 : !llvm.ptr<i32>
    %25 = llvm.load %16 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %26 = llvm.getelementptr %15[0, 1] : (!llvm.ptr<struct<(f64, i32)>>) -> !llvm.ptr<i32>
    %27 = llvm.load %26 : !llvm.ptr<i32>
    %28 = llvm.sext %27 : i32 to i64
    %29 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %30 = llvm.getelementptr %29[%28] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %3, %30 : !llvm.ptr<i32>
    %31 = llvm.load %4 : !llvm.ptr<i32>
    %32 = llvm.add %31, %2  : i32
    llvm.store %32, %4 : !llvm.ptr<i32>
    %33 = rmem.pack(%0) : (!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>
    llvm.call @heapify(%33, %3) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>, i32, i32, !llvm.struct<(!rmem.rmref<!llvm.ptr<i32>>, !rmem.rmref<!llvm.ptr<i32>>, i64, array<1 x i64>, array<1 x i64>)>)>>>)>, i32) -> ()
    llvm.br ^bb3(%10 : !llvm.ptr<struct<(f64, i32)>>)
  ^bb3(%34: !llvm.ptr<struct<(f64, i32)>>):  // 2 preds: ^bb1, ^bb2
    %35 = builtin.unrealized_conversion_cast %34 : !llvm.ptr<struct<(f64, i32)>> to !rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    %36 = rmem.pack(%35) : (!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>) -> !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>
    llvm.return %36 : !llvm.struct<(!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>)>
  }
  llvm.func @swap_heap_node(%arg0: !llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>, %arg1: !llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>) {
    %0 = rmem.unpack(%arg0) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>) -> !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>
    %1 = rmem.materialize %0 : (!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %2 = rmem.unpack(%arg1) : (!llvm.struct<(!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>)>) -> !rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>
    %3 = rmem.materialize %2 : (!rmem.rmref<!llvm.ptr<!rmem.rmref<!llvm.ptr<struct<(f64, i32)>>>>>) -> !llvm.ptr<ptr<struct<(f64, i32)>>>
    %4 = llvm.load %1 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    %5 = llvm.load %3 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %5, %1 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.store %4, %3 : !llvm.ptr<ptr<struct<(f64, i32)>>>
    llvm.return
  }
}


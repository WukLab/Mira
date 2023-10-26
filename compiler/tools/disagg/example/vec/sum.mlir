module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str1("vector::_M_realloc_insert\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%d\0A\00") {addr_space = 0 : i32}
  func.func @_Z3sumRSt6vectorIiSaIiEE(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %0:2 = scf.while (%arg1 = %c0_i32, %arg2 = %c0_i32) : (i32, i32) -> (i32, i32) {
      %1 = arith.extsi %arg1 : i32 to i64
      %2 = func.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
      %3 = arith.cmpi slt, %1, %2 : i64
      scf.condition(%3) %arg2, %arg1 : i32, i32
    } do {
    ^bb0(%arg1: i32, %arg2: i32):
      %1 = arith.extsi %arg2 : i32 to i64
      %2 = func.call @_ZNSt6vectorIiSaIiEEixEm(%arg0, %1) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
      %3 = llvm.load %2 : !llvm.ptr<i32>
      %4 = arith.addi %arg1, %3 : i32
      %5 = arith.addi %arg2, %c1_i32 : i32
      scf.yield %5, %4 : i32, i32
    }
    return %0#0 : i32
  }
  func.func @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i32>>
    %7 = llvm.ptrtoint %6 : !llvm.ptr<i32> to i64
    %8 = llvm.ptrtoint %4 : !llvm.ptr<i32> to i64
    %9 = arith.subi %8, %7 : i64
    %10 = arith.divsi %9, %c4_i64 : i64
    return %10 : i64
  }
  func.func @_ZNSt6vectorIiSaIiEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    return %5 : !llvm.ptr<i32>
  }


  // func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
  //   %c0_i32 = arith.constant 0 : i32
  //   %c1_i32 = arith.constant 1 : i32
  //   %c1_i64 = arith.constant 1 : i64
  //   %0 = llvm.mlir.undef : i32
  //   %1 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
  //   llvm.store %0, %1 : !llvm.ptr<i32>
  //   %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
  //   call @_ZNSt6vectorIiSaIiEEC1Ev(%2) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
  //   llvm.store %c1_i32, %1 : !llvm.ptr<i32>
  //   call @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEEvDpOT_(%2, %1) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
  //   %3 = call @_Z3sumRSt6vectorIiSaIiEE(%2) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i32
  //   %4 = llvm.mlir.addressof @str0 : !llvm.ptr<array<4 x i8>>
  //   %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
  //   %6 = llvm.call @printf(%5, %3) : (!llvm.ptr<i8>, i32) -> i32
  //   return %c0_i32 : i32
  // }
  // func.func @_ZNSt6vectorIiSaIiEEC1Ev(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
  //   call @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> ()
  //   return
  // }
  // func.func @_ZNSt6vectorIiSaIiEE9push_backEOi(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   call @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEEvDpOT_(%arg0, %arg1) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
  //   return
  // }
  // func.func @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
  //   call @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> ()
  //   return
  // }
  // func.func @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEEvDpOT_(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c1_i64 = arith.constant 1 : i64
  //   %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
  //   %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
  //   %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
  //   %5 = llvm.getelementptr %4[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   %6 = llvm.load %5 : !llvm.ptr<ptr<i32>>
  //   %7 = llvm.getelementptr %4[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   %8 = llvm.load %7 : !llvm.ptr<ptr<i32>>
  //   %9 = llvm.icmp "ne" %6, %8 : !llvm.ptr<i32>
  //   scf.if %9 {
  //     %10 = llvm.bitcast %3 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //     %11 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //     %12 = llvm.icmp "ne" %10, %11 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //     %13 = arith.select %12, %10, %11 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //     %14 = llvm.load %5 : !llvm.ptr<ptr<i32>>
  //     func.call @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(%13, %14, %arg1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
  //     %15 = llvm.load %5 : !llvm.ptr<ptr<i32>>
  //     %16 = llvm.getelementptr %15[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
  //     llvm.store %16, %5 : !llvm.ptr<ptr<i32>>
  //   } else {
  //     %10 = func.call @_ZNSt6vectorIiSaIiEE3endEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
  //     llvm.store %10, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //     func.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%1, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
  //     %11 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //     func.call @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%arg0, %11, %arg1) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> ()
  //   }
  //   return
  // }
  // func.func @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
  //   call @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> ()
  //   return
  // }
  // func.func @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
  //   call @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
  //   return
  // }
  // func.func @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c4_i64 = arith.constant 4 : i64
  //   %c0_i8 = arith.constant 0 : i8
  //   %c1_i64 = arith.constant 1 : i64
  //   %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   llvm.store %arg1, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   %2 = llvm.mlir.addressof @str1 : !llvm.ptr<array<26 x i8>>
  //   %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
  //   %4 = call @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%arg0, %c1_i64, %3) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64, !llvm.ptr<i8>) -> i64
  //   %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
  //   %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
  //   %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
  //   %8 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   %9 = llvm.load %8 : !llvm.ptr<ptr<i32>>
  //   %10 = llvm.getelementptr %7[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   %11 = llvm.load %10 : !llvm.ptr<ptr<i32>>
  //   %12 = call @_ZNSt6vectorIiSaIiEE5beginEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
  //   llvm.store %12, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   %13 = call @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%1, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> i64
  //   %14 = call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%5, %4) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
  //   %15 = llvm.bitcast %6 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //   %16 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //   %17 = llvm.icmp "ne" %15, %16 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //   %18 = arith.select %17, %15, %16 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //   %19 = llvm.getelementptr %14[%13] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
  //   call @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(%18, %19, %arg2) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
  //   %20 = call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
  //   %21 = arith.cmpi ne, %20, %c0_i8 : i8
  //   %22 = scf.if %21 -> (!llvm.ptr<i32>) {
  //     %32 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //     %33 = llvm.load %32 : !llvm.ptr<ptr<i32>>
  //     %34 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //     %35 = func.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%9, %33, %14, %34) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
  //     %36 = llvm.getelementptr %35[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
  //     %37 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //     %38 = llvm.load %37 : !llvm.ptr<ptr<i32>>
  //     %39 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //     %40 = func.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%38, %11, %36, %39) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
  //     scf.yield %40 : !llvm.ptr<i32>
  //   } else {
  //     %32 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //     %33 = llvm.load %32 : !llvm.ptr<ptr<i32>>
  //     %34 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //     %35 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%9, %33, %14, %34) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
  //     %36 = llvm.getelementptr %35[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
  //     %37 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //     %38 = llvm.load %37 : !llvm.ptr<ptr<i32>>
  //     %39 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //     %40 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%38, %11, %36, %39) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
  //     scf.yield %40 : !llvm.ptr<i32>
  //   }
  //   %23 = call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
  //   %24 = arith.cmpi eq, %23, %c0_i8 : i8
  //   scf.if %24 {
  //     %32 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //   }
  //   %25 = llvm.getelementptr %7[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   %26 = llvm.load %25 : !llvm.ptr<ptr<i32>>
  //   %27 = llvm.ptrtoint %9 : !llvm.ptr<i32> to i64
  //   %28 = llvm.ptrtoint %26 : !llvm.ptr<i32> to i64
  //   %29 = arith.subi %28, %27 : i64
  //   %30 = arith.divsi %29, %c4_i64 : i64
  //   call @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%5, %9, %30) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, !llvm.ptr<i32>, i64) -> ()
  //   llvm.store %14, %8 : !llvm.ptr<ptr<i32>>
  //   llvm.store %22, %10 : !llvm.ptr<ptr<i32>>
  //   %31 = llvm.getelementptr %14[%4] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
  //   llvm.store %31, %25 : !llvm.ptr<ptr<i32>>
  //   return
  // }
  // func.func @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
  //   %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
  //   return
  // }
  // func.func @_ZNSt6vectorIiSaIiEE3endEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c1_i64 = arith.constant 1 : i64
  //   %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
  //   %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
  //   %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
  //   %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%1, %6) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<ptr<i32>>) -> ()
  //   %7 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   llvm.store %7, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%2, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
  //   %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   return %8 : !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
  // }
  // func.func @_ZNSaIiEC1Ev(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   return
  // }
  // func.func @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.mlir.null : !llvm.ptr<i32>
  //   %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   llvm.store %0, %1 : !llvm.ptr<ptr<i32>>
  //   %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   llvm.store %0, %2 : !llvm.ptr<ptr<i32>>
  //   %3 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   llvm.store %0, %3 : !llvm.ptr<ptr<i32>>
  //   return
  // }
  // func.func @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.load %arg2 : !llvm.ptr<i32>
  //   llvm.store %0, %arg1 : !llvm.ptr<i32>
  //   return
  // }
  // func.func @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %true = arith.constant true
  //   %c1_i64 = arith.constant 1 : i64
  //   %0 = llvm.mlir.undef : i64
  //   %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
  //   llvm.store %0, %1 : !llvm.ptr<i64>
  //   %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
  //   llvm.store %0, %2 : !llvm.ptr<i64>
  //   llvm.store %arg1, %2 : !llvm.ptr<i64>
  //   %3 = call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
  //   %4 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
  //   %5 = arith.subi %3, %4 : i64
  //   %6 = llvm.load %2 : !llvm.ptr<i64>
  //   %7 = arith.cmpi slt, %5, %6 : i64
  //   scf.if %7 {
  //     func.call @_ZSt20__throw_length_errorPKc(%arg2) : (!llvm.ptr<i8>) -> ()
  //   }
  //   %8 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
  //   %9 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
  //   llvm.store %9, %1 : !llvm.ptr<i64>
  //   %10 = call @_ZSt3maxImERKT_S2_S2_(%1, %2) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
  //   %11 = llvm.load %10 : !llvm.ptr<i64>
  //   %12 = arith.addi %8, %11 : i64
  //   %13 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
  //   %14 = arith.cmpi slt, %12, %13 : i64
  //   %15 = scf.if %14 -> (i1) {
  //     scf.yield %true : i1
  //   } else {
  //     %17 = func.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
  //     %18 = arith.cmpi sgt, %12, %17 : i64
  //     scf.yield %18 : i1
  //   }
  //   %16 = scf.if %15 -> (i64) {
  //     %17 = func.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
  //     scf.yield %17 : i64
  //   } else {
  //     scf.yield %12 : i64
  //   }
  //   return %16 : i64
  // }
  // func.func @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c4_i64 = arith.constant 4 : i64
  //   %0 = call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
  //   %2 = call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   %3 = llvm.load %2 : !llvm.ptr<ptr<i32>>
  //   %4 = llvm.ptrtoint %3 : !llvm.ptr<i32> to i64
  //   %5 = llvm.ptrtoint %1 : !llvm.ptr<i32> to i64
  //   %6 = arith.subi %5, %4 : i64
  //   %7 = arith.divsi %6, %c4_i64 : i64
  //   return %7 : i64
  // }
  // func.func @_ZNSt6vectorIiSaIiEE5beginEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c1_i64 = arith.constant 1 : i64
  //   %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
  //   %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
  //   %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
  //   %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%1, %6) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<ptr<i32>>) -> ()
  //   %7 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   llvm.store %7, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%2, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
  //   %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  //   return %8 : !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
  // }
  // func.func @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c0_i64 = arith.constant 0 : i64
  //   %0 = arith.cmpi ne, %arg1, %c0_i64 : i64
  //   %1 = scf.if %0 -> (!llvm.ptr<i32>) {
  //     %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
  //     %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //     %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //     %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //     %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //     %7 = func.call @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%6, %arg1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, i64) -> !llvm.ptr<i32>
  //     scf.yield %7 : !llvm.ptr<i32>
  //   } else {
  //     %2 = llvm.mlir.null : !llvm.ptr<i32>
  //     scf.yield %2 : !llvm.ptr<i32>
  //   }
  //   return %1 : !llvm.ptr<i32>
  // }
  // func.func @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c1_i8 = arith.constant 1 : i8
  //   %false = arith.constant false
  //   %c0_i8 = arith.constant 0 : i8
  //   %c1_i64 = arith.constant 1 : i64
  //   %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::__is_move_insertable", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::__is_move_insertable", (i8)>>
  //   %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::__is_move_insertable", (i8)>> to !llvm.ptr<i8>
  //   "llvm.intr.memset"(%1, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
  //   return %c1_i8 : i8
  // }
  // func.func @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
  //   return %0 : !llvm.ptr<i32>
  // }
  // func.func @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   return %0 : !llvm.ptr<ptr<i32>>
  // }
  // func.func @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
  //   %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //   %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //   %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //   %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //   return %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  // }
  // func.func @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c1_i64 = arith.constant 1 : i64
  //   %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %4 = call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg0) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
  //   llvm.store %4, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   call @_ZNSt13move_iteratorIPiEC1EOS1_(%3, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
  //   %5 = call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg1) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
  //   llvm.store %5, %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   call @_ZNSt13move_iteratorIPiEC1EOS1_(%1, %0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
  //   %6 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %8 = call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%6, %7, %arg2, %arg3) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
  //   return %8 : !llvm.ptr<i32>
  // }
  // func.func @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<struct<"class.std::allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   return
  // }
  // func.func @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.mlir.null : !llvm.ptr<i32>
  //   %1 = llvm.icmp "ne" %arg1, %0 : !llvm.ptr<i32>
  //   scf.if %1 {
  //     %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
  //     %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //     %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //     %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //     %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //     func.call @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%6, %arg1, %arg2) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i32>, i64) -> ()
  //   }
  //   return
  // }
  // func.func @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<ptr<i32>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.load %arg1 : !llvm.ptr<ptr<i32>>
  //   %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   llvm.store %0, %1 : !llvm.ptr<ptr<i32>>
  //   return
  // }
  // func.func @_ZN9__gnu_cxx13new_allocatorIiEC1Ev(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   return
  // }
  // func.func @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
  //   %1 = call @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //   %2 = call @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64
  //   return %2 : i64
  // }
  // func.func private @_ZSt20__throw_length_errorPKc(!llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<external>}
  // func.func @_ZSt3maxImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.load %arg0 : !llvm.ptr<i64>
  //   %1 = llvm.load %arg1 : !llvm.ptr<i64>
  //   %2 = arith.cmpi slt, %0, %1 : i64
  //   %3 = arith.select %2, %arg1, %arg0 : !llvm.ptr<i64>
  //   return %3 : !llvm.ptr<i64>
  // }
  // func.func @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: i64) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
  //   %1 = llvm.mlir.null : !llvm.ptr<i8>
  //   %2 = call @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<i32>
  //   return %2 : !llvm.ptr<i32>
  // }
  // func.func @_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%arg0: !llvm.struct<"struct.std::integral_constant", (i8)>) -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c1_i8 = arith.constant 1 : i8
  //   return %c1_i8 : i8
  // }
  // func.func @_ZNSt17integral_constantIbLb1EEC1EOS0_(%arg0: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>, %arg1: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   return
  // }
  // func.func @_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg4: !llvm.struct<"struct.std::integral_constant", (i8)>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
  //   return %0 : !llvm.ptr<i32>
  // }
  // func.func @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c1_i64 = arith.constant 1 : i64
  //   %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
  //   call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
  //   %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %6 = call @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
  //   return %6 : !llvm.ptr<i32>
  // }
  // func.func @_ZNSt13move_iteratorIPiEC1EOS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
  //   %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
  //   return
  // }
  // func.func @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg0: !llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c1_i64 = arith.constant 1 : i64
  //   %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   call @_ZNSt13move_iteratorIPiEC1ES0_(%1, %arg0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<i32>) -> ()
  //   %3 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   llvm.store %3, %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   call @_ZNSt13move_iteratorIPiEC1EOS1_(%2, %0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
  //   %4 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   return %4 : !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
  // }
  // func.func @_ZSt8_DestroyIPiEvT_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   return
  // }
  // func.func @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
  //   call @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, !llvm.ptr<i32>, i64) -> ()
  //   return
  // }
  // func.func @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c2305843009213693951_i64 = arith.constant 2305843009213693951 : i64
  //   %c1_i64 = arith.constant 1 : i64
  //   %0 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
  //   %1 = llvm.mlir.undef : i64
  //   llvm.store %1, %0 : !llvm.ptr<i64>
  //   %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
  //   llvm.store %1, %2 : !llvm.ptr<i64>
  //   llvm.store %c2305843009213693951_i64, %2 : !llvm.ptr<i64>
  //   llvm.store %c2305843009213693951_i64, %0 : !llvm.ptr<i64>
  //   %3 = call @_ZSt3minImERKT_S2_S2_(%2, %0) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
  //   %4 = llvm.load %3 : !llvm.ptr<i64>
  //   return %4 : i64
  // }
  // func.func @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
  //   %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //   %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //   %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //   %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  //   return %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  // }
  // func.func @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c4_i64 = arith.constant 4 : i64
  //   %c2305843009213693951_i64 = arith.constant 2305843009213693951 : i64
  //   %0 = arith.cmpi sgt, %arg1, %c2305843009213693951_i64 : i64
  //   scf.if %0 {
  //     func.call @_ZSt17__throw_bad_allocv() : () -> ()
  //   }
  //   %1 = arith.muli %arg1, %c4_i64 : i64
  //   %2 = call @_Znwm(%1) : (i64) -> !llvm.ptr<i8>
  //   %3 = llvm.bitcast %2 : !llvm.ptr<i8> to !llvm.ptr<i32>
  //   return %3 : !llvm.ptr<i32>
  // }
  // func.func @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
  //   return %0 : !llvm.ptr<i32>
  // }
  // func.func @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c1_i64 = arith.constant 1 : i64
  //   %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
  //   call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
  //   %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %6 = call @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
  //   return %6 : !llvm.ptr<i32>
  // }
  // func.func @_ZNSt13move_iteratorIPiEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
  //   %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
  //   return
  // }
  // func.func @_ZNSt13move_iteratorIPiEC1ES0_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   llvm.store %arg1, %0 : !llvm.ptr<ptr<i32>>
  //   return
  // }
  // func.func @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   return
  // }
  // func.func @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.bitcast %arg1 : !llvm.ptr<i32> to !llvm.ptr<i8>
  //   call @_ZdlPv(%0) : (!llvm.ptr<i8>) -> ()
  //   return
  // }
  // func.func @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c2305843009213693951_i64 = arith.constant 2305843009213693951 : i64
  //   return %c2305843009213693951_i64 : i64
  // }
  // func.func @_ZSt3minImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.load %arg1 : !llvm.ptr<i64>
  //   %1 = llvm.load %arg0 : !llvm.ptr<i64>
  //   %2 = arith.cmpi slt, %0, %1 : i64
  //   %3 = arith.select %2, %arg1, %arg0 : !llvm.ptr<i64>
  //   return %3 : !llvm.ptr<i64>
  // }
  // func.func @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c2305843009213693951_i64 = arith.constant 2305843009213693951 : i64
  //   return %c2305843009213693951_i64 : i64
  // }
  // func.func private @_ZSt17__throw_bad_allocv() attributes {llvm.linkage = #llvm.linkage<external>}
  // func.func private @_Znwm(i64) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  // func.func @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c4_i64 = arith.constant 4 : i64
  //   %false = arith.constant false
  //   %c0_i64 = arith.constant 0 : i64
  //   %0 = llvm.ptrtoint %arg0 : !llvm.ptr<i32> to i64
  //   %1 = llvm.ptrtoint %arg1 : !llvm.ptr<i32> to i64
  //   %2 = arith.subi %1, %0 : i64
  //   %3 = arith.divsi %2, %c4_i64 : i64
  //   %4 = arith.cmpi sgt, %3, %c0_i64 : i64
  //   scf.if %4 {
  //     %6 = llvm.bitcast %arg2 : !llvm.ptr<i32> to !llvm.ptr<i8>
  //     %7 = llvm.bitcast %arg0 : !llvm.ptr<i32> to !llvm.ptr<i8>
  //     %8 = arith.muli %3, %c4_i64 : i64
  //     "llvm.intr.memmove"(%6, %7, %8, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
  //   }
  //   %5 = llvm.getelementptr %arg2[%3] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
  //   return %5 : !llvm.ptr<i32>
  // }
  // func.func @_ZSt12__niter_baseIPiET_S1_(%arg0: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   return %arg0 : !llvm.ptr<i32>
  // }
  // func.func @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c1_i64 = arith.constant 1 : i64
  //   %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
  //   call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
  //   %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %6 = call @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
  //   return %6 : !llvm.ptr<i32>
  // }
  // func.func private @_ZdlPv(!llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<external>}
  // func.func @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c1_i64 = arith.constant 1 : i64
  //   %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
  //   %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %5 = call @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%4) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32>
  //   call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
  //   %6 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %7 = call @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%6) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32>
  //   %8 = call @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(%5, %7, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
  //   return %8 : !llvm.ptr<i32>
  // }
  // func.func @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
  //   return %0 : !llvm.ptr<i32>
  // }
  // func.func @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c1_i64 = arith.constant 1 : i64
  //   %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   llvm.store %arg0, %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
  //   %1 = call @_ZNKSt13move_iteratorIPiE4baseEv(%0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<i32>
  //   return %1 : !llvm.ptr<i32>
  // }
  // func.func @_ZSt12__niter_wrapIPiET_RKS1_S1_(%arg0: !llvm.ptr<ptr<i32>>, %arg1: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   return %arg1 : !llvm.ptr<i32>
  // }
  // func.func @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
  //   return %0 : !llvm.ptr<i32>
  // }
  // func.func @_ZSt12__miter_baseIPiET_S1_(%arg0: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   return %arg0 : !llvm.ptr<i32>
  // }
  // func.func @_ZNKSt13move_iteratorIPiE4baseEv(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
  //   %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
  //   return %1 : !llvm.ptr<i32>
  // }
  // func.func @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
  //   %c4_i64 = arith.constant 4 : i64
  //   %false = arith.constant false
  //   %c0_i64 = arith.constant 0 : i64
  //   %0 = llvm.ptrtoint %arg0 : !llvm.ptr<i32> to i64
  //   %1 = llvm.ptrtoint %arg1 : !llvm.ptr<i32> to i64
  //   %2 = arith.subi %1, %0 : i64
  //   %3 = arith.divsi %2, %c4_i64 : i64
  //   %4 = arith.cmpi ne, %3, %c0_i64 : i64
  //   scf.if %4 {
  //     %6 = llvm.bitcast %arg2 : !llvm.ptr<i32> to !llvm.ptr<i8>
  //     %7 = llvm.bitcast %arg0 : !llvm.ptr<i32> to !llvm.ptr<i8>
  //     %8 = arith.muli %3, %c4_i64 : i64
  //     "llvm.intr.memmove"(%6, %7, %8, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
  //   }
  //   %5 = llvm.getelementptr %arg2[%3] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
  //   return %5 : !llvm.ptr<i32>
  // }
}

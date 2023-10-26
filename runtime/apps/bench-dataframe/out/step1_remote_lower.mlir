module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @channel_init()
  llvm.func @cache_init()
  llvm.func @init_client()
  llvm.func @channel_access(i32, i64) -> !llvm.ptr<i8>
  llvm.func @channel_create(i64, i64, i64, i32, i32, i32, i32, i16, i32) -> i32
  llvm.func @channel_destroy(i32)
  llvm.mlir.global internal constant @str6("vector::_M_realloc_insert\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("vector::reserve\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("Number of unique vendor_ids in the train dataset: %ld\0A\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("VendorID\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("number of vendor_ids in the train dataset: %ld\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("print_number_vendor_ids_and_unique()\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("Step 1: %ld us\0A\00") {addr_space = 0 : i32}
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    llvm.call @init_client() : () -> ()
    llvm.call @cache_init() : () -> ()
    llvm.call @channel_init() : () -> ()
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %4 = llvm.alloca %c1_i64 x !llvm.array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>> : (i64) -> !llvm.ptr<array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>>
    %5 = llvm.mlir.undef : i32
    %6 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    scf.for %arg0 = %c0 to %c10 step %c1 {
      %19 = arith.index_cast %arg0 : index to i64
      %20 = llvm.getelementptr %6[%19] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
      func.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev(%20) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> ()
    }
    %7 = call @_Z9load_datav() : () -> !llvm.ptr<i8>
    %8 = call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %8, %3 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %9 = call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%6, %3) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    call @_Z34print_number_vendor_ids_and_uniquev() : () -> ()
    %10 = llvm.getelementptr %6[1] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %11 = call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %11, %2 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %12 = call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%10, %2) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %13 = llvm.mlir.addressof @str0 : !llvm.ptr<array<16 x i8>>
    %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %15 = call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%10, %6) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %15, %1 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %16 = call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %16, %0 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %17 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%0) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %18 = llvm.call @printf(%14, %17) : (!llvm.ptr<i8>, i64) -> i32
    return %5 : i32
  }
  func.func @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %2 = call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv() : () -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %2, %0 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%1, %0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %4 = llvm.load %1 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %4, %3 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    return
  }
  func.func private @_Z9load_datav() -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%arg0: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %1 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %2 = call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_(%0, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    return %arg0 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
  }
  func.func private @_ZNSt6chrono3_V212steady_clock3nowEv() -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_Z34print_number_vendor_ids_and_uniquev() attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %1 = llvm.mlir.addressof @str1 : !llvm.ptr<array<38 x i8>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<array<38 x i8>>) -> !llvm.ptr<i8>
    %3 = llvm.call @printf(%2) : (!llvm.ptr<i8>) -> i32
    %4 = llvm.mlir.addressof @str2 : !llvm.ptr<array<48 x i8>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<array<48 x i8>>) -> !llvm.ptr<i8>
    %6 = llvm.mlir.addressof @str3 : !llvm.ptr<array<9 x i8>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<array<9 x i8>>) -> !llvm.ptr<i8>
    %8 = call @_Z10get_columnIiERSt6vectorIT_SaIS1_EEPKc(%7) : (!llvm.ptr<i8>) -> !llvm.ptr<struct<"_Lowered_r::class.std::vector", (struct<"_Lowered_r::struct.std::_Vector_base", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %9 = call @remote_vec_size_int(%8) : (!llvm.ptr<struct<"_Lowered_r::class.std::vector", (struct<"_Lowered_r::struct.std::_Vector_base", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %10 = llvm.call @printf(%5, %9) : (!llvm.ptr<i8>, i64) -> i32
    %11 = llvm.mlir.addressof @str4 : !llvm.ptr<array<56 x i8>>
    %12 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<array<56 x i8>>) -> !llvm.ptr<i8>
    %13 = call @_Z10get_columnIiERSt6vectorIT_SaIS1_EEPKc(%7) : (!llvm.ptr<i8>) -> !llvm.ptr<struct<"_Lowered_r::class.std::vector", (struct<"_Lowered_r::struct.std::_Vector_base", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %14 = call @_Z21get_col_unique_valuesIiESt6vectorIT_SaIS1_EERKS3_(%13) : (!llvm.ptr<struct<"_Lowered_r::class.std::vector", (struct<"_Lowered_r::struct.std::_Vector_base", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>
    llvm.store %14, %0 : !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %15 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %16 = llvm.call @printf(%12, %15) : (!llvm.ptr<i8>, i64) -> i32
    return
  }
  func.func @remote_vec_size_int(%arg0: !llvm.ptr<struct<"_Lowered_r::class.std::vector", (struct<"_Lowered_r::struct.std::_Vector_base", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"_Lowered_r::class.std::vector", (struct<"_Lowered_r::struct.std::_Vector_base", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>> to !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %1 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    return %1 : i64
  }
  func.func @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    return %1 : i64
  }
  func.func @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %2 = call @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE(%arg0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %2, %0 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(%1, %0) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> ()
    %3 = llvm.load %1 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    return %3 : !llvm.struct<"struct.std::chrono::duration.0", (i64)>
  }
  func.func @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%arg0: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %4 = call @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(%arg0) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %4, %2 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %5 = call @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(%arg1) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %5, %1 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %6 = call @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(%2, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %6, %0 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%3, %0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %7 = llvm.load %3 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    return %7 : !llvm.struct<"struct.std::chrono::duration", (i64)>
  }
  func.func @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    llvm.store %1, %2 : !llvm.ptr<i64>
    return
  }
  func.func @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv() -> !llvm.struct<"struct.std::chrono::duration", (i64)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %2 = llvm.mlir.undef : i64
    llvm.store %2, %1 : !llvm.ptr<i64>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %4 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %c0_i64, %1 : !llvm.ptr<i64>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(%3, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<i64>) -> ()
    %5 = llvm.load %3 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %5, %0 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%4, %0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %6 = llvm.load %4 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    return %6 : !llvm.struct<"struct.std::chrono::duration", (i64)>
  }
  func.func @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    %2 = llvm.load %1 : !llvm.ptr<i64>
    llvm.store %2, %0 : !llvm.ptr<i64>
    return %arg0 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
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
  func.func private @_Z10get_columnIiERSt6vectorIT_SaIS1_EEPKc(!llvm.ptr<i8>) -> !llvm.ptr<struct<"_Lowered_r::class.std::vector", (struct<"_Lowered_r::struct.std::_Vector_base", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_Z21get_col_unique_valuesIiESt6vectorIT_SaIS1_EERKS3_(%arg0: !llvm.ptr<struct<"_Lowered_r::class.std::vector", (struct<"_Lowered_r::struct.std::_Vector_base", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    %c1024_i32 = arith.constant 1024 : i32
    %c20_i32 = arith.constant 20 : i32
    %c0_i16 = arith.constant 0 : i16
    %c0_i32 = arith.constant 0 : i32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %1 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    %2 = llvm.mlir.undef : i32
    llvm.store %2, %1 : !llvm.ptr<i32>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %4 = call @remote_vec_size_int(%arg0) : (!llvm.ptr<struct<"_Lowered_r::class.std::vector", (struct<"_Lowered_r::struct.std::_Vector_base", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    call @_ZNSt6vectorIiSaIiEEC1Ev(%3) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    call @_ZNSt6vectorIiSaIiEE7reserveEm(%3, %4) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %5 = arith.index_cast %4 : i64 to index
    %6 = builtin.unrealized_conversion_cast %5 : index to i64 {lower_tgt_mat = true}
    %7 = call @remote_vec_idx_int(%arg0, %c0_i64) : (!llvm.ptr<struct<"_Lowered_r::class.std::vector", (struct<"_Lowered_r::struct.std::_Vector_base", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %c4_i32 = arith.constant 4 : i32
    %c4_i64 = arith.constant 4 : i64
    %8 = arith.ceildivui %c1024_i32, %c4_i32 : i32
    %9 = arith.addi %8, %c20_i32 : i32
    %10 = llvm.ptrtoint %7 : !llvm.ptr<i32> to i64
    %11 = arith.index_cast %5 : index to i64
    %12 = llvm.call @channel_create(%10, %11, %c4_i64, %c4_i32, %9, %8, %c20_i32, %c0_i16, %c0_i32) : (i64, i64, i64, i32, i32, i32, i32, i16, i32) -> i32
    scf.for %arg1 = %c0 to %5 step %c1 {
      %14 = builtin.unrealized_conversion_cast %arg1 : index to i64 {lower_arg_mat = true}
      %15 = arith.index_cast %arg1 : index to i64
      %16 = func.call @remote_vec_idx_int(%arg0, %15) : (!llvm.ptr<struct<"_Lowered_r::class.std::vector", (struct<"_Lowered_r::struct.std::_Vector_base", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
      %17 = arith.index_cast %arg1 : index to i64
      %18 = llvm.call @channel_access(%12, %17) : (i32, i64) -> !llvm.ptr<i8>
      %19 = llvm.bitcast %18 : !llvm.ptr<i8> to !llvm.ptr<i32>
      %20 = llvm.load %19 : !llvm.ptr<i32>
      llvm.store %20, %1 : !llvm.ptr<i32>
      %21 = func.call @_Z15step1_firstTimei(%20) : (i32) -> i8
      %22 = arith.cmpi ne, %21, %c0_i8 : i8
      scf.if %22 {
        func.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%3, %1) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
      }
    } {prefetched = true}
    llvm.call @channel_destroy(%12) : (i32) -> ()
    call @_ZNSt6vectorIiSaIiEEC1EOS1_(%0, %3) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    %13 = llvm.load %0 : !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    return %13 : !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>
  }
  func.func @remote_vec_idx_int(%arg0: !llvm.ptr<struct<"_Lowered_r::class.std::vector", (struct<"_Lowered_r::struct.std::_Vector_base", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_r::class.std::vector", (struct<"_Lowered_r::struct.std::_Vector_base", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_r::struct.std::_Vector_base", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_r::struct.std::_Vector_base", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.return %5 : !llvm.ptr<i32>
  }
  func.func @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> !llvm.ptr<i64>
    llvm.store %1, %2 : !llvm.ptr<i64>
    return
  }
  func.func @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1000_i64 = arith.constant 1000 : i64
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %2 = llvm.mlir.undef : i64
    llvm.store %2, %1 : !llvm.ptr<i64>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %4 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %5 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%arg0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> i64
    %6 = arith.divsi %5, %c1000_i64 : i64
    llvm.store %6, %1 : !llvm.ptr<i64>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_(%3, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>, !llvm.ptr<i64>) -> ()
    %7 = llvm.load %3 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    llvm.store %7, %0 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(%4, %0) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> ()
    %8 = llvm.load %4 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    return %8 : !llvm.struct<"struct.std::chrono::duration.0", (i64)>
  }
  func.func @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %2 = llvm.mlir.undef : i64
    llvm.store %2, %1 : !llvm.ptr<i64>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %4 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %5 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %6 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %7 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %8 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%6, %arg0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %9 = llvm.load %6 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %9, %5 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %10 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%5) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> i64
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%4, %arg1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %11 = llvm.load %4 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %11, %3 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %12 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%3) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> i64
    %13 = arith.subi %10, %12 : i64
    llvm.store %13, %1 : !llvm.ptr<i64>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(%7, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<i64>) -> ()
    %14 = llvm.load %7 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %14, %0 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%8, %0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %15 = llvm.load %8 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    return %15 : !llvm.struct<"struct.std::chrono::duration", (i64)>
  }
  func.func @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(%arg0: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%0, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %2 = llvm.load %0 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    return %2 : !llvm.struct<"struct.std::chrono::duration", (i64)>
  }
  func.func @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, %arg1: !llvm.ptr<i64>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<i64>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    return
  }
  func.func @_ZNSt6chrono15duration_valuesIlE4zeroEv() -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    return %c0_i64 : i64
  }
  func.func @_ZNSt6vectorIiSaIiEEC1Ev(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    call @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> ()
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE7reserveEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %4 = call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %5 = arith.cmpi sgt, %arg1, %4 : i64
    scf.if %5 {
      %8 = llvm.mlir.addressof @str5 : !llvm.ptr<array<16 x i8>>
      %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
      func.call @_ZSt20__throw_length_errorPKc(%9) : (!llvm.ptr<i8>) -> ()
    }
    %6 = call @_ZNKSt6vectorIiSaIiEE8capacityEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %7 = arith.cmpi slt, %6, %arg1 : i64
    scf.if %7 {
      %8 = func.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
      %9 = func.call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
      %10 = arith.cmpi ne, %9, %c0_i8 : i8
      %11 = scf.if %10 -> (!llvm.ptr<i32>) {
        %27 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
        %28 = func.call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%27, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
        %29 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
        %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
        %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
        %32 = llvm.load %31 : !llvm.ptr<ptr<i32>>
        %33 = llvm.getelementptr %30[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
        %34 = llvm.load %33 : !llvm.ptr<ptr<i32>>
        %35 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%27) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
        %36 = func.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%32, %34, %28, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
        scf.yield %28 : !llvm.ptr<i32>
      } else {
        %27 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
        %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
        %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
        %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
        %31 = llvm.load %30 : !llvm.ptr<ptr<i32>>
        %32 = func.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%31) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
        llvm.store %32, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
        func.call @_ZNSt13move_iteratorIPiEC1EOS1_(%3, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
        %33 = llvm.getelementptr %29[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
        %34 = llvm.load %33 : !llvm.ptr<ptr<i32>>
        %35 = func.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%34) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
        llvm.store %35, %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
        func.call @_ZNSt13move_iteratorIPiEC1EOS1_(%1, %0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
        %36 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
        %37 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
        %38 = func.call @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyISt13move_iteratorIPiEEES4_mT_S6_(%arg0, %arg1, %36, %37) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32>
        %39 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%27) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
        scf.yield %38 : !llvm.ptr<i32>
      }
      %12 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
      %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
      %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
      %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %16 = llvm.load %15 : !llvm.ptr<ptr<i32>>
      %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %18 = llvm.load %17 : !llvm.ptr<ptr<i32>>
      %19 = llvm.ptrtoint %16 : !llvm.ptr<i32> to i64
      %20 = llvm.ptrtoint %18 : !llvm.ptr<i32> to i64
      %21 = arith.subi %20, %19 : i64
      %22 = arith.divsi %21, %c4_i64 : i64
      func.call @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%12, %16, %22) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, !llvm.ptr<i32>, i64) -> ()
      llvm.store %11, %15 : !llvm.ptr<ptr<i32>>
      %23 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %24 = llvm.getelementptr %11[%8] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %24, %23 : !llvm.ptr<ptr<i32>>
      %25 = llvm.load %15 : !llvm.ptr<ptr<i32>>
      %26 = llvm.getelementptr %25[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %26, %17 : !llvm.ptr<ptr<i32>>
    }
    return
  }
  func.func @_ZNKSt6vectorIiSaIiEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    return %5 : !llvm.ptr<i32>
  }
  func.func private @_Z15step1_firstTimei(i32) -> i8 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %5 = llvm.getelementptr %4[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i32>>
    %7 = llvm.getelementptr %4[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %8 = llvm.load %7 : !llvm.ptr<ptr<i32>>
    %9 = llvm.icmp "ne" %6, %8 : !llvm.ptr<i32>
    scf.if %9 {
      %10 = llvm.bitcast %3 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %11 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %12 = llvm.icmp "ne" %10, %11 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %13 = arith.select %12, %10, %11 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %14 = llvm.load %5 : !llvm.ptr<ptr<i32>>
      func.call @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%13, %14, %arg1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
      %15 = llvm.load %5 : !llvm.ptr<ptr<i32>>
      %16 = llvm.getelementptr %15[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
      llvm.store %16, %5 : !llvm.ptr<ptr<i32>>
    } else {
      %10 = func.call @_ZNSt6vectorIiSaIiEE3endEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
      llvm.store %10, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
      func.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%1, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
      %11 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
      func.call @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%arg0, %11, %arg1) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> ()
    }
    return
  }
  func.func @_ZNSt6vectorIiSaIiEEC1EOS1_(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    call @_ZNSt12_Vector_baseIiSaIiEEC1EOS1_(%0, %1) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> ()
    return
  }
  func.func @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>, %arg1: !llvm.ptr<i64>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<i64>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    return
  }
  func.func @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    return %1 : i64
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    call @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> ()
    return
  }
  func.func @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = call @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = call @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64
    return %2 : i64
  }
  func.func private @_ZSt20__throw_length_errorPKc(!llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNKSt6vectorIiSaIiEE8capacityEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i32>>
    %7 = llvm.ptrtoint %6 : !llvm.ptr<i32> to i64
    %8 = llvm.ptrtoint %4 : !llvm.ptr<i32> to i64
    %9 = arith.subi %8, %7 : i64
    %10 = arith.divsi %9, %c4_i64 : i64
    return %10 : i64
  }
  func.func @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i8 = arith.constant 1 : i8
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::__is_move_insertable", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::__is_move_insertable", (i8)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::__is_move_insertable", (i8)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%1, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    return %c1_i8 : i8
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    %0 = arith.cmpi ne, %arg1, %c0_i64 : i64
    %1 = scf.if %0 -> (!llvm.ptr<i32>) {
      %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
      %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %7 = func.call @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%6, %arg1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, i64) -> !llvm.ptr<i32>
      scf.yield %7 : !llvm.ptr<i32>
    } else {
      %2 = llvm.mlir.null : !llvm.ptr<i32>
      scf.yield %2 : !llvm.ptr<i32>
    }
    return %1 : !llvm.ptr<i32>
  }
  func.func @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    return %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  }
  func.func @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyISt13move_iteratorIPiEEES4_mT_S6_(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64, %arg2: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg3: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg2, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg3, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %5 = call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%4, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %6 = call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%4) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %8 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %9 = call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%7, %8, %5, %6) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    return %5 : !llvm.ptr<i32>
  }
  func.func @_ZNSt13move_iteratorIPiEC1EOS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg0: !llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1ES0_(%1, %arg0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<i32>) -> ()
    %3 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %3, %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1EOS1_(%2, %0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %4 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    return %4 : !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
  }
  func.func @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<struct<"class.std::allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.mlir.null : !llvm.ptr<i32>
    %1 = llvm.icmp "ne" %arg1, %0 : !llvm.ptr<i32>
    scf.if %1 {
      %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
      %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      func.call @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%6, %arg1, %arg2) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i32>, i64) -> ()
    }
    return
  }
  func.func @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
    call @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %arg1, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.mlir.addressof @str6 : !llvm.ptr<array<26 x i8>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %4 = call @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%arg0, %c1_i64, %3) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64, !llvm.ptr<i8>) -> i64
    %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %8 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<i32>>
    %10 = llvm.getelementptr %7[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<i32>>
    %12 = call @_ZNSt6vectorIiSaIiEE5beginEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
    llvm.store %12, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %13 = call @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%1, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> i64
    %14 = call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%5, %4) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    %15 = llvm.bitcast %6 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %16 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %17 = llvm.icmp "ne" %15, %16 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %18 = arith.select %17, %15, %16 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %19 = llvm.getelementptr %14[%13] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    call @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%18, %19, %arg2) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    %20 = call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
    %21 = arith.cmpi ne, %20, %c0_i8 : i8
    %22 = scf.if %21 -> (!llvm.ptr<i32>) {
      %32 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %33 = llvm.load %32 : !llvm.ptr<ptr<i32>>
      %34 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %35 = func.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%9, %33, %14, %34) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
      %36 = llvm.getelementptr %35[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
      %37 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %38 = llvm.load %37 : !llvm.ptr<ptr<i32>>
      %39 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %40 = func.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%38, %11, %36, %39) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
      scf.yield %40 : !llvm.ptr<i32>
    } else {
      %32 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %33 = llvm.load %32 : !llvm.ptr<ptr<i32>>
      %34 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %35 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%9, %33, %14, %34) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
      %36 = llvm.getelementptr %35[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
      %37 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %38 = llvm.load %37 : !llvm.ptr<ptr<i32>>
      %39 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %40 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%38, %11, %36, %39) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
      scf.yield %40 : !llvm.ptr<i32>
    }
    %23 = call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
    %24 = arith.cmpi eq, %23, %c0_i8 : i8
    scf.if %24 {
      %32 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    }
    %25 = llvm.getelementptr %7[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %26 = llvm.load %25 : !llvm.ptr<ptr<i32>>
    %27 = llvm.ptrtoint %9 : !llvm.ptr<i32> to i64
    %28 = llvm.ptrtoint %26 : !llvm.ptr<i32> to i64
    %29 = arith.subi %28, %27 : i64
    %30 = arith.divsi %29, %c4_i64 : i64
    call @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%5, %9, %30) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, !llvm.ptr<i32>, i64) -> ()
    llvm.store %14, %8 : !llvm.ptr<ptr<i32>>
    llvm.store %22, %10 : !llvm.ptr<ptr<i32>>
    %31 = llvm.getelementptr %14[%4] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %31, %25 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE3endEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%1, %6) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<ptr<i32>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %7, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%2, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    return %8 : !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEEC1EOS1_(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, %arg1: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %1 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    call @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1EOS2_(%0, %1) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>, !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> ()
    return
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    call @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> ()
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2305843009213693951_i64 = arith.constant 2305843009213693951 : i64
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %1 = llvm.mlir.undef : i64
    llvm.store %1, %0 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %1, %2 : !llvm.ptr<i64>
    llvm.store %c2305843009213693951_i64, %2 : !llvm.ptr<i64>
    llvm.store %c2305843009213693951_i64, %0 : !llvm.ptr<i64>
    %3 = call @_ZSt3minImERKT_S2_S2_(%2, %0) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %4 = llvm.load %3 : !llvm.ptr<i64>
    return %4 : i64
  }
  func.func @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    return %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  }
  func.func @_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%arg0: !llvm.struct<"struct.std::integral_constant", (i8)>) -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i8 = arith.constant 1 : i8
    return %c1_i8 : i8
  }
  func.func @_ZNSt17integral_constantIbLb1EEC1EOS0_(%arg0: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>, %arg1: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: i64) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
    %1 = llvm.mlir.null : !llvm.ptr<i8>
    %2 = call @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<i32>
    return %2 : !llvm.ptr<i32>
  }
  func.func @_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg4: !llvm.struct<"struct.std::integral_constant", (i8)>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %6 = call @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %6 : !llvm.ptr<i32>
  }
  func.func @_ZNSt13move_iteratorIPiEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZNSt13move_iteratorIPiEC1ES0_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %arg1, %0 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZSt8_DestroyIPiEvT_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
    call @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, !llvm.ptr<i32>, i64) -> ()
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg2 : !llvm.ptr<i32>
    llvm.store %0, %arg1 : !llvm.ptr<i32>
    return
  }
  func.func @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.mlir.undef : i64
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %2 : !llvm.ptr<i64>
    llvm.store %arg1, %2 : !llvm.ptr<i64>
    %3 = call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %4 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %5 = arith.subi %3, %4 : i64
    %6 = llvm.load %2 : !llvm.ptr<i64>
    %7 = arith.cmpi slt, %5, %6 : i64
    scf.if %7 {
      func.call @_ZSt20__throw_length_errorPKc(%arg2) : (!llvm.ptr<i8>) -> ()
    }
    %8 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %9 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    llvm.store %9, %1 : !llvm.ptr<i64>
    %10 = call @_ZSt3maxImERKT_S2_S2_(%1, %2) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %11 = llvm.load %10 : !llvm.ptr<i64>
    %12 = arith.addi %8, %11 : i64
    %13 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %14 = arith.cmpi slt, %12, %13 : i64
    %15 = scf.if %14 -> (i1) {
      scf.yield %true : i1
    } else {
      %17 = func.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
      %18 = arith.cmpi sgt, %12, %17 : i64
      scf.yield %18 : i1
    }
    %16 = scf.if %15 -> (i64) {
      %17 = func.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
      scf.yield %17 : i64
    } else {
      scf.yield %12 : i64
    }
    return %16 : i64
  }
  func.func @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %0 = call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<i32>>
    %4 = llvm.ptrtoint %3 : !llvm.ptr<i32> to i64
    %5 = llvm.ptrtoint %1 : !llvm.ptr<i32> to i64
    %6 = arith.subi %5, %4 : i64
    %7 = arith.divsi %6, %c4_i64 : i64
    return %7 : i64
  }
  func.func @_ZNSt6vectorIiSaIiEE5beginEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%1, %6) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<ptr<i32>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %7, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%2, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    return %8 : !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
  }
  func.func @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    return %0 : !llvm.ptr<ptr<i32>>
  }
  func.func @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %4 = call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg0) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
    llvm.store %4, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1EOS1_(%3, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %5 = call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg1) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
    llvm.store %5, %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1EOS1_(%1, %0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %6 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %8 = call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%6, %7, %arg2, %arg3) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    return %8 : !llvm.ptr<i32>
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<ptr<i32>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<ptr<i32>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1EOS2_(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>, %arg1: !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %1 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    call @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1EOS2_(%0, %4) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>, !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> ()
    return
  }
  func.func @_ZNSaIiEC1Ev(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.mlir.null : !llvm.ptr<i32>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %2 : !llvm.ptr<ptr<i32>>
    %3 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %3 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2305843009213693951_i64 = arith.constant 2305843009213693951 : i64
    return %c2305843009213693951_i64 : i64
  }
  func.func @_ZSt3minImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<i64>
    %1 = llvm.load %arg0 : !llvm.ptr<i64>
    %2 = arith.cmpi slt, %0, %1 : i64
    %3 = arith.select %2, %arg1, %arg0 : !llvm.ptr<i64>
    return %3 : !llvm.ptr<i64>
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %c2305843009213693951_i64 = arith.constant 2305843009213693951 : i64
    %0 = arith.cmpi sgt, %arg1, %c2305843009213693951_i64 : i64
    scf.if %0 {
      func.call @_ZSt17__throw_bad_allocv() : () -> ()
    }
    %1 = arith.muli %arg1, %c4_i64 : i64
    %2 = call @_Znwm(%1) : (i64) -> !llvm.ptr<i8>
    %3 = llvm.bitcast %2 : !llvm.ptr<i8> to !llvm.ptr<i32>
    return %3 : !llvm.ptr<i32>
  }
  func.func @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %6 = call @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %6 : !llvm.ptr<i32>
  }
  func.func @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg1 : !llvm.ptr<i32> to !llvm.ptr<i8>
    call @_ZdlPv(%0) : (!llvm.ptr<i8>) -> ()
    return
  }
  func.func @_ZSt3maxImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg0 : !llvm.ptr<i64>
    %1 = llvm.load %arg1 : !llvm.ptr<i64>
    %2 = arith.cmpi slt, %0, %1 : i64
    %3 = arith.select %2, %arg1, %arg0 : !llvm.ptr<i64>
    return %3 : !llvm.ptr<i64>
  }
  func.func @_ZNSaIiEC1ERKS_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: !llvm.ptr<struct<"class.std::allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1EOS2_(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>, %arg1: !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    %3 = llvm.getelementptr %arg1[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %4, %5 : !llvm.ptr<ptr<i32>>
    %6 = llvm.getelementptr %arg1[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i32>>
    %8 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %7, %8 : !llvm.ptr<ptr<i32>>
    %9 = llvm.mlir.null : !llvm.ptr<i32>
    llvm.store %9, %6 : !llvm.ptr<ptr<i32>>
    %10 = llvm.load %6 : !llvm.ptr<ptr<i32>>
    llvm.store %10, %3 : !llvm.ptr<ptr<i32>>
    %11 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    llvm.store %11, %0 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiEC1Ev(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2305843009213693951_i64 = arith.constant 2305843009213693951 : i64
    return %c2305843009213693951_i64 : i64
  }
  func.func private @_ZSt17__throw_bad_allocv() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_Znwm(i64) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %false = arith.constant false
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.ptrtoint %arg0 : !llvm.ptr<i32> to i64
    %1 = llvm.ptrtoint %arg1 : !llvm.ptr<i32> to i64
    %2 = arith.subi %1, %0 : i64
    %3 = arith.divsi %2, %c4_i64 : i64
    %4 = arith.cmpi sgt, %3, %c0_i64 : i64
    scf.if %4 {
      %6 = llvm.bitcast %arg2 : !llvm.ptr<i32> to !llvm.ptr<i8>
      %7 = llvm.bitcast %arg0 : !llvm.ptr<i32> to !llvm.ptr<i8>
      %8 = arith.muli %3, %c4_i64 : i64
      "llvm.intr.memmove"(%6, %7, %8, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    }
    %5 = llvm.getelementptr %arg2[%3] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    return %5 : !llvm.ptr<i32>
  }
  func.func @_ZSt12__niter_baseIPiET_S1_(%arg0: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return %arg0 : !llvm.ptr<i32>
  }
  func.func @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %6 = call @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %6 : !llvm.ptr<i32>
  }
  func.func private @_ZdlPv(!llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %5 = call @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%4) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %6 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %7 = call @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%6) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32>
    %8 = call @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(%5, %7, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %8 : !llvm.ptr<i32>
  }
  func.func @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg0, %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = call @_ZNKSt13move_iteratorIPiE4baseEv(%0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<i32>
    return %1 : !llvm.ptr<i32>
  }
  func.func @_ZSt12__niter_wrapIPiET_RKS1_S1_(%arg0: !llvm.ptr<ptr<i32>>, %arg1: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return %arg1 : !llvm.ptr<i32>
  }
  func.func @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZSt12__miter_baseIPiET_S1_(%arg0: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return %arg0 : !llvm.ptr<i32>
  }
  func.func @_ZNKSt13move_iteratorIPiE4baseEv(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    return %1 : !llvm.ptr<i32>
  }
  func.func @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %false = arith.constant false
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.ptrtoint %arg0 : !llvm.ptr<i32> to i64
    %1 = llvm.ptrtoint %arg1 : !llvm.ptr<i32> to i64
    %2 = arith.subi %1, %0 : i64
    %3 = arith.divsi %2, %c4_i64 : i64
    %4 = arith.cmpi ne, %3, %c0_i64 : i64
    scf.if %4 {
      %6 = llvm.bitcast %arg2 : !llvm.ptr<i32> to !llvm.ptr<i8>
      %7 = llvm.bitcast %arg0 : !llvm.ptr<i32> to !llvm.ptr<i8>
      %8 = arith.muli %3, %c4_i64 : i64
      "llvm.intr.memmove"(%6, %7, %8, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    }
    %5 = llvm.getelementptr %arg2[%3] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    return %5 : !llvm.ptr<i32>
  }
}


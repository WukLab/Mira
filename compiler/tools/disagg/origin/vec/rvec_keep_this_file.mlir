func.func @remote_vec_size_int(%arg0: !llvm.ptr<struct<"r::class.std::vector", (struct<"r::struct.std::_Vector_base", (struct<"r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<external>} {
  %raw_arg0 = rmem.bitcast %arg0 : (!llvm.ptr<struct<"r::class.std::vector", (struct<"r::struct.std::_Vector_base", (struct<"r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>>) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
  %size = func.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%raw_arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
  return %size : i64
}

func.func @remote_vec_size_u64(%arg0: !llvm.ptr<struct<"r::class.std::vector", (struct<"r::struct.std::_Vector_base", (struct<"r::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"r::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i64>>, !rmem.rmref<1, !llvm.ptr<i64>>, !rmem.rmref<1, !llvm.ptr<i64>>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<external>} {
  %raw_arg0 = rmem.bitcast %arg0 : (!llvm.ptr<struct<"r::class.std::vector", (struct<"r::struct.std::_Vector_base", (struct<"r::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"r::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i64>>, !rmem.rmref<1, !llvm.ptr<i64>>, !rmem.rmref<1, !llvm.ptr<i64>>)>)>)>)>>) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
  %size = func.call @_ZNKSt6vectorImSaImEE4sizeEv(%raw_arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
  return %size : i64
}

func.func @remote_vec_idx_int(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> attributes {
  llvm.linkage = #llvm.linkage<linkonce_odr>,
  "remote_target" = 1,
  operand_types = [!llvm.ptr<struct<"r::class.std::vector", (struct<"r::struct.std::_Vector_base", (struct<"r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>>, i64],
  rel_types = [!rmem.rmref<1, !llvm.ptr<i32>>]
} {
  %0 = llvm.getelementptr %arg0[0, 0] {
    "remote_target" = 1
  } : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>

  %1 = llvm.getelementptr %0[0, 0] {
    "remote_target" = 1
  } : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>

  %2 = llvm.getelementptr %1[0, 0] {
    "remote_target" = 1
  } : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>

  %3 = llvm.getelementptr %2[0, 0] {
    "remote_target" = 1
  } : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>

  %4 = llvm.load %3 {
    "remote_target" = 1
  } : !llvm.ptr<ptr<i32>>

  %5 = llvm.getelementptr %4[%arg1] {
    "remote_target" = 1
  } : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
  return {"remote_target" = 1} %5 : !llvm.ptr<i32>
}

func.func @remote_vec_idx_u64(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>,
    "remote_target" = 1,
    "operand_types" = [
      !llvm.ptr<struct<"r::class.std::vector", (struct<"r::struct.std::_Vector_base", (struct<"r::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"r::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i64>>, !rmem.rmref<1, !llvm.ptr<i64>>, !rmem.rmref<1, !llvm.ptr<i64>>)>)>)>)>>,
      i64
    ],
    "rel_types" = [!rmem.rmref<1, !llvm.ptr<i64>>]
  } {
    %0 = llvm.getelementptr %arg0[0, 0] {
      "remote_target" = 1
    } : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] {
      "remote_target" = 1
    } : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] {
      "remote_target" = 1
    } : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] {
      "remote_target" = 1
    } : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 {
      "remote_target" = 1
    } : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] {
      "remote_target" = 1
    } : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    return {"remote_target" = 1} %5 : !llvm.ptr<i64>
  }
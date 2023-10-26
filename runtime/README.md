## Build

Requires CMake >= 3.12, libnng and libibverbs.

```bash
mkdir build && cd build
cmake ..
make <app>
```

### Build clang-passes

requires ninja build tool. (apt install ninja-build)
first, build clang libraries

```bash
mkdir external/llvm-project/build
cd external/llvm-project/build
cmake -G Ninja ../llvm   -DLLVM_ENABLE_PROJECTS="mlir;clang"   -DLLVM_TARGETS_TO_BUILD="host"   -DLLVM_ENABLE_ASSERTIONS=ON   -DCMAKE_BUILD_TYPE=Release   -DLLVM_INSTALL_UTILS=ON -DLLVM_BINUTILS_INCDIR=/users/Zijian/gold/binutils/include/ -DCMAKE_C_COMPILER="clang-9" -DCMAKE_CXX_COMPILER="clang++-9" -DC_INCLUDE_DIRS="/users/Zijian/Disagg-mlir/llvm-project/build/lib/clang/16.0.0/include:/usr/local/include:/usr/include/x86_64-linux-gnu:/usr/include"  -DLLVM_ENABLE_RUNTIMES="libcxx;libcxxabi;libunwind;compiler-rt" -DCLANG_DEFAULT_CXX_STDLIB=libstdc++   -DLIBCXX_ENABLE_EXCEPTIONS=OFF
```

build clang-passes
```bash
mkdir build && cd build
cmake ..
```

# Mira: A Program-Behavior-Guided Far Memory System

This repo contains source code for paper Mira: A Program-Behavior-Guided Far Memory System. You can get more information from our [paper](https://dl.acm.org/doi/10.1145/3600006.3613157).

## 🚧 UNDER CONSTRUCTION 🚧

This repo is still under construction as we are moving our runtime from `runtime/libcommon` to `runtime/libcommon2`. Please check back later for completed features and documnets. 

## System Setup

Mira system is built on top of LLVM project. We recommand to build and test Mira system with cloudlab machines.
Mira are tested using the following hardware/software environment:

```bash
Cloudlab C6220 Machine:
c6220 (Ivy Bridge, 16 cores)
CPU 2 x Xeon E5-2650v2 processors (8 cores each, 2.6Ghz)
RAM 64GB Memory (8 x 8GB DDR-3 RDIMMs, 1.86Ghz)
NIC 1 x Mellanox FDR CX3 Single port mezzanine card

OS: Cloudlab Ubuntu Ubuntu 20.04 LTS image, with kernel version 5.4.0-100-generic #113-Ubuntu
MLNX_OFED version: MLNX_OFED_LINUX-4.9-7.1.0.0-ubuntu20.04-x86_64
```

### Setting up Mira System

#### Directory Structure

```
├── compiler		# Mira compiler
│   ├── cmake
│   ├── include
│   ├── lib		# Compiler code and modified cgeist frontend
│   ├── patches		# Patches to the llvm-project
│   ├── script
│   ├── test
│   └── tools		# Mira and modified cgeist code
├── llvm-project	# Git submodule contains the LLVM project. Mira uses LLVM,MLIR and Clang (Optionally Bolt, LibCXX) from LLVM-project
├── runtime
│   ├── apps		# Example apps 
│   ├── libcommon	# Mira runtime libs v1
│   ├── libcommon2	# Mira runtime libs v2
│   └── tests
└── test
    ├── include		# header files for pre-setup tests
    ├── onnx		# onnx sources and weights for GPT
    ├── scripts		# test scripts
    └── srcs		# source files
```


#### Machine Setup

Install the corresponding version of MLNX-OFED libraries. Use `MLNX_OFED_LINUX-4.9-7.1.0.0-ubuntu20.04-x86_64` on cloudlab machines.
Install required software packages (cmake,ninja,clang,google-perftools-dev,pprof)

#### Build Mira Compilers

First, initialize and fetch the submodule in `compiler/llvm-project`. Then apply patches in the `compiler/patches` to the LLVM module. Then using the following command to build LLVM libraries, replace `DC_INCLUDE_PATH` with your C standrard library include path, which could be found using the command `` `gcc -print-prog-name=cc1` -v``. On cloudlab machines the directories are `/usr/local/include:/usr/include/x86_64-linux-gnu:/usr/include`.

```sh
mkdir llvm-project/build
cd llvm-project/build
cmake -G Ninja ../llvm \
  -DLLVM_ENABLE_PROJECTS="mlir;clang" \
  -DLLVM_TARGETS_TO_BUILD="host" \
  -DLLVM_ENABLE_ASSERTIONS=ON \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_INSTALL_UTILS=ON \
  -DCMAKE_C_COMPILER="clang" \
  -DCMAKE_CXX_COMPILER="clang++" \
  -DC_INCLUDE_DIRS="<your-c-library-path>" \
  -DLLVM_ENABLE_RUNTIMES="libcxx;libcxxabi;libunwind" \
  -DLIBCXXABI_USE_LLVM_UNWINDER=YES \
  -DCLANG_DEFAULT_CXX_STDLIB=libstdc++ \
  -DLIBCXX_ENABLE_EXCEPTIONS=OFF
ninja
```

Then build Mira's compiler and front ends.

```sh
mkdir compiler/build
cd compiler/build
cmake -G Ninja .. \
  -DMLIR_DIR=$PWD/../../llvm-project/build/lib/cmake/mlir \
  -DCLANG_DIR=$PWD/../../llvm-project/build/lib/cmake/clang \
  -DLLVM_EXTERNAL_LIT=$PWD/../../llvm-project/build/bin/llvm-lit \
  -DCMAKE_C_COMPILER="clang" \
  -DCMAKE_CXX_COMPILER="clang++" \
  -DLLVM_TARGETS_TO_BUILD="host" \
  -DLLVM_ENABLE_ASSERTIONS=ON \
  -DCMAKE_BUILD_TYPE=DEBUG
ninja
```

#### build Mira runtime libraries.
`remote_server` need to be launched on the memory server. Both compute node and memory node should have environment variable `SERVER_URL` set. ON compute server it should be set to `tcp://<remote_ip>:<port>`, on memory node it should be set to `tcp://*:<port>`. remote server need to be launched before running the binary.

```sh
mkdir runtime/build
cd runtime/build
cmake -DCMAKE_BUILD_TYPE=Release ..
make common common2
make remote_server
```

#### (Optional) setup onnx compiling enironment

Please follow the instructions in the [onnx-mlir](https://github.com/onnx/onnx-mlir) project to setup onnx compling exvironment and obtain GPT2 model and weights from [onnx models](https://github.com/onnx/models/blob/main/text/machine_comprehension/gpt-2/README.md).

## License

MIT

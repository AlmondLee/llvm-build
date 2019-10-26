#!/bin/sh
ln -s ./extra ./clang/tools

ln -s ./clang ./llvm/tools/clang
ln -s ./lld ./llvm/tools/lld
ln -s ./lldb ./llvm/tools/lldb
ln -s ./polly ./llvm/tools/polly
ln -s ./compiler-rt ./llvm/projects/compiler-rt
ln -s ./libcxx ./llvm/projects/libcxx
ln -s ./libcxxabi ./llvm/projects/libcxxabi
ln -s ./libunwind ./llvm/projects/libunwind
ln -s ./openmp ./llvm/projects/openmp

mkdir -p ./llvm/llvm-build
cd ./llvm/llvm-build && /sbin/ldconfig && cmake .. -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX=/usr/local/clang -DCMAKE_BUILD_TYPE=Release && \make -j6 && make install

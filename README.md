# Clang 8 update-alternatives script
Inserts update-alternative entries for all the binaries related clang-8 and llvm and makes clang default c and c++ compiler.

## Installing Clang 8
- Add the sources (for ubuntu):  
<code>deb http://apt.llvm.org/trusty/ llvm-toolchain-trusty-8 main</code>  
<code>deb-src http://apt.llvm.org/trusty/ llvm-toolchain-trusty-8 main</code>  
To retrieve the archive signature:  
<code>#: wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -</code>  
- Install all key packages:  
-- <i>LLVM</i>  
<code>#: apt-get install libllvm-8-ocaml-dev libllvm8 llvm-8 llvm-8-dev llvm-8-doc llvm-8-examples llvm-8-runtime</code>  
-- <i>Clang and co</i>  
<code>#: apt-get install clang-8 clang-tools-8 clang-8-doc libclang-common-8-dev libclang-8-dev libclang1-8 clang-format-8 python-clang-8</code>  
-- <i>libfuzzer</i>  
<code>#: apt-get install libfuzzer-8-dev</code>  
-- <i>lldb</i>  
<code>#: apt-get install lldb-8</code>  
-- <i>lld (linker)</i>  
<code>#: apt-get install lld-8</code>  
-- <i>libc++</i>  
<code>#: apt-get install libc++-8-dev libc++abi-8-dev</code>  

## Using the script
<code>#: sudo chmod +x clang-update-alternatives.sh  
&nbsp;#: ./clang-update-alternatives.sh</code>  

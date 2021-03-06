#!/usr/bin/bash

#_                   _ _ _  _ _____ _  _
#| | _______   ____ _| | | || |___  | || |
#| |/ / _ \ \ / / _` | | | || |_ / /| || |_
#|   <  __/\ V / (_| | | |__   _/ / |__   _|
#|_|\_\___| \_/ \__,_|_|_|  |_|/_/     |_|

# the purpose of this scripts is for building git package for my Archlinux repo plus building mesa-stable and mesa-rc release

# build linux-api-headers-git

git clone https://github.com/kevall474/linux-api-heaaders-git.git && cd linux-api-heaaders-git && makepkg -si && cd ..

# build llvm,clang,compiler-rt,polly,lld,lldb,lic++,libc++adi,libc++experimental,llvm-libs,mlir,lib32-clang,lib32-llvm,lib32-llvm-libs,spirv-llvm-translator,libclc -git

git clone https://github.com/kevall474/llvm-pkg.git && cd llvm-pkg && chmod +x build.sh && ./build.sh && cd ..

# build spirv git package

git clone https://github.com/kevall474/spirv-pkg.git && cd spirv-pkg && chmod +x build.sh && ./build.sh && cd ..

# build protobuf-git package

git clone https://github.com/kevall474/protobuf-git.git && cd protobuf-git && env _compiler=2 _lib32=y makepkg -si && cd ..

# build glslang-git package

git clone https://github.com/kevall474/glslang-git.git && cd glslang-git && env _compiler=2 _lib32=y makepkg -si && cd ..

# build vulkan git package

git clone https://github.com/kevall474/vulkan-pkg.git && cd vulkan-pkg && chmod +x build.sh && ./build.sh && cd ..

# build opencl git package

git clone https://github.com/kevall474/opencl-pkg.git && cd opencl-pkg && chmod +x build.sh && ./build.sh && cd ..

# build xorg video driver and xorg-util-macros git package

git clone https://github.com/kevall474/xorg-pkg.git && cd xorg-pkg && chmod +x build.sh && ./build.sh && cd ..

# build libdrm-git

git clone https://github.com/kevall474/libdrm-git.git && cd libdrm-git && env _compiler=2 _lib32=y makepkg -si && cd ..

# build libglvnd-git

git clone https://github.com/kevall474/libglvnd-git.git && cd libglvnd-git && env _compiler=2 _lib32=y makepkg -si && cd ..

# build mesa-git

git clone https://github.com/kevall474/mesa-git.git && cd mesa-git && chmod +x build.sh && ./build.sh && cd ..

# build mesa-rc

#git clone https://github.com/kevall474/mesa-rc.git && cd mesa-rc && chmod +x build.sh && ./build.sh && cd ..

# build mesa-stable

#git clone https://github.com/kevall474/mesa-stble.git && cd mesa-stable && chmod +x build.sh && ./build.sh && cd ..

# build glu-git

git clone https://github.com/kevall474/glu-git.git && cd glu-git && env _compiler=2 _lib32=y makepkg -si && cd ..

# build freeglut-git

git clone https://github.com/kevall474/freeglut-git.git && cd freeglut-git && env _compiler=2 _lib32=y makepkg -si && cd ..

# build umr-git

git clone https://github.com/kevall474/umr-git.git && cd umr-git && env _compiler=2 _lib32=y makepkg -si && cd ..

# build hsakmt-git

git clone https://github.com/kevall474/hsakmt-git.git && cd hsakmt-git && env _compiler=2 _lib32=y makepkg -si && cd ..

# make a copy of every pkg in package-$(date -I)/ dir

mkdir package-$(date -I)

cp -v */package-$(date -I)/*.pkg.tar.zst package-$(date -I)/
cp -v */*.pkg.tar.zst package-$(date -I)/

# clean build dir

rm -rf */src/
rm -rf */pkg/
rm -rf */*/src/
rm -rf */*/pkg/

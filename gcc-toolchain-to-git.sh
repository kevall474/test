#!/usr/bin/bash

#_                   _ _ _  _ _____ _  _
#| | _______   ____ _| | | || |___  | || |
#| |/ / _ \ \ / / _` | | | || |_ / /| || |_
#|   <  __/\ V / (_| | | |__   _/ / |__   _|
#|_|\_\___| \_/ \__,_|_|_|  |_|/_/     |_|

git clone https://github.com/kevall474/linux-api-headers-git && cd linux-api-headers-git && makepkg -si && cd ..

git clone https://github.com/kevall474/glibc-git && cd glibc-git && makepkg -si && cd ..

git clone https://github.com/kevall474/binutils-git && cd binutils-git && makepkg -si && cd ..

git clone https://github.com/kevall474/gcc-git && cd gcc-git && makepkg -si && cd ..

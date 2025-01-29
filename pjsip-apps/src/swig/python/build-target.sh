#!/bin/sh

OLD_PATH=$PATH
export PATH=$TARGET_HOST_BIN:$PATH

export CC=arm-rockchip-linux-gnueabihf-gcc
export CXX=arm-rockchip-linux-gnueabihf-g++
export CROSS_PATH=$TARGET_ROOTFS_BUILD/staging
export CFLAGS="-I${CROSS_PATH}/usr/include -I${CROSS_PATH}/usr/include/python3.6m"

make

export PATH=$OLD_PATH


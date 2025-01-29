#!/bin/sh

#PATH=$PATH:$HOME/Firefly-RK3308/buildroot/output/rockchip_rk3308_32_release/host/bin
OLD_PATH=$PATH
export PATH=$TARGET_HOST_BIN:$PATH

export CC=arm-rockchip-linux-gnueabihf-gcc
export CXX=arm-rockchip-linux-gnueabihf-g++

SYSROOT_DIR=$TARGET_ROOTFS_BUILD/staging
export PKG_CONFIG_PATH=$SYSROOT_DIR/usr/lib/pkgconfig
echo "PKG_CONFIG_PATH=$PKG_CONFIG_PATH"
export PKG_CONFIG_SYSROOT_DIR=$SYSROOT_DIR
echo "PKG_CONFIG_SYSROOT_DIR=$PKG_CONFIG_SYSROOT_DIR"

#export PYTHON_CONFIG=$TARGET_ROOTFS_BUILD/build/python3-3.6.3/python-config

make

export PATH=$OLD_PATH

#!/bin/bash

export PATH=$TARGET_HOST_BIN:$PATH

export CC=arm-rockchip-linux-gnueabihf-gcc
export CXX=arm-rockchip-linux-gnueabihf-g++

SYSROOT_DIR=$TARGET_ROOTFS_BUILD/staging
export PKG_CONFIG_PATH=$SYSROOT_DIR/usr/lib/pkgconfig
echo "PKG_CONFIG_PATH=$PKG_CONFIG_PATH"
export PKG_CONFIG_SYSROOT_DIR=$SYSROOT_DIR
echo "PKG_CONFIG_SYSROOT_DIR=$PKG_CONFIG_SYSROOT_DIR"

./configure --disable-video --host=arm-rockchip-linux-gnueabihf --prefix=/home/paperspace/rockchip_rk3308_32_release/staging --disable-sdl --disable-v4l2 --disable-openh264 --disable-libwebrtc CFLAGS="-fPIC"

# --disable-ffmpeg 

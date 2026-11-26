#!/bin/sh
set -eu

cd "$(dirname $0)" || exit 1

export CROSS_COMPILE=${CROSS_COMPILE:-aarch64-linux-gnu-}
export ARCH=arm64

cp -f marble-poco-f5.config .config
make olddefconfig
make -j$(nproc) Image.gz dtbs modules
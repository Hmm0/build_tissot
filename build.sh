#!/bin/sh
#echo "Build script"

# Cook
source build/envsetup.sh
ccache -M 20G
ccache -o compression=true
ccache -z
echo "Starting Cooking"
lunch evolution_sunfish-userdebug
export SELINUX_IGNORE_NEVERALLOWS=true
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
make evolution
#echo "Build Done"
#cd out/target/product/tissot
#curl bashupload.com -T boot.img

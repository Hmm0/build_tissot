#!/bin/sh
#echo "Build script"

# Cook
. build/envsetup.sh
ccache -M 20G
ccache -o compression=true
ccache -z
echo "Starting Cooking"
lunch xdroid_sunfish-userdebug
export BUILD_BROKEN_MISSING_REQUIRED_MODULES := true
make xd
#echo "Build Done"
#cd out/target/product/tissot
#curl bashupload.com -T boot.img

#!/bin/sh
#echo "Build script"

# Cook
. build/envsetup.sh
ccache -M 20G
ccache -o compression=true
ccache -z
echo "Starting Cooking"
lunch xdroid_sunfish-userdebug
export ALLOW_MISSING_DEPENDENCIES=true
export BUILD_BROKEN_DUP_RULES := true
make xd
#echo "Build Done"
#cd out/target/product/tissot
#curl bashupload.com -T boot.img

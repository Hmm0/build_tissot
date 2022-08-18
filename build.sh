#!/bin/sh
#echo "Build script"

# Cook
source build/envsetup.sh
ccache -M 20G
ccache -o compression=true
ccache -z
echo "Starting Cooking"
lunch lineage_sunfish-userdebug
export ALLOW_MISSING_DEPENDENCIES=true
export BUILD_BROKEN_USES_BUILD_COPY_HEADERS=true
export BUILD_BROKEN_DUP_RULES=true
m bacon
#echo "Build Done"
#cd out/target/product/tissot
#curl bashupload.com -T boot.img

#!/bin/sh
#echo "Build script"

# Cook
. build/envsetup.sh
#export CCACHE_DIR=/drone/ccache
#export CCACHE_EXEC=$(which ccache)
#export USE_CCACHE=1
#lunch statix_tissot-eng
ccache -M 20G
ccache -o compression=true
ccache -z
echo "Starting Cooking"
#make bootimage -j24
lunch spark_tissot-userdebug
#mka vendorimage
#ccache -s
mka bacon
#echo "Build Done"
#cd out/target/product/tissot
#curl bashupload.com -T boot.img

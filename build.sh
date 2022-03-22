#!/bin/sh
#echo "Build script"

# Cook
. build/envsetup.sh
ccache -M 20G
ccache -o compression=true
ccache -z
echo "Starting Cooking"
lunch palladium_tissot-userdebug
mka palladium
#echo "Build Done"
#cd out/target/product/tissot
#curl bashupload.com -T boot.img

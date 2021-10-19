# Initialize Repos
echo "Initializing Manifest"
repo init --depth=1 -u https://github.com/ShapeShiftOS/android_manifest -b android_12

# Sync source
repo sync -j24 --prune -c --no-clone-bundle --no-tags || repo sync -j24 --prune -c --no-clone-bundle --no-tags
git clone https://github.com/Unknownbitch07/android_device_xiaomi_tissot -b twelve device/xiaomi/tissot --depth=1
git clone https://github.com/Unknownbitch07/android_device_xiaomi_msm8953-common -b twelve device/xiaomi/msm8953-common --depth=1
git clone https://github.com/glassydan/kernel_xiaomi_tissot -b twelve kernel/xiaomi/msm8953 --depth=1
git clone https://github.com/Hmm0/vendor_xiaomi_tissot -b tissot vendor/xiaomi/tissot
git clone https://github.com/Hmm0/vendor_xiaomi_msm8953-common -b msm8953-common vendor/xiaomi/msm8953-common
rm -rf hardware/qcom-caf/msm8996/media hardware/qcom-caf/msm8996/audio hardware/qcom-caf/msm8996/display
git clone https://github.com/Unknownbitch07/R-Hals -b display-s hardware/qcom-caf/msm8996/display
git clone https://github.com/LineageOS/android_hardware_qcom_media -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/media
git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/audio

# Initialize Repos
echo "Initializing Manifest"
repo init --depth=1 -u https://github.com/ArrowOS/android_manifest -b arrow-12.0

# Sync source
repo sync -j24 --prune -c --no-clone-bundle --no-tags || repo sync -j24 --prune -c --no-clone-bundle --no-tags
git clone https://github.com/Hmm0/android_device_xiaomi_tissot -b a12 device/xiaomi/tissot --depth=1
git clone https://github.com/Hmm0/android_device_xiaomi_msm8953-common -b a12 device/xiaomi/msm8953-common --depth=1
git clone https://github.com/neonmicky/kernel_xiaomi_tissot -b test kernel/xiaomi/msm8953 --depth=1
git clone https://github.com/Hmm0/vendor_xiaomi_tissot -b tissot vendor/xiaomi/tissot
git clone https://github.com/Hmm0/vendor_xiaomi_msm8953-common -b msm8953-common vendor/xiaomi/msm8953-common
rm -rf hardware/qcom-caf/msm8996/media hardware/qcom-caf/msm8996/audio hardware/qcom-caf/msm8996/display
git clone https://github.com/LineageOS/android_hardware_qcom_display -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/display
git clone https://github.com/LineageOS/android_hardware_qcom_media -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/media
git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/audio

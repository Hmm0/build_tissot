# Initialize Repos
echo "Initializing Manifest"
repo init --depth=1 --no-repo-verify -u https://github.com/Palladium-OS/platform_manifest -b 12.1 -g default,-mips,-darwin,-notdefault
git clone https://github.com/ucoboy/local_manifest.git --depth=1 -b palladium .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8

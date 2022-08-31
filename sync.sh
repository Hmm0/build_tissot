# Initialize Repos
echo "Initializing Manifest"
repo init --depth=1 --no-repo-verify -u https://github.com/Evolution-X/manifest -b snow -g default,-mips,-darwin,-notdefault
git clone https://github.com/ucoboy/local_manifest.git --depth=1 -b evo12 .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8

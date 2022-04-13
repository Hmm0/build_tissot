# Initialize Repos
echo "Initializing Manifest"
repo init --depth=1 --no-repo-verify -u https://github.com/PixelOS-Pixelish/manifest -b twelve -g default,-mips,-darwin,-notdefault
git clone https://github.com/neonmicky/local_manifest.git --depth 1 -b twelve .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8

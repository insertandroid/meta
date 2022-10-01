#!/bin/bash
# Prepare environment
cd ./android/pe
source build/envsetup.sh

# Prepare ccache
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_DIR=/mnt/ccache

mkdir -p /home/mink/.cache/ccache

# We need to create a mount for ccache
# to get around soong's sandbox limits
if [ ! -d "/mnt/ccache" ]; then
    sudo mkdir /mnt/ccache
fi

# Mount ccache directory
if grep -qs '/mnt/foo ' /proc/mounts; then
    echo ccache mounted
else
    sudo mount --bind /home/mink/.cache/ccache /mnt/ccache
fi

ccache -M 75G

# Prepare to build for device
lunch aosp_renoir-userdebug

# Build it!
croot
mka bacon -j$(nproc --all)

# Print output directory
echo Built files are in $OUT!

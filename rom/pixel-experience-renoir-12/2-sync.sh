#!/bin/bash
# Download source code
cd ./android/pe
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

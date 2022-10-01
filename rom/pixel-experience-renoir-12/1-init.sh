#!/bin/bash
# Create directories
mkdir -p ./android/pe

# Initialise repository
cd ./android/pe
repo init -u https://github.com/insertandroid/pixelexperience_manifest -b insert-renoir

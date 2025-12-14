#!/bin/bash

# Compile GRF
../grfcodec/grfcodec.exe -g 2 -e bridge_tweaks.nfo .

# Build TAR
echo "Building TAR"
mkdir -p timberwolfs_bridge_tweaks
mv *.grf timberwolfs_bridge_tweaks
cp grf_readme/* timberwolfs_bridge_tweaks
tar -c timberwolfs_bridge_tweaks > timberwolfs_bridge_tweaks.tar

#!/bin/bash

set -e

conda create -y -n bsgui python=3.8 \
    bluesky bluesky-live ophyd

echo "Run: conda activate bsgui; source install_submodules.sh"

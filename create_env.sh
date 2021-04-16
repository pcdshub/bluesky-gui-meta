#!/bin/bash

set -e

conda create -y -n bsgui python=3.8 \
    bluesky bluesky-live ophyd

conda activate bsgui
# conda install -y -c conda-forge

submodules="bluesky-queueserver bluesky-widgets bluesky-widgets-demo"

for submodule in $submodules; do
    pushd $submodule
    python -m pip install -e .
    popd
done

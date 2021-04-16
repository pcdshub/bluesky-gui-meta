#!/bin/bash

set -e

submodules="bluesky-queueserver bluesky-widgets bluesky-widgets-demo"

for submodule in $submodules; do
    pushd $submodule
    python -m pip install -e .
    popd
done

set +x

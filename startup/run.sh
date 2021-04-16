#!/bin/bash --login

echo "Running the queue server..."
source activate bsgui
start-re-manager --startup-dir .

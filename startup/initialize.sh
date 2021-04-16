#!/bin/bash

echo "Initializing the queue server from the startup script directory..."
source activate bsgui
qserver-list-plans-devices --startup-dir .

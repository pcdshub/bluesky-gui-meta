#!/bin/bash

echo "Queuing a simple 'count' plan using tst_motor1:"
source activate bsgui
qserver queue add plan '{"name": "count", "args": [["tst_motor1"]], "kwargs": {"num": 10, "delay": 1}}'

echo "Running the queue..."
qserver queue start

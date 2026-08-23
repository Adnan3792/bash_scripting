#!/bin/bash

set -e 
set -o pipefail

echo "hostname: $(hostname)"
echo "User: $USER"  #environment variable


echo "kernel: $(uname -r)"
echo "architecture: $(uname -m)"
echo "uptime: $(uptime -p)"

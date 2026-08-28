#!/bin/bash

set -e

FILE="./sample.txt"

sed -i 's/s/q/g' "$FILE"


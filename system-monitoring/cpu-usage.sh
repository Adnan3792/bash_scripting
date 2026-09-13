#!/bin/bash


cpu=$(top -bn1 | awk '/Cpu/ {print 100 - $8}')

echo "TOTAL CPU USAGE :  $cpu%"


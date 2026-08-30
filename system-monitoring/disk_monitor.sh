#!/bin/bash

set -e

THREESHOLD=80
read -p "Enter your mount point : " mount
echo "Disk monitoring script"

USAGE=$(df $mount | tail -1 | awk '{print $5}' | tr -d '%')

echo "DISK USAGE : $USAGE%"

if ((USAGE>=THREESHOLD)); then
	echo "DISK USAGE IS TOO HIGH!"
else
	echo "DISK USAGE IS NORMAL!"
fi

#!/bin/bash

set -e

read -p "Enter directory to search : " directory
read -p "Enter size to be search : " size

echo "Finding all the files that are larger than $size Mb"

files=$(find "$directory" -type f -size +"${size}"M -exec ls -lh {} \;)

if [ -z "$files" ]
then
	    echo "No files larger than ${size} Mb found."
	    exit 0
fi

echo "Files found:"
echo "------------"

find "$directory" -type f -size +"${size}"M -exec ls -lh {} \;

#!/bin/bash

set -e

read -p "Enter folder to backup : " source
read -p  "Enter backup location : " destination

mkdir -p "$destination"

cp -r "$source" "$destination"

echo "Backup completed successfully."

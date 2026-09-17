#!/bin/bash

source="/mnt/c/Users/Dell/shell_scripts/sample.log"
backup="/mnt/c/Users/Dell/shell_scripts/backups"

mkdir -p "$backup"

filename="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

if tar -czf "$backup/$filename" "$source"
then
    echo "Backup created successfully: $filename"
else
    echo "Backup failed!"
    exit 1 
fi

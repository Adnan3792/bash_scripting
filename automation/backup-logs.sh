#!/bin/bash

read -p "Enter source directory : " source
read -p "Enter backup directory : " backup

mkdir -p "$backup"

filename="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

if tar -czf "$backup/$filename" "$source"
then
    echo "Backup created successfully: $filename"
else
    echo "Backup failed!"
    exit 1 
fi

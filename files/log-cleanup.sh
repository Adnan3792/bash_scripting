#!/bin/bash


read -p "Enter the directory in which log is present : " directory
read -p "Enter number of days old : " days

if [ ! -d "$directory" ]
then 
	echo "$directory is not present "
	exit 1
fi
echo "Log files older than $days days:"
echo "--------------------------------"

files=$(find "$directory" -type f -name "*.log" -mtime +"$days" -exec ls -lh {} \;)

if [ -z "$files" ]
then 
	echo "No log files older than $days days found."
	exit 0
fi

echo "$files"
echo

read -p "Do you want to delete these files? (y/n) " user

if [ "$user" = "y" ]
then
	find "$directory" -type f -name "*.log" -mtime +"$days" -delete
	echo "Logs deleted successfully"
else
	echo "Delete cancelled."
fi


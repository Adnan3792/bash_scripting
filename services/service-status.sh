#!/bin/bash

set -e

read -p "Enter service name to check if it is running or not : " service

if systemctl  is-active --quiet "$service"
then 
	echo "Service $service is running."
else
	echo "Service $service is not running."
fi

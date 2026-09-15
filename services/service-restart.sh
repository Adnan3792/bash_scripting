#!/bin/bash

set -e

read -p "Enter the service name : " service

if ! systemctl list-unit-files --type=service | grep -q "^${service}.service"
then 
	echo "$service does not exist"
	exit 1
fi

echo
echo "Current status of Service $service "
systemctl is-active "$service" || true

read -p  "Do you want to restart the servive $service (y/n) :" choice

if [ "$choice" = "y" ]
then 
	if systemctl restart "$service"
	then
		echo "Service $service resatrted successfully ! "
	else
		echo "Service $service failed to restart !"
	fi
else
	echo "Restart canceled!"
fi
		
	

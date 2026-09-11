#!/bin/bash

set -e

read -p "Enter the host name : " host
read -p "Enter the port : " port

if timeout 3 nc -vz $host $port 
then
	echo "Port $port is open on $host"
else
	echo "Port $port is closed on $host"
fi

#!/bin/bash

read -p "Enter host name or IP : " host

if ping -c 3  "$host" > /dev/null 2>&1
then
	echo "$host is reachable"
else
	echo "$host is not reachable"
fi

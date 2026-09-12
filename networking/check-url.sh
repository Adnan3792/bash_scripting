#!/bin/bash

read -p "Enter URL: " url

status=$(curl -s -o /dev/null -w "%{http_code}" "$url")

if [ "$status" -eq 200 ]
then
    echo "Website is UP"
else
    echo "Website returned status code: $status"
fi

#!/bin/bash

read -p "Enter URL: " url

status=$(curl -s -o /dev/null -w "%{http_code}" --max-time 10 "$url")

if [ "$status" -eq 200 ]
then
    echo "URL: $url"
    echo "Status: UP"
    echo "HTTP Code: $status"

elif [ "$status" -ge 300 ] && [ "$status" -lt 400 ]
then
    echo "URL: $url"
    echo "Status: REDIRECT"
    echo "HTTP Code: $status"

elif [ "$status" -ge 400 ] && [ "$status" -lt 500 ]
then
    echo "URL: $url"
    echo "Status: CLIENT ERROR"
    echo "HTTP Code: $status"

elif [ "$status" -ge 500 ]
then
    echo "URL: $url"
    echo "Status: SERVER ERROR"
    echo "HTTP Code: $status"

else
    echo "Unable to reach URL."
    exit 1
fi

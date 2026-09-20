#!/bin/bash

read -p "Enter URL: " url

echo "Checking response time"

if ! curl -s --head --max-time 10 "$url" > /dev/null
then
    echo "Unable to reach $url"
    exit 1
fi

response_time=$(curl -s -o /dev/null -w "%{time_total}" --max-time 10 "$url")

echo "URL: $url"
echo "Response Time: ${response_time} seconds"

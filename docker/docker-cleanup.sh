#!/bin/bash

echo "Docker Cleanup"
echo "--------------"

echo
echo "Stopped containers:"
docker ps -a --filter "status=exited"

echo
echo "Unused images:"
docker images --filter "dangling=true"

echo
read -p "Do you want to remove stopped containers and dangling images? (y/n): " choice

if [ "$choice" = "y" ]
then
    echo
    echo "Removing stopped containers..."
    docker container prune -f

    echo
    echo "Removing dangling images..."
    docker image prune -f

    echo
    echo "Docker cleanup completed."
else
    echo "Cleanup cancelled."
fi

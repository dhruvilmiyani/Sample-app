#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(sudo docker ps -a -q)

if [ -n "$containerid" ]; then 
    sudo docker rm -f "$containerid"
    sudo docker rmi $(docker images -f "dangling=true" -q)
else
    echo "No container running"
fi

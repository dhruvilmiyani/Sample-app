#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(sudo docker ps -q)
imageid=$(sudo docker images -q)

if [ -n "$containerid"] || [ -n "$imageid" ] ; then 
    sudo docker rm -f "$containerid"
    sudo docker rmi -f "$imageid"
else
    echo "No container running"
fi
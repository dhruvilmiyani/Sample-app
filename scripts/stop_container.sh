#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(sudo docker ps -q)

if [ -n "$containerid" ]; then
    sudo docker rm -f "$containerid"
else
    echo "No container running"
fi
#!/bin/bash
set -e

# Stop the running container (if any)
if [ -n "$containerid" ]; then
    sudo docker rm -f "$containerid"
else
    echo "No container running"
fi
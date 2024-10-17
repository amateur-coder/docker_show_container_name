#!/bin/bash

# Fetch container details from Docker socket
DOCKERINFO=$(curl -s --unix-socket /run/docker.sock http://docker/containers/$HOSTNAME/json)

# Extract the container's name (or relevant part of the name)
ID=$(python3 -c "import sys, json; print(json.loads(sys.argv[1])[\"Name\"].split(\"_\")[-1])" "$DOCKERINFO")

# Output the details
echo "This is node info $DOCKERINFO"
echo "This is node $ID"



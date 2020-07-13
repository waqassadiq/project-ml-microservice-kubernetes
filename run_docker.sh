#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build . --tag qasibeat/project4attempt2
# Step 2: 
# List docker images
docker image ls
# Step 3: 
# Run flask app
sudo docker run --name qasibeat/project4attempt2 -p 8000:80 qasibeat/project4attempt2
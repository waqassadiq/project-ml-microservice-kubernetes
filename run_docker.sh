#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build . --tag project4_attempt_1
# Step 2: 
# List docker images
docker image ls
# Step 3: 
# Run flask app
sudo docker run --name project4_attempt_1 -p 8000:80 project4_attempt_1
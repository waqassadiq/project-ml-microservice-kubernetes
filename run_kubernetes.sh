#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=qasibeat/project4attempt2

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project4attempt2 --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment project4attempt2 --type=LoadBalancer --port=8000 --target-port=80

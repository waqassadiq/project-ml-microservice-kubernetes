#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=docker.io/qasibeat/project4attempt2

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project4attempt2 --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment project4attempt2 --type=LoadBalancer --port=8000 --target-port=80

# Step 5: by waqas
# adding port forward to the the prediction running and get access to it
# after step 4, run thee following command manually
# kubectl port-forward project4attempt2-56f6f56648-xxt7b  8000:80
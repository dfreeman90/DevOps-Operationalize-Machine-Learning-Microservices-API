#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=dfreeman90/mlprojectapi

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlprojectapi --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
# kubectl expose deployment mlprojectapi --type=LoadBalancer --port=8000 --target-port=80
kubectl port-forward deployment/mlprojectapi 8000:80

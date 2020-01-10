#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=dfreeman90/mlprojectapi

# Step 2:  
# Authenticate & tag
# winpty wrapper required since local machine is Windows
echo "Docker ID and Image: $dockerpath"
winpty docker login --username dfreeman90
winpty docker tag mlprojectimage $dockerpath

# Step 3:
# Push image to a docker repository
winpty docker push $dockerpath
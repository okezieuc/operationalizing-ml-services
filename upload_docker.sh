#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=okezieuc/ml-model-microservice

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag ml-model-microservice okezieuc/ml-model-microservice:latest

# Step 3:
# Push image to a docker repository
docker push okezieuc/ml-model-microservice:latest


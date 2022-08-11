#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=okezieuc/ml-model-microservice

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy ml-model-microservice --image=okezieuc/ml-model-microservice:latest

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/ml-model-microservice-768757fc66-8rx7s --address 0.0.0.0 8000:80

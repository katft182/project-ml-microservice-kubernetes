#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=katft/house

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=$dockerpath --port=80 --generator=run-pod/v1 kubernetes-house


# Step 3:
# List kubernetes pods
kubectl describe pods

# Step 4:
# Forward the container port to a host
kubectl port-forward kubernetes-house 8000:80

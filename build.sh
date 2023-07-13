#!/bin/bash

# Set the necessary variables
IMAGE_NAME="my-react-app"
TAG="latest"

# Remove any existing Docker image
docker rmi -f $IMAGE_NAME:$TAG

# Build the Docker image
docker build -t $IMAGE_NAME:$TAG .

# Verify the image was built successfully
if [ $? -eq 0 ]; then
    echo "Docker image built successfully: $IMAGE_NAME:$TAG"
else
    echo "Failed to build Docker image"
fi

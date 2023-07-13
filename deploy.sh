#!/bin/bash

# Set the necessary variables
IMAGE_NAME="my-react-app"
TAG="latest"
CONTAINER_NAME="my-react-container"
PORT="8080"

# Stop and remove any existing container
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME

# Run the Docker container
docker run -d -p 9000:8080 $CONTAINER_NAME $IMAGE_NAME:8080

# Verify the container was deployed successfully
if [ $? -eq 0 ]; then
    echo "Docker container deployed successfully: $CONTAINER_NAME"
else
    echo "Failed to deploy Docker container"
fi


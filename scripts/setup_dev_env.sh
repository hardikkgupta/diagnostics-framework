#!/bin/bash

# Exit on error
set -e

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Please install Docker first."
    exit 1
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose is not installed. Please install Docker Compose first."
    exit 1
fi

# Build and start the development environment
echo "Building and starting the development environment..."
docker-compose up -d

# Enter the development container
echo "Entering the development container..."
docker-compose exec dev bash

# Note: The container will be running in the background
# To stop it, run: docker-compose down 
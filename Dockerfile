FROM ubuntu:20.04

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install essential build tools and dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    gcc-arm-linux-gnueabihf \
    g++-arm-linux-gnueabihf \
    libi2c-dev \
    libspi-dev \
    libpci-dev \
    libmdio-dev \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Create build directory
RUN mkdir -p build

# Set environment variables
ENV PATH="/usr/local/bin:${PATH}"
ENV CC=arm-linux-gnueabihf-gcc
ENV CXX=arm-linux-gnueabihf-g++

# Default command
CMD ["/bin/bash"] 
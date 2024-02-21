# Accept build arguments for the base image and its tag
ARG BASE_IMAGE=nvcr.io/nvidia/tritonserver
ARG BASE_TAG=24.01-py3-igpu

# Use the specified base image and tag
FROM ${BASE_IMAGE}:${BASE_TAG}

# Install additional packages. Adjust these commands based on what you need.
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libstdc++6 \
    && rm -rf /var/lib/apt/lists/*


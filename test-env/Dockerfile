FROM ubuntu:latest

# Set working directory
WORKDIR /app

# Install basic utilities
# RUN apt-get update && apt-get install -y \
#     git \
#     zsh \
#     curl \
#     wget \
#     vim \
#     build-essential \
#     && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y sudo apt-utils \
  && rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

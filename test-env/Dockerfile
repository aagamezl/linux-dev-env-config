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

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

# Copy scripts and make them executable
# COPY install/terminal/*.sh /app/install/terminal/
# COPY bin/quiirus /app/bin/
# COPY defaults/zsh/aliases /app/defaults/zsh/
# COPY defaults/zsh/shell /app/defaults/zsh/
# COPY configs/vscode.json /app/configs/

# Make scripts executable
RUN chmod +x /app/install/terminal/*.sh \
    && chmod +x /app/bin/quiirus

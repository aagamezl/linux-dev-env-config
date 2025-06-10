#!/bin/bash

source "../bin/utils/colors.sh"

# Rebuild the Docker image
echo "${YELLOW}Rebuilding Docker image...${NC}"
docker build -t quiirus-test-env .

# Remove the old container if it exists
echo "${YELLOW}Removing old container...${NC}"

# Remove the container if it exists
if docker ps -a --format '{{.Names}}' | grep -q quiirus-test-env; then
  docker rm -f quiirus-test-env || true
fi

# Run the container
echo "${YELLOW}Running container...${NC}"
sudo ./start.sh

#!/bin/bash

# SOURCE_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
# SOURCE_DIR="$(dirname "../${BASH_SOURCE[0]}")"
SOURCE_DIR="../"

echo "Starting Quiirus Test Environment..."

echo "Source directory: ${SOURCE_DIR}"

# Run the container
docker run -it --rm -v ${SOURCE_DIR}:/app quiirus-test-env bash

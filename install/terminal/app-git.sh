#!/bin/bash

# Import utility functions
source "./bin/utils/colors.sh"

echo -e "${YELLOW}Installing Git...${NC}"
sudo apt install -y git

echo -e "${GREEN}Git installed successfully!${NC}"

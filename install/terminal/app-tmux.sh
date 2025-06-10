#!/bin/bash

# Import utility functions
source "./bin/utils/colors.sh"

echo -e "${YELLOW}Installing tmux...${NC}"
sudo apt install -y tmux
    
create_backup "$HOME/.tmux.conf"

echo -e "${GREEN}tmux installed successfully!${NC}"


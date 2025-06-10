#!/bin/bash

# Import utility functions
source "./bin/utils/colors.sh"

echo -e "${YELLOW}Installing Zsh...${NC}"
sudo apt install -y zsh

# Set Zsh as default shell
echo -e "${YELLOW}Setting Zsh as default shell...${NC}"
chsh -s `which zsh`

# Create backup of existing .zshrc
create_backup "$HOME/.zshrc"

# Install Zsh plugins
source "./app-zsh-plugins.sh"

echo -e "${GREEN}Zsh and related tools installed successfully!${NC}"

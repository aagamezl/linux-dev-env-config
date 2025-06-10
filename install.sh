#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Import utility functions
source "/utils/colors.sh"
source "/utils/error-report.sh"

# Function update   System
update_system() {
  echo -e "${YELLOW}Updating System...${NC}"
  sudo apt update && sudo apt upgrade -y || error_exit "Failed to update System"
}

echo -e "${GREEN}Starting Development Environment Setup...${NC}"

# Update System
update_system

# Install Core Tools
echo -e "${YELLOW}Installing Core Tools...${NC}"
source "install/terminal/app-git.sh" || error_exit "Failed to install Git"
source "install/terminal/app-lazygit.sh" || error_exit "Failed to install Lazygit"

source "install/terminal/app-zsh.sh" || error_exit "Failed to install Zsh"
source "install/terminal/app-oh-my-zsh.sh" || error_exit "Failed to install Oh My Zsh"
source "install/terminal/app-powerlevel10k.sh" || error_exit "Failed to install Powerlevel10k"
source "../install/terminal/app-tmux.sh" || error_exit "Failed to install tmux"

# Install Desktop Tools
echo -e "${YELLOW}Installing Desktop Tools...${NC}"
source "install/desktop/app-brave.sh" || error_exit "Failed to install Brave"
source "install/desktop/app-vscode.sh" || error_exit "Failed to install Visual Studio Code"

# Install Development Tools
echo -e "${YELLOW}Installing Development Tools...${NC}"
source "install/tools/docker.sh" || error_exit "Failed to install Docker"
source "install/tools/docker-compose.sh" || error_exit "Failed to install Docker Compose"
source "install/terminal/app-lazydocker.sh" || error_exit "Failed to install LazyDocker"

echo -e "${GREEN}Development environment setup completed successfully!${NC}"
echo -e "${YELLOW}Please log out and back in for some changes to take effect.${NC}"

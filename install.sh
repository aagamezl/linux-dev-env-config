#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Import utility functions
source "./bin/utils/colors.sh"
source "./bin/utils/error-report.sh"

# Function update   System
update_system() {
  echo -e "${YELLOW}Updating System...${NC}"
  sudo apt update && sudo apt upgrade -y || error_exit "Failed to update System"
}

echo -e "${GREEN}Starting Development Environment Setup...${NC}"

# Update System
# update_system

# Install Core Tools
echo -e "${YELLOW}Installing Core Tools...${NC}"
source "install/terminal/app-git.sh" || error_exit "Failed to install Git"

source "install/terminal/app-zsh.sh" || error_exit "Failed to install Zsh"
source "install/terminal/app-zsh-pluggins.sh" || error_exit "Failed to install Zsh plugins"
source "install/terminal/app-oh-my-zsh.sh" || error_exit "Failed to install Oh My Zsh"
source "install/terminal/app-powerlevel10k.sh" || error_exit "Failed to install Powerlevel10k"
source "install/terminal/app-tmux.sh" || error_exit "Failed to install tmux"

# Install Desktop Tools
echo -e "${YELLOW}Installing Desktop Tools...${NC}"
source "install/desktop/app-brave.sh" || error_exit "Failed to install Brave"
source "install/desktop/app-vscode.sh" || error_exit "Failed to install Visual Studio Code"
source "install/desktop/optional/app-windsurf.sh" || error_exit "Failed to install Windsurf"
source "install/desktop/optional/app-zed.sh" || error_exit "Failed to install Zed"

# Install Development Tools
echo -e "${YELLOW}Installing Development Tools...${NC}"
source "install/tools/docker.sh" || error_exit "Failed to install Docker"
source "install/tools/docker-compose.sh" || error_exit "Failed to install Docker Compose"

source "install/terminal/app-lazygit.sh" || error_exit "Failed to install Lazygit"
source "install/terminal/app-lazydocker.sh" || error_exit "Failed to install Lazydocker"

# Fix GNOME keybindings
source "install/desktop/fix-gnome-keybindings.sh" || error_exit "Failed to fix GNOME keybindings"

# Set GNOME settings
source "install/desktop/set-gnome-settings.sh" || error_exit "Failed to set GNOME settings"


# Fix VS Code keybindings
source "defaults/vscode/fix-keybindings.sh" || error_exit "Failed to fix VS Code keybindings"

# Fix VS Code settings
source "defaults/vscode/fix-settings.sh" || error_exit "Failed to fix VS Code settings"

# Install fonts
source "install/fonts.sh" || error_exit "Failed to install fonts"

echo -e "${GREEN}Development environment setup completed successfully!${NC}"
echo -e "${YELLOW}Please log out and back in for some changes to take effect.${NC}"

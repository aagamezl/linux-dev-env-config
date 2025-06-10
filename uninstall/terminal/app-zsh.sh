#!/bin/bash

source "../../bin/utils/create-backup.sh"
source "../../bin/utils/colors.sh"
source "../../bin/utils/error-report.sh"

echo -e "${YELLOW}Uninstalling Zsh and related tools...${NC}"

# Remove Zsh
sudo apt remove -y zsh

# Remove Oh My Zsh
if [ -d "$HOME/.oh-my-zsh" ]; then
    rm -rf "$HOME/.oh-my-zsh"
fi

# Remove Powerlevel10k
if [ -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
    rm -rf "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
fi

# Remove Zsh plugins
if [ -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
    rm -rf "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
fi
if [ -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
    rm -rf "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
fi

# Restore backed up .zshrc
create_backup "$HOME/.zshrc"
latest_backup=$(ls -t "$HOME/.zshrc"-* 2>/dev/null | head -n 1)
if [ -n "$latest_backup" ]; then
    echo -e "${YELLOW}Restoring .zshrc from backup...${NC}"
    cp "$latest_backup" "$HOME/.zshrc"
    rm "$latest_backup"
fi

echo -e "${GREEN}Zsh and related tools uninstalled successfully!${NC}"
#!/bin/bash

source "./bin/utils/colors.sh"

echo "${YELLOW}Fixing VS Code keybindings...${NC}"

# Fix VS Code keybindings using Windows defaults
if [ ! -f "$HOME/.config/Code/User/keybindings.json" ]; then
  cp configs/vscode/keybindings.json "$HOME/.config/Code/User/keybindings.json"
fi

echo "${GREEN}VS Code keybindings fixed successfully!${NC}"


#!/bin/bash

source "./bin/utils/colors.sh"

echo "${YELLOW}Fixing VS Code settings...${NC}"

# Fix VS Code settings
if [ ! -f "$HOME/.config/Code/User/settings.json" ]; then
  cp configs/vscode/settings.json "$HOME/.config/Code/User/settings.json"
fi

echo "${GREEN}VS Code settings fixed successfully!${NC}"

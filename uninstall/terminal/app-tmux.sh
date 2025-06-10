#!/bin/bash

# Import utility functions
source "../../bin/utils/get-timestamp.sh"
source "../../bin/utils/create-backup.sh"
source "../../bin/utils/colors.sh"
source "../../bin/utils/error-report.sh"

echo -e "${YELLOW}Uninstalling tmux...${NC}"
sudo apt remove -y tmux

create_backup "$HOME/.tmux.conf"
latest_backup=$(ls -t "$HOME/.tmux.conf"-* 2>/dev/null | head -n 1)

if [ -n "$latest_backup" ]; then
  echo -e "${YELLOW}Restoring .tmux.conf from backup...${NC}"
  cp "$latest_backup" "$HOME/.tmux.conf"
  rm "$latest_backup"
fi

echo -e "${GREEN}tmux uninstalled successfully!${NC}"

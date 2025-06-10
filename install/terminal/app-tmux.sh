#!/bin/bash

# Import utility functions
source "../../bin/utils/get-timestamp.sh"
source "../../bin/utils/create-backup.sh" 
source "../../bin/utils/colors.sh"
source "../../bin/utils/error-report.sh"

echo -e "${YELLOW}Installing tmux...${NC}"
sudo apt install -y tmux || error_exit "Failed to install tmux"
    
create_backup "$HOME/.tmux.conf"

echo -e "${GREEN}tmux installed successfully!${NC}"


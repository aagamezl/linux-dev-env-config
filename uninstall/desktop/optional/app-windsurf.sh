# Import utility functions
source "../../bin/utils/colors.sh"

echo -e "${YELLOW}Uninstalling Windsurf...${NC}"

sudo apt purge -y windsurf || error_exit "Failed to uninstall Windsurf"
sudo rm /etc/apt/sources.list.d/windsurf.list || error_exit "Failed to remove Windsurf repository"
sudo rm /usr/share/keyrings/windsurf-stable-archive-keyring.gpg || error_exit "Failed to remove Windsurf keyring"

echo -e "${GREEN}Windsurf uninstalled successfully!${NC}"

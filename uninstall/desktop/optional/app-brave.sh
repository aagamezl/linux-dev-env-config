# Import utility functions
source "../../bin/utils/colors.sh"

echo -e "${YELLOW}Uninstalling Brave...${NC}"

sudo apt remove --purge -y brave-browser || error_exit "Failed to uninstall Brave"
sudo rm /etc/apt/sources.list.d/brave-browser-release.list || error_exit "Failed to remove Brave repository"
sudo rm /usr/share/keyrings/brave-browser-*.gpg || error_exit "Failed to remove Brave keyring"

echo -e "${GREEN}Brave uninstalled successfully!${NC}"
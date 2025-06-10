# Import utility functions
source "../../bin/utils/colors.sh"

echo -e "${YELLOW}Uninstalling Git...${NC}"
sudo apt remove -y git

echo -e "${GREEN}Git uninstalled successfully!${NC}"

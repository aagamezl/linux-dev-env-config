# Import utility functions
source "../../bin/utils/colors.sh"

echo -e "${YELLOW}Uninstalling Docker Compose...${NC}"

# Remove Docker Compose
sudo rm -f /usr/local/bin/docker-compose

echo -e "${GREEN}Docker Compose uninstalled successfully!${NC}"

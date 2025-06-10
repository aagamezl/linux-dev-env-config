# Import utility functions
source "../../bin/utils/colors.sh"
  
echo -e "${YELLOW}Uninstalling Docker and related tools...${NC}"
    
# Remove Docker
sudo apt remove -y docker.io
sudo groupdel docker || true  # Remove docker group if exists

source "./docker-compose.sh"

# Remove Lazydocker
sudo rm -f /usr/local/bin/lazydocker

echo -e "${GREEN}Docker and related tools uninstalled successfully!${NC}"

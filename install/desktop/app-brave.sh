# Import utility functions
source "../../bin/utils/colors.sh"
source "../../bin/utils/error-report.sh"

echo -e "${YELLOW}Installing Brave Browser...${NC}"
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

echo -e "${YELLOW}Updating system packages...${NC}"
sudo apt update -y

echo -e "${YELLOW}Installing Brave Browser...${NC}"
sudo apt install -y brave-browser

echo -e "${GREEN}Brave Browser installed successfully!${NC}"
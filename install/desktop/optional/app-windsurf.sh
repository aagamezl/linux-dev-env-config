# Import utility functions
source "../../bin/utils/get-timestamp.sh"
source "../../bin/utils/create-backup.sh"
source "../../bin/utils/colors.sh"
source "../../bin/utils/error-report.sh"

echo -e "${YELLOW}Installing Windsurf...${NC}"
curl -fsSL "https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/windsurf.gpg" | sudo gpg --dearmor -o /usr/share/keyrings/windsurf-stable-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/windsurf-stable-archive-keyring.gpg arch=amd64] https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/apt stable main" | sudo tee /etc/apt/sources.list.d/windsurf.list >/dev/null

sudo apt update -y
sudo apt install -y windsurf

echo -e "${GREEN}Windsurf installed successfully!${NC}" 
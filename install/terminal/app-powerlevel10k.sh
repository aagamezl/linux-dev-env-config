# Import utility functions
source "../../bin/utils/colors.sh"
source "../../bin/utils/error-report.sh"

echo -e "${YELLOW}Installing Powerlevel10k...${NC}"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k || error_exit "Failed to install Powerlevel10k"

echo -e "${GREEN}Powerlevel10k installed successfully!${NC}"
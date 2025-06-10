# Import utility functions
source "../../bin/utils/get-timestamp.sh"
source "../../bin/utils/create-backup.sh"
source "../../bin/utils/colors.sh"
source "../../bin/utils/error-report.sh"

echo -e "${YELLOW}Installing Zsh plugins...${NC}"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions || error_exit "Failed to install zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting || error_exit "Failed to install zsh-syntax-highlighting"

echo -e "${GREEN}Zsh plugins installed successfully!${NC}"
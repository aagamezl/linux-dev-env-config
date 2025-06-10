# Import utility functions
source "../../bin/utils/get-timestamp.sh"
source "../../bin/utils/create-backup.sh"
source "../../bin/utils/colors.sh"
source "../../bin/utils/error-report.sh"

echo -e "${YELLOW}Installin g Oh My Zsh...${NC}"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended || error_exit "Failed to install Oh My Zsh"

echo -e "${GREEN}Oh My Zsh installed successfully!${NC}"

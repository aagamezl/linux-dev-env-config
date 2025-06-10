# Import utility functions
source "../utils/colors.sh"
  
# Function to display error message and exit
error_exit() {
  echo -e "${RED}Error: $1${NC}"
  exit 1
}
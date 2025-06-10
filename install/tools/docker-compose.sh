# Import utility functions
source "./bin/utils/colors.sh"

echo -e "${YELLOW}Installing Docker Compose...${NC}"

# Download and install the Docker Compose CLI plugin
DOCKER_COMPOSE_VERSION=$(curl -s "https://api.github.com/repos/docker/compose/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/v$DOCKER_COMPOSE_VERSION/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose

# Apply executable permissions to the binary:
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

echo -e "${GREEN}Docker Compose installed successfully!${NC}"
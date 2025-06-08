echo "Installing Zsh"

sudo apt install zsh -y

echo "Zsh Installed"

echo "Set Zsh As Default Shell"

chsh -s `which zsh`

echo "Zsh Is Default Shell Now"
#!/bin/bash

set -e

echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Quiirus..."
rm -rf ~/.local/share/quiirus

git clone https://github.com/aagamezl/quiirus.git ~/.local/share/quiirus >/dev/null

if [[ $QUIIRUS_REF != "master" ]]; then
	cd ~/.local/share/quiirus
	git fetch origin "${QUIIRUS_REF:-stable}" && git checkout "${QUIIRUS_REF:-stable}"
	cd -
fi

echo "Installation starting..."

source ~/.local/share/quiirus/install.sh
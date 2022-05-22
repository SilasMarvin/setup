#!/bin/bash
sudo apt upgrade
sudo apt install zsh
sudo apt install neovim

# Install Oh My ZSH
rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

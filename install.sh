#!/bin/bash
sudo apt upgrade
sudo apt install zsh
sudo apt install neovim

# Install Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install ZSH Synatx Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# Install Pure Prompt
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
# Install SpaceVim
curl -sLf https://spacevim.org/install.sh | bash

# Copy .SpaceVim Toml and .zshrc
rm ~/.SpaceVim.d/init.toml 
curl https://raw.githubusercontent.com/SilasMarvin/setup/main/spacevim.toml -O > ~/.SpaceVim.d/init.toml 
rm ~/.zshrc
curl https://raw.githubusercontent.com/SilasMarvin/setup/main/zshrc -O > ~/.zshrc 

chsh -s $(which zsh)
source ~/.zshrc

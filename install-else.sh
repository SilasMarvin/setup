#!/bin/bash

# Install ZSH Synatx Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# Install Pure Prompt
rm -rf ~/.zsh
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
# Install SpaceVim
curl -sLf https://spacevim.org/install.sh | bash

# Copy .SpaceVim Toml and .zshrc
rm ~/.SpaceVim.d/init.toml 
curl https://raw.githubusercontent.com/SilasMarvin/setup/master/spacevim.toml -o ~/.SpaceVim.d/init.toml 
rm ~/.zshrc
curl https://raw.githubusercontent.com/SilasMarvin/setup/master/zshrc -o ~/.zshrc

chsh -s $(which zsh)
zsh

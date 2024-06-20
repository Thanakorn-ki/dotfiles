#!/usr/bin/env bash

brew install stow
brew install zsh
brew install neovim

# create local bin
mkdir -p ~/.local/bin

# change default shell
chsh -s $(which zsh)

# install fonts
rm -rf /tmp/fonts && git clone https://github.com/ryanoasis/nerd-fonts --depth=1 /tmp/fonts && /tmp/fonts/install.sh && rm -rf /tmp/fonts

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# install gvm
zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

# install python3
brew install python

# install black formatter for python
pip3 install black

# install python version manager
brew install pyenv


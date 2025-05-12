#!/usr/bin/env bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# https://github.com/shivammathur/homebrew-php
brew tap shivammathur/php

brew update

brew install --cask iterm2
brew install --cask raycast
brew install --cask orbstack
brew install --cask anydesk
brew install fzf
brew install nvm
brew install php
brew install tmux
brew install php@8.2
# p10k configure
brew install powerlevel10k
brew install neovim
brew install pyenv
brew install icdiff
brew install ctag
brew install zsh-syntax-highlighting


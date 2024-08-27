#!/usr/bin/env bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update

brew install --cask iterm2
brew install --cask raycast
brew install --cask orbstack
brew install fzf
brew install nvm
brew install php
brew install tmux
brew install php@8.2
# p10k configure
brew install powerlevel10k

# https://github.com/shivammathur/homebrew-php
brew tap shivammathur/php

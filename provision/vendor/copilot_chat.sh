#!/usr/bin/env bash

mkdir -p ~/.config/nvim/pack/copilotchat/start
cd ~/.config/nvim/pack/copilotchat/start

git clone https://github.com/github/copilot.vim
git clone https://github.com/nvim-lua/plenary.nvim

git clone https://github.com/CopilotC-Nvim/CopilotChat.nvim

# Enable run
# nvim :PlugInstall
# nvim :Copilot setup


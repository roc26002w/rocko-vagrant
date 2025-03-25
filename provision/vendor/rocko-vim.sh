#!/usr/bin/env bash

git clone https://github.com/roc26002w/rocko-vim.git -- --branch macos "${HOME_PATH}/.config/rocko-vim"

# zsh
ln -sf "${HOME_PATH}/.config/rocko-vim/oh-my-zsh/.zshrc" "${HOME_PATH}/.zshrc"
ln -sf "${HOME_PATH}/.config/rocko-vim/oh-my-zsh/.theme" "${HOME_PATH}/.oh-my-zsh/custom/themes/.theme"

# tmux
ln -sf "${HOME_PATH}/.config/rocko-vim/tmux/.tmux.conf" "${HOME_PATH}/.tmux.conf"

# git
ln -sf "${HOME_PATH}/.config/rocko-vim/git/.gitconfig" "${HOME_PATH}/.gitconfig"

# nvim
ln -sf "${HOME_PATH}/.config/rocko-vim/neovim/.config/nvim" "${HOME_PATH}/.config/nvim"

# tig
ln -sf "${HOME_PATH}/.config/rocko-vim/tig/.tigrc" "${HOME_PATH}/.tigrc"


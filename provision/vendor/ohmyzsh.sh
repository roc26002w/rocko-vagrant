#!/usr/bin/env bash
echo '======= Install zsh.sh ======'
brew install zsh

# shell default zsh
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)

echo '======= Install ohmyzsh.sh ======'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

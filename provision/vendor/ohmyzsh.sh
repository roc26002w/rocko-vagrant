#!/usr/bin/env bash
echo '======= Install zsh.sh ======'
brew install zsh

# shell default zsh
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)

echo '======= Install ohmyzsh.sh ======'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-lazyload
git clone https://github.com/qoomon/zsh-lazyload $ZSH_CUSTOM/plugins/zsh-lazyload
# p10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

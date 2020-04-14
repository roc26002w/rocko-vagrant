#!/usr/bin/env bash
echo '======= Install rocko environment ======'

if [ -f /home/vagrant/.features/rocko-environment ]
then
    echo "rocko-environment already installed."
    exit 0
fi

touch /home/vagrant/.features/rocko-environment
chown -Rf vagrant:vagrant /home/vagrant/.features

# Install rocko-environment
git clone git@github.com:roc26002w/rocko-vim.git /home/vagrant/code/

ln -s /home/vagrant/config/rocko-vim/oh-my-zsh/.zshrc /home/vagrant/.zshrc
ln -s /home/vagrant/config/rocko-vim/neovim/.config/nvim /home/vagrant/.config/

#!/usr/bin/env bash
echo '======= Install rocko environment ======'

if [ -f /home/ubuntu/.features/rocko-environment ]
then
    echo "rocko-environment already installed."
    exit 0
fi

touch /home/ubuntu/.features/rocko-environment
chown -Rf ubuntu:ubuntu /home/ubuntu/.features

# Install rocko-environment
su ubuntu -c 'git clone https://github.com/roc26002w/rocko-vim.git /home/ubuntu/.config/rocko-vim'
su ubuntu -c 'cd /home/ubuntu/.config/rocko-vim && git checkout multipass'

su ubuntu -c 'ln -fs /home/ubuntu/.config/rocko-vim/oh-my-zsh/.zshrc /home/ubuntu/.zshrc'
su ubuntu -c 'ln -fs /home/ubuntu/.config/rocko-vim/neovim/.config/nvim /home/ubuntu/.config/nvim'
su ubuntu -c 'ln -fs /home/ubuntu/.config/rocko-vim/oh-my-zsh/.theme /home/ubuntu/.oh-my-zsh/custom/themes/.theme'
su ubuntu -c 'ln -sf /home/ubuntu/.config/rocko-vim/tig/.tigrc /home/ubuntu/.tigrc'
su ubuntu -c 'ln -sf /home/ubunut/.config/rocko-vim/git/.gitconfig /home/ubuntu/.gitconfig'

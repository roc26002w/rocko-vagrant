#!/usr/bin/env bash
echo '======= Install tmux.sh ======'

if [ -f /home/ubuntu/.features/tmux ]
then
    echo "tmux already installed."
    exit 0
fi

touch /home/ubuntu/.features/tmux

# Install tmux
apt-get install tmux

# setting tmux theme
git clone https://github.com/gpakosz/.tmux.git /home/ubuntu/.tmux

ln -fs /home/ubuntu/.config/rocko-vim/tmux/.tmux.conf /home/ubuntu/.tmux.conf

cp /home/ubuntu/.tmux/.tmux.conf.local /home/ubuntu/

git clone https://github.com/tmux-plugins/tpm /home/ubuntu/.tmux/plugins/tpm

chown -Rf ubuntu:ubuntu /home/ubuntu/

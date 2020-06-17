#!/usr/bin/env bash

echo '======= Install fzf.sh ======'
if [ -f /home/ubuntu/.features/fzf ]
then
    echo "fzf already installed."
    exit 0
fi

touch /home/ubuntu/.features/fzf
chown -Rf ubuntu:ubuntu /home/ubuntu/.features

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git /home/ubuntu/.fzf

/home/ubuntu/.fzf/install


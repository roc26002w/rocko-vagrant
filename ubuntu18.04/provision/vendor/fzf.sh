#!/usr/bin/env bash

echo '======= Install fzf.sh ======'
if [ -f /home/vagrant/.features/fzf ]
then
    echo "fzf already installed."
    exit 0
fi

touch /home/vagrant/.features/fzf
chown -Rf vagrant:vagrant /home/vagrant/.features

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git /home/vagrant/.fzf

/home/vagrant/.fzf/install


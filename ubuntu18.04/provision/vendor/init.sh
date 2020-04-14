#!/usr/bin/env bash

echo '======= Install init.sh ======'

mkdir /home/vagrant/.features

apt-get update

apt-get install -y curl \
                   tmux \
                   htop \
                   silversearcher-ag \
                   tig \
                   ctags \
                   zsh \
                   git \
                   git-lfs \
                   unzip

mkdir /home/vagrant/code

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
chown -R vagrant:vagrant code

git config --global user.email "roc26002w@gmail.com"
git config --global user.name "Rocko"

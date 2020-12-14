#!/usr/bin/env bash

echo '======= Install init.sh ======'

mkdir /home/ubuntu/.features

apt-get update

apt-get install -y curl \
                   htop \
                   silversearcher-ag \
                   tig \
                   ctags \
                   zsh \
                   git \
                   git-lfs \
                   unzip

mkdir /home/ubuntu/code
chown -R ubuntu:ubuntu code

# auto gen ssh key
ssh-keygen -f /home/ubuntu/.ssh/id_rsa -t rsa -N ''

git config --global user.email "roc26002w@gmail.com"
git config --global user.name "Rocko"
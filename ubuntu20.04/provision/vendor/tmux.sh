#!/usr/bin/env bash
echo '======= Install tmux.sh ======'

if [ -f /home/vagrant/.features/tmux ]
then
    echo "tmux already installed."
    exit 0
fi

touch /home/vagrant/.features/tmux
chown -Rf vagrant:vagrant /home/vagrant/.features

# Install tmux
apt-get install tmux

# setting tmux theme
git clone https://github.com/gpakosz/.tmux.git /home/vagrant/.tmux
ln -s -f /home/vagrant/.tmux/.tmux.conf /home/vagrant/.tmux.conf
cp /home/vagrant/.tmux/.tmux.conf.local /home/vagrant/

echo '======= Install neovim.sh ======'
if [ -f /home/vagrant/.features/neovim ]
then
    echo "neovim already installed."
    exit 0
fi

touch /home/vagrant/.features/neovim
chown -Rf vagrant:vagrant /home/vagrant/.features

apt-get install -y neovim

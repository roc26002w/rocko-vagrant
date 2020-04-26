echo '======= Install neovim.sh ======'
if [ -f /home/vagrant/.features/neovim ]
then
    echo "neovim already installed."
    exit 0
fi

touch /home/vagrant/.features/neovim
chown -Rf vagrant:vagrant /home/vagrant/.features

apt-get install -y software-properties-common

add-apt-repository ppa:neovim-ppa/stable

apt-get update

apt-get install -y neovim \
                   python-dev \
                   python3-dev \
                   python3-pip

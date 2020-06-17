echo '======= Install neovim.sh ======'
if [ -f /home/ubuntu/.features/neovim ]
then
    echo "neovim already installed."
    exit 0
fi

touch /home/ubuntu/.features/neovim

apt-get install -y neovim

curl -fLo /home/ubuntu/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

chown -Rf ubuntu:ubuntu /home/ubuntu/

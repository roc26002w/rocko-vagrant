echo '======= Install neovim.sh ======'
if [ -f ${HOME_PATH}/.features/neovim ]
then
    echo "neovim already installed."
    exit 0
fi

touch ${HOME_PATH}/.features/neovim

apt-get install -y neovim

curl -fLo ${HOME_PATH}/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/

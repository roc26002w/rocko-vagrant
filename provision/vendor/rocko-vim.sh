#!/usr/bin/env bash
echo '======= Install rocko environment ======'

if [ -f ${HOME_PATH}/.features/rocko-environment ]
then
    echo "rocko-vim config already installed."
    exit 0
fi

touch ${HOME_PATH}/.features/rocko-environment
chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.features

# Install rocko-environment
su ${USER_NAME} -c "git clone https://github.com/roc26002w/rocko-vim.git ${HOME_PATH}/.config/rocko-vim"
su ${USER_NAME} -c "cd ${HOME_PATH}/.config/rocko-vim"

su ${USER_NAME} -c "mkdir ${HOME_PATH}/.config/git"

su ${USER_NAME} -c "ln -sf ${HOME_PATH}/.config/rocko-vim/oh-my-zsh/.zshrc ${HOME_PATH}/.zshrc"
su ${USER_NAME} -c "ln -sf ${HOME_PATH}/.config/rocko-vim/neovim/.config/nvim ${HOME_PATH}/.config/nvim"
su ${USER_NAME} -c "ln -sf ${HOME_PATH}/.config/rocko-vim/oh-my-zsh/.theme ${HOME_PATH}/.oh-my-zsh/custom/themes/.theme"
su ${USER_NAME} -c "ln -sf ${HOME_PATH}/.config/rocko-vim/tig/.tigrc ${HOME_PATH}/.tigrc"
su ${USER_NAME} -c "ln -sf ${HOME_PATH}/.config/rocko-vim/git/.gitconfig ${HOME_PATH}/.gitconfig"
su ${USER_NAME} -c "ln -sf ${HOME_PATH}/.config/rocko-vim/git/.gitmessage.txt ${HOME_PATH}/.config/git/.gitmessage.txt"

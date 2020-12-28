#!/usr/bin/env bash
echo '======= Install ohmyzsh.sh ======'

if [ -f ${HOME_PATH}/.features/oh-my-zsh ]
then
    echo "oh-my-zsh already installed."
    exit 0
fi

touch ${HOME_PATH}/.features/oh-my-zsh

export ZSH_CUSTOM=${HOME_PATH}/.oh-my-zsh/custom
echo "======= ${ZSH_CUSTOM} ==========="

# Install oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git ${HOME_PATH}/.oh-my-zsh
cp ${HOME_PATH}/.oh-my-zsh/templates/zshrc.zsh-template ${HOME_PATH}/.zshrc

# zsh-lazyload
git clone https://github.com/qoomon/zsh-lazyload ${ZSH_CUSTOM}/plugins/zsh-lazyload

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting

# powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM}/themes/powerlevel10k

chsh -s /bin/zsh ${USER_NAME}
chown -R ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.oh-my-zsh
chown ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.zshrc
chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.features

#!/usr/bin/env bash
echo '======= Install ohmyzsh.sh ======'

if [ -f /home/ubuntu/.features/oh-my-zsh ]
then
    echo "oh-my-zsh already installed."
    exit 0
fi

touch /home/ubuntu/.features/oh-my-zsh
chown -Rf ubuntu:ubuntu /home/ubuntu/.features

# Install oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git /home/ubuntu/.oh-my-zsh
cp /home/ubuntu/.oh-my-zsh/templates/zshrc.zsh-template /home/ubuntu/.zshrc
chown ubuntu:ubuntu /home/ubuntu/.zshrc

# zsh-lazyload
git clone https://github.com/qoomon/zsh-lazyload /home/ubuntu/.oh-my-zsh/custom/plugins/zsh-lazyload

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/ubuntu/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git /home/ubuntu/.oh-my-zsh/custom/themes/powerlevel10k

chsh -s /bin/zsh ubuntu
chown -R ubuntu:ubuntu /home/ubuntu/.oh-my-zsh

#!/usr/bin/env bash
echo '======= Install ohmyzsh.sh ======'

if [ -f /home/vagrant/.features/oh-my-zsh ]
then
    echo "oh-my-zsh already installed."
    exit 0
fi

touch /home/vagrant/.features/oh-my-zsh
chown -Rf vagrant:vagrant /home/vagrant/.features

# Install oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git /home/vagrant/.oh-my-zsh
cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc
chown -R vagrant:vagrant /home/vagrant/.oh-my-zsh
chown vagrant:vagrant /home/vagrant/.zshrc
chsh -s /bin/zsh vagrant
git clone https://github.com/qoomon/zsh-lazyload $ZSH_CUSTOM/plugins/zsh-lazyload

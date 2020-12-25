#!/usr/bin/env bash

function checkUserName(){
  echo "=========將設定安裝使用者為 ${USERNAME} 請確認是否安裝? y/n"
  read ans
  answer=${ans,,}
  if [ ${answer:0:1} != 'y' ]
  then
    exit 0
  fi
}

# input has variable
if [ ! -z $1 ]
then
  export USERNAME=$1
fi

# has USERNAME and not input variable
if [[ ! -z ${USERNAME} && -z $1 ]]
then
  checkUserName
fi

# USERNAME not set
if [ -z ${USERNAME} ]
then
  echo "沒有設定 USERNAME "
  exit 0
fi

bash ./provision/vendor/init.sh
bash ./provision/vendor/ohmyzsh.sh
bash ./provision/vendor/docker.sh
bash ./provision/vendor/docker-compose.sh
bash ./provision/vendor/go.sh
bash ./provision/vendor/node.sh
bash ./provision/vendor/fzf.sh
bash ./provision/vendor/php.sh
bash ./provision/vendor/neovim.sh
bash ./provision/vendor/rocko-vim.sh
bash ./provision/vendor/python.sh
bash ./provision/vendor/laradock.sh
bash ./provision/vendor/tmux.sh
bash ./provision/vendor/ansible.sh
bash ./provision/vendor/microk8s.sh

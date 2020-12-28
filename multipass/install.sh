#!/usr/bin/env bash

function inputGitUserEmail(){
  echo "請輸入 git email: "
  read ans
  answer=${ans,,}

  export GIT_USER_MAIL="${answer}"
}

function inputGitUserName(){
  echo "請輸入 git user name: "
  read ans
  answer=${ans,,}

  export GIT_USER_NAME="${answer}"
}

function checkUserName(){
  echo "=========將設定安裝使用者為 ${USER_NAME} 請確認是否安裝? y/n"
  read ans
  answer=${ans,,}

  if [ ${answer:0:1} != 'y' ]
  then
    exit 0
  fi

  export HOME_PATH=/home/${USER_NAME}
}

# input has variable
if [ ! -z $1 ]
then
  export USER_NAME=$1
else
  export USER_NAME=ubuntu
fi

# has USER_NAME and not input variable
if [[ ! -z ${USER_NAME} && -z $1 ]]
then
  inputGitUserEmail
  inputGitUserName
  checkUserName
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
# su - ${USER_NAME} -c "bash ./provision/vendor/ansible.sh"
# su - ${USER_NAME} -c "bash ./provision/vendor/microk8s.sh"

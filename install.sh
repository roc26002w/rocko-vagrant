#!/usr/bin/env bash

export $HOME_PATH = "~/";

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

# has GIT_USER_NAME and not input variable
if [[ ! -z ${GIT_USER_NAME} && -z $1 ]]
then
  inputGitUserEmail
  inputGitUserName
fi

xcode-select --install

bash ./provision/vendor/brew.sh
bash ./provision/vendor/ohmyzsh.sh
bash ./provision/vendor/rocko-vim.sh

# config setting



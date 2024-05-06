#!/bin/bash
OH_MY_BASH="$HOME/.oh-my-bash"
VIM_PLUG="$HOME/.vim/autoload/plug.vim"
# install curl
if [ ! which curl >& /dev/null ]; then 
  echo "curl not exists, installing curl..."
  sudo apt update 
  sudo apt install curl 
fi

if [ ! -d "$OH_MY_BASH" ]; then 
  echo "install oh my bash"
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
fi

if [ ! -f "$VIM_PLUG" ]; then 
  echo "install vim plug"
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

yes | cp -rf .vimrc ~/
yes | cp -rf .bashrc ~/
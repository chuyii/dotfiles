#!/bin/sh

if [ ! -e .vim ]; then
  mkdir .vim
  ln -ns $HOME/dotfiles/.vim $HOME/.vim

  wget https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh -O install.sh
  sh ./install.sh
  rm install.sh

  mkdir .vim/colors
  wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -O .vim/colors/molokai.vim
fi

./link.sh

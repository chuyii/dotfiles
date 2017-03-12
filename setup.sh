#!/bin/sh

if [ ! -d $HOME/dotfiles/.vim ]; then
  mkdir $HOME/dotfiles/.vim
fi

sh $HOME/dotfiles/link.sh

cd $HOME/dotfiles

if [ ! -d $HOME/.vim/bundle ]; then
  wget -q https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh -O install.sh
  sh install.sh
  rm install.sh
fi

if [ ! -d $HOME/dotfiles/.vim/colors ]; then
  mkdir $HOME/dotfiles/.vim/colors
  wget -q https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -O .vim/colors/molokai.vim
fi

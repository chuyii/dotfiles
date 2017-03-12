#!/bin/sh

if [ ! -d $HOME/dotfiles/.vim ]; then
  mkdir $HOME/dotfiles/.vim
fi

sh $HOME/dotfiles/link.sh

if [ ! -d $HOME/dotfiles/.vim/bundle ]; then
  wget -q https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh -O $HOME/dotfiles/install.sh
  sh $HOME/dotfiles/install.sh
  rm $HOME/dotfiles/install.sh
fi

if [ ! -d $HOME/dotfiles/.vim/colors ]; then
  mkdir $HOME/dotfiles/.vim/colors
  wget -q https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -O $HOME/dotfiles/.vim/colors/molokai.vim
fi

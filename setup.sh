#!/bin/sh

if [ ! -d $HOME/dotfiles/.vim ]; then
  mkdir $HOME/dotfiles/.vim
fi

sh $HOME/dotfiles/link.sh

cd $HOME/dotfiles

if [ ! -d $HOME/.cache/dein ]; then
  wget -q https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh
  sh ./installer.sh $HOME/.cache/dein
  rm installer.sh
  REPLACE_HOME=`echo $HOME | sed -e 's:/:\\/:g'`
  sed -i -e "s:{REPLACE_HOME}:$REPLACE_HOME:g" etc/vim_dein.vim
fi

if [ ! -d $HOME/dotfiles/.vim/colors ]; then
  mkdir $HOME/dotfiles/.vim/colors
  wget -q https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -O .vim/colors/molokai.vim
fi

if [ ! -e $HOME/.back.jpg ]; then
  wget -O $HOME/.back.jpg "https://unsplash.com/photos/v7daTKlZzaw/download?force=true"
fi

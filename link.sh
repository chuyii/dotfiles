#!/bin/bash

for file in .??*
do
  [[ "$file" == ".git" ]] && continue
  if [ -e $HOME/$file ]; then
    rm $HOME/$file
  fi
  ln -ns $HOME/dotfiles/$file $HOME/$file
done

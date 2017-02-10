#!/bin/bash

for file in .??*
do
  [[ "$file" == ".git" ]] && continue
  [[ "$file" == ".gitignore" ]] && continue
  if [ -e $HOME/$file ]; then
    rm -rf $HOME/$file
  fi
  ln -ns $HOME/dotfiles/$file $HOME/$file
done

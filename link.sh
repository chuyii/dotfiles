#!/bin/sh

for file in $HOME/dotfiles/.??*
do
  file=`basename $file`
  [ "$file" = ".git" ] && continue
  [ "$file" = ".gitignore" ] && continue
  if [ -e $HOME/$file ]; then
    rm -rf $HOME/$file
  fi
  ln -fns $HOME/dotfiles/$file $HOME/$file
done

ln -fns $HOME/dotfiles/i3 $HOME/.config
ln -fns $HOME/dotfiles/polybar $HOME/.config
ln -fns $HOME/dotfiles/picom.conf $HOME/.config

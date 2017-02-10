if filereadable(expand('$HOME/dotfiles/etc/vim/neobundle'))
  source $HOME/dotfiles/etc/vim/neobundle
endif

if filereadable(expand('$HOME/dotfiles/etc/vim/default'))
  source $HOME/dotfiles/etc/vim/default
endif

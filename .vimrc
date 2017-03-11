if filereadable(expand('$HOME/dotfiles/etc/vim_neobundle'))
  source $HOME/dotfiles/etc/vim_neobundle
endif

if filereadable(expand('$HOME/dotfiles/etc/vim_general'))
  source $HOME/dotfiles/etc/vim_general
endif

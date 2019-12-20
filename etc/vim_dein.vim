"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+={REPLACE_HOME}/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('{REPLACE_HOME}/.cache/dein')
  call dein#begin('{REPLACE_HOME}/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('{REPLACE_HOME}/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('itchyny/lightline.vim')
  call dein#add('junegunn/vim-easy-align')
  call dein#add('mattn/emmet-vim')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('tpope/vim-surround')
  call dein#add('hail2u/vim-css3-syntax')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'itchyny/lightline.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/echodoc', '', 'default'
call neobundle#config('echodoc', {
      \ 'lazy' : 1,
      \ 'autoload' : {
      \ 'insert' : 1,
      \ }})
let g:echodoc_enable_at_startup = 1

" for processing
NeoBundle 'sophacles/vim-processing'
au BufNewFile,BufRead *.pde setf processing

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


scriptencoding utf-8
set encoding=utf-8

" 色分けを有効にする
syntax on

" カラースキームの設定
set t_ut=
colorscheme molokai

" ステータスラインを常時表示する
set laststatus=2

" 折り返しを無効
set nowrap
" スワップファイルを作成しない
set noswapfile

" 検索結果をハイライト表示する
set hlsearch
" 検索で大文字小文字を区別しない
set ignorecase
" ↑検索文字列に大文字小文字が混在していた場合区別する
set smartcase

" 改行時に半角スペースを挿入する
set autoindent
" 自動インデントの際何文字の空白にするか
set shiftwidth=2
" タブの代わりにスペースを入れる
set expandtab
" キーボードでタブを入力したとき何文字の空白にするか
set softtabstop=2
" ファイルを開いたときタブを何文字の空白にするか
set tabstop=2
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
" 行頭以外では 'tabstop' の数だけ空白が挿入される
set smarttab

" カーソルの位置表示を行う
set ruler
" 行番号を表示する
set number

" 入力中のコマンドを表示
set showcmd

" 不可視文字を表示する
set list
set listchars=tab:»-,trail:-,eol:¬,extends:»,precedes:«,nbsp:%

" コマンドラインモードでタブキーによるファイル名の補完を有効にする
set wildmenu

" 現在のモードを表示しない
set noshowmode

vnoremap  <Up>     <nop>
vnoremap  <Down>   <nop>
vnoremap  <Left>   <nop>
vnoremap  <Right>  <nop>
inoremap  <Up>     <nop>
inoremap  <Down>   <nop>
inoremap  <Left>   <nop>
inoremap  <Right>  <nop>
noremap   <Up>     <nop>
noremap   <Down>   <nop>
noremap   <Left>   <nop>
noremap   <Right>  <nop>

set backspace=0

set imdisable

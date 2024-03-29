scriptencoding utf-8
set encoding=utf-8

" 色分けを有効にする
syntax on

" カラースキームの設定
set t_ut= " for tmux
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

set vb t_vb=

set ttimeoutlen=50

" クリップボードの設定
" unnamedplusでclipboard領域と共有する
set clipboard=unnamedplus

" 垂直分割時のバー描画を消す
set fillchars+=vert:\ 

" 背景透過
hi Normal ctermbg=NONE

set printoptions=number:y,left:5pc

let g:lightline = {
  \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
  \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
  \ }

" インサートモードを抜けるときにIME(mozc)をOFFにする
let g:input_toggle = 1
function! Fcitx2en()
   let s:input_status = system("fcitx-remote")
   if s:input_status == 2
      let g:input_toggle = 1
      let l:a = system("fcitx-remote -c")
   endif
endfunction
autocmd InsertLeave * call Fcitx2en()

" コメントを見やすくする
hi Comment ctermfg=LightYellow

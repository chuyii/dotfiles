# 色を使用可能にする
autoload -Uz colors
colors

# 補完機能を有効にする
autoload -Uz compinit
compinit

# 補完候補を矢印キーで選択できるようにする
zstyle ':completion:*:default' menu select=2

# プロンプト
PROMPT="%(?.%{${fg[green]}%}.%{${fg[red]}%})%n${reset_color}@${fg[blue]}%m${reset_color}(%*%) %~
%# "

# 環境変数の設定
export TERM='xterm-256color'
export LC_MESSAGES="en_US.UTF-8"
export PATH=$PATH

# エイリアス
alias ls='ls --color=auto'

xrdb ~/.Xresources

# tmuxを起動させる
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux

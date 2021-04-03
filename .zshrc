# 色を使用可能にする
autoload -Uz colors
colors

# 補完機能を有効にする
autoload -Uz compinit
compinit

# 補完候補を矢印キーで選択できるようにする
zstyle ':completion:*:default' menu select=2

# プロンプト
function powerline_precmd() {
  PS1="
$(powerline-c $?)"
}
function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}
if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi

# 環境変数の設定
export TERM='xterm-256color'
export LC_MESSAGES="en_US.UTF-8"
export PATH=$PATH:$HOME/dotfiles/bin
export LC_CTYPE=ja_JP.UTF-8

typeset -U path PATH

# Ctrl+Sによる出力のロックを無効化する
# -t 0 で標準入力が開いているときのみ実行する(scpコマンドの実行が失敗するのを防止)
if [[ -t 0 ]]; then
  stty stop undef
  stty start undef
fi

# エイリアス
alias ls='ls --color=auto'

if [ -e $HOME/.myzshrc ]; then
  . $HOME/.myzshrc
fi

if [ ! -z $DISPLAY ]; then
  # tmuxを起動させる
  [[ -z "$TMUX" && ! -z "$PS1" ]] && tmux
fi

:

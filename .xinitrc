#!/bin/sh

xsetroot -cursor_name left_ptr &
setxkbmap -option ctrl:nocaps &
picom &

# DPMSを無効にして画面が消えないようにする
# xset s off -dpms

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export DefaultIMModule=fcitx
export XMODIFIERS="@im=fcitx"

fcitx-autostart &

exec i3

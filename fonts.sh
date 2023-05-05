#!/bin/bash
set -eu

SCRIPT_DIR=$(cd $(dirname $0) && pwd)

TEMP_DIR=$(mktemp -d)
trap "rm -rf $TEMP_DIR" EXIT

cd $TEMP_DIR

isFontUpdated="false"

# for polybar
if [ ! "$(fc-list "Symbols Nerd Font:style=2048-em")" ]; then
  cp $SCRIPT_DIR/st/Symbols-2048-em\ Nerd\ Font\ Complete.ttf ~/.fonts
  isFontUpdated="true"
fi

# for polybar
if [ ! "$(fc-list "Nunito:style=Bold")" ]; then
  wget -O nunito.zip "https://github.com/googlefonts/nunito/archive/main.zip"
  unzip nunito.zip
  mkdir -p ~/.fonts/nunito
  cp nunito-main/fonts/variable/*.ttf ~/.fonts/nunito
  isFontUpdated="true"
fi

# for polybar
if [ ! "$(fc-list "DejaVu Sans")" ]; then
  wget -O dejavu.zip "http://sourceforge.net/projects/dejavu/files/dejavu/2.37/dejavu-sans-ttf-2.37.zip"
  unzip dejavu.zip
  cp dejavu-sans-ttf-2.37/ttf/DejaVuSans.ttf ~/.fonts
  isFontUpdated="true"
fi

# for st
if [ ! "$(fc-list "Inconsolata:style=Bold")" ]; then
  cp $SCRIPT_DIR/st/Inconsolata-*.ttf ~/.fonts
  isFontUpdated="true"
fi

# for st
if [ ! "$(fc-list "NasuM:style=Bold")" ]; then
  wget -O NasuFont.zip https://osdn.net/downloads/users/25/25473/NasuFont-20200227.zip/
  unzip NasuFont.zip
  cp -r NasuFont20200227 ~/.fonts
  isFontUpdated="true"
fi

# for st
if [ ! "$(fc-list "Symbols Nerd Font Mono:style=ForConsolas")" ]; then
  cp $SCRIPT_DIR/st/SymbolsNerdFontMono-ForConsolas.ttf ~/.fonts
  isFontUpdated="true"
fi

$isFontUpdated && fc-cache -fv
:

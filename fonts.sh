#!/bin/bash
set -eu

SCRIPT_DIR=$(cd $(dirname $0) && pwd)

TEMP_DIR=$(mktemp -d)
trap "rm -rf $TEMP_DIR" EXIT

cd $TEMP_DIR

isFontUpdated="false"

if [ ! "$(fc-list "NasuM:style=Bold")" ]; then
  wget -O NasuFont.zip https://osdn.net/downloads/users/25/25473/NasuFont-20200227.zip/
  unzip NasuFont.zip
  cp -r NasuFont20200227 ~/.fonts
  isFontUpdated="true"
fi

if [ ! "$(fc-list "Symbols Nerd Font Mono:style=ForConsolas")" ]; then
  cp $SCRIPT_DIR/SymbolsNerdFontMono-ForConsolas.ttf ~/.fonts
  isFontUpdated="true"
fi

$isFontUpdated && fc-cache -fv
:

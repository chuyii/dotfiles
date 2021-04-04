#!/bin/bash
set -eu

SCRIPT_DIR=$(cd $(dirname $0) && pwd)

TEMP_DIR=$(mktemp -d)
trap "rm -rf $TEMP_DIR" EXIT

cd $TEMP_DIR

wget https://dl.suckless.org/st/st-0.8.4.tar.gz
tar xf st-0.8.4.tar.gz
cd st-0.8.4

wget https://st.suckless.org/patches/font2/st-font2-20190416-ba72400.diff
wget https://st.suckless.org/patches/hidecursor/st-hidecursor-0.8.3.diff
wget https://st.suckless.org/patches/boxdraw/st-boxdraw_v2-0.8.3.diff
wget https://st.suckless.org/patches/anysize/st-anysize-0.8.1.diff
wget https://st.suckless.org/patches/alpha/st-alpha-0.8.2.diff
wget https://st.suckless.org/patches/xclearwin/st-xclearwin-20200419-6ee7143.diff
patch < st-font2-20190416-ba72400.diff
patch < st-hidecursor-0.8.3.diff
patch < st-boxdraw_v2-0.8.3.diff
patch < st-anysize-0.8.1.diff
patch -F 3 < st-alpha-0.8.2.diff
patch < st-xclearwin-20200419-6ee7143.diff

cp $SCRIPT_DIR/st-config.h config.h

make
sudo make install

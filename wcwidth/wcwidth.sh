#!/bin/bash
set -eu

SCRIPT_DIR=$(cd $(dirname $0) && pwd)

TEMP_DIR=$(mktemp -d)
trap "rm -rf $TEMP_DIR" EXIT

cd $TEMP_DIR

git clone https://github.com/fumiyas/wcwidth-cjk.git
cd wcwidth-cjk
git checkout a1b1e2c346a563f6538e46e1d29c265bdd5b1c9a
git apply < $SCRIPT_DIR/wcwidth.patch
sh autogen.sh
./configure --prefix=/usr/local
make
sudo make install

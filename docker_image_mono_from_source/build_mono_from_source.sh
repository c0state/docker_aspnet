#!/usr/bin/env bash

# exit on any failure
set -e

# clone mono, switch to known working commit and sync down submodules
git clone --recursive https://github.com/mono/mono /buildtemp/mono
cd /buildtemp/mono
git checkout 91c346a3f602b783ed5af6f53a6bb41262d0903e
git submodule sync --recursive
git submodule update --recursive

# build mono
./autogen.sh --prefix=/usr/local
make -j4
make install && echo Mono built successfully

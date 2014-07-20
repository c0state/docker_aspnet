#!/usr/bin/env bash

# exit on any failure
set -e

# clone mono, switch to known working commit and sync down submodules
git clone --recursive https://github.com/mono/mono /buildtemp/mono
cd /buildtemp/mono
git checkout d959941265aa7c63dfca3608cc182cca4a29e49f
git submodule sync --recursive
git submodule update --recursive

# build mono
./autogen.sh --prefix=/usr/local
make -j4
make install && echo Mono built successfully

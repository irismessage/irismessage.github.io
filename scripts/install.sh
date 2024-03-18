#!/bin/sh
set -eux
sudo pacman -Syu --needed ruby2.7 xclip xdg-utils base-devel
gem-2.7 update bundler

set +x
read -p 'before the install step you need to set the correct path, I.E.
$ bundle-2.7 config set path .bundle/
press ENTER
'
set -x

bundle-2.7 install

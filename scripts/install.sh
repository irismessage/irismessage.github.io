#!/bin/sh
set -eux
sudo pacman -Syu ruby2.7 xclip xdg-utils base-devel
gem-2.7 update bundler
# before this step you need to set the correct path, I.E.
# bundle-2.7 config set path .bundle/
bundle-2.7 install

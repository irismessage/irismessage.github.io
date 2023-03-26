#!/bin/sh
set -x
sudo pacman -Syu ruby2.7 xclip xdg-utils base-devel
bundle-2.7 install

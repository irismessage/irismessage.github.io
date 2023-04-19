#!/bin/sh
set -eux
# %Y-%m-%d could be replaced with %F
# %H:%M:%S could be replaced with %T
format='%Y-%m-%d %H:%M:%S %z'
date +"${format}" | xclip -selection clipboard -in

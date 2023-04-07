#!/bin/sh
# %Y-%m-%d could be replaced with %F
# %H:%M:%S could be replaced with %T
result=$(date +'%Y-%m-%d %H:%M:%S %z')
echo $result
echo $result | xclip -i
qdbus org.kde.klipper /klipper setClipboardContents "$result"

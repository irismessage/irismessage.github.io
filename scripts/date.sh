#!/bin/sh
result=$(date +'%Y-%M-%d %H:%M:%S %z')
echo $result
echo $result | xclip -i
qdbus org.kde.klipper /klipper setClipboardContents "$result"

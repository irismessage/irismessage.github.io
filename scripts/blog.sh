#!/bin/sh
set -eux
cd "~/src/irismessage.github.io"
code .
./scripts/serve.sh
xdg-open 'http://localhost:4000/'
xdg-open 'https://irismessage.github.io'
xdg-open 'https://github.com/irismessage/irismessage.github.io'
xdg-open 'https://keep.google.com/u/0/#LIST/1C0eruu-zmek14oEGg9yu2BEtIgwVRgLftWl_L04gP-SjIeI-QpT-5ORB-x4dqw'

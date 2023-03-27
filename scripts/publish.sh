#!/bin/sh
set -x
main="main"
staging="staging"
git checkout $main
git merge $staging
git push
git checkout $staging

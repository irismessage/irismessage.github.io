#!/bin/sh
set -x
bundle-2.7 exec jekyll serve --unpublished --drafts --livereload > /dev/null &

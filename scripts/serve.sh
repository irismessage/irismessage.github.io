#!/bin/sh
set -eux
exec bundle-2.7 exec jekyll serve --livereload --drafts --unpublished

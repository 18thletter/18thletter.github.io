#!/usr/bin/env bash
set -e # halt script on error

# bundle exec jekyll build
# bundle exec travis-lint
# bundle exec htmlproof ${HTML_FOLDER} --disable-external

# deploy
git checkout gh-pages
git subtree split --prefix _site/ -b master
git push -f origin master:master
git branch -D master

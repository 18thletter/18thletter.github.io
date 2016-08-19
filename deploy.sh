#!/usr/bin/env bash
set -e # halt script on error

rm -rf _site/

bundle exec jekyll build
# bundle exec travis-lint
# bundle exec htmlproof ${HTML_FOLDER} --disable-external

# deploy
cd _site/
git init
git add -A
git commit -m 'deploy to Github Pages'
git push --force https://github.com/18thletter/18thletter.github.io.git master:master

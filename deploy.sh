#!/bin/bash

set -o errexit -o nounset

if [ "$TRAVIS_BRANCH" != "master" ]
then
  echo "This commit was made against the $TRAVIS_BRANCH and not the master! No deploy!"
  exit 0
fi

rev=$(git rev-parse --short HEAD)

mkdir _book
cd _book
echo "now: $PWD"

git init
git config -–global user.name "niuDazhuang" 
git config –-global user.email "dengwm666@icloud.com"

git remote add upstream https://github.com/niuDazhuang/gp.git
git fetch upstream
git reset upstream/gh-pages

touch .

git add -A .
git commit -m "rebuild pages at ${rev}"
git push -q upstream HEAD:gh-pages
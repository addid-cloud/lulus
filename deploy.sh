#!/usr/bin/env sh
set -e
npm run build
cd dist
git init
git add -A
git commit -m 'newdev'
git push -f git@github.com:addid-cloud/lulus.git master:gh-pages

cd-
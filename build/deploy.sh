#!/usr/bin/env sh

set -e

npm run build

cd dist
ssh-add -k ~/.ssh/id_rsa
git init
git config user.name 'POABOB'
git config user.email 'zxc752166@yahoo.com.tw'
git add -A
git commit -m 'deploy'

git push -f git@github.com:POABOB/blog.git master:gh-pages

cd -

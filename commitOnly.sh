#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

#git init
#git add -A
git pull
git add .
git commit -m 'deploy'
git push
# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -
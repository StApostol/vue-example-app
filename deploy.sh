#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git config user.name "StAndrew" && git config user.email "starosta_61@bk.ru"
git add -A
git commit -m 'deploy'

# если вы публикуете по адресу https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:StApostol/vue-example-app.git master:gh-pages

cd -

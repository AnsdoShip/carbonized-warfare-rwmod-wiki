#!/usr/bin/sh

git checkout main
git add .
git commit -m "Wiki updated: $(date "+%Y-%m-%d %H:%M:%S")"
git pull origin main
git push origin main

mkdocs build
cp docs/README.md site/
cd site
git checkout gh-pages
git add .
git commit -m "Wiki updated: $(date "+%Y-%m-%d %H:%M:%S")"
git push origin gh-pages

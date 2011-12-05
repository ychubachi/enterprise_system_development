#!/bin/bash
git checkout master
git add .
git commit -a -m 'Prepared for publishing'
# Publish
git checkout gh-pages
git checkout master build
mv build/html/* .
rm -rf build/html
git add .
git commit -a -m 'Published'
git push
git checkout master

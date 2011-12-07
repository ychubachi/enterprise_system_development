#!/bin/bash
git checkout master
git add .
git commit -a -m 'Prepared for publishing'
git push origin master
# Publish
git checkout gh-pages
git checkout master build
ls
cp -rf build/html/* .
rm -rf build/html
git add .
git commit -a -m 'Published'
git push origin +gh-pages
git checkout master

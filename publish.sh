#!/bin/bash
git checkout master
make html
git add .
git commit -a -m 'Prepared for publishing'
git push origin master
# Publish
git checkout gh-pages
git checkout master build
cp -rf build/html/* .
rm -rf build/html
git add .
git commit -a -m 'Published'
git push origin +gh-pages
git checkout master

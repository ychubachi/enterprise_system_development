#!/bin/bash
git checkout master
git add .
git commit -a -m 'Published'
git checkout gh-pages
git checkout master build
git add .
git commit -a -m 'Published ph-pages'
git push
git checkout master
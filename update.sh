#!/bin/sh

git pull origin master
git submodule update
git submodule foreach git pull origin master

## Update Vim plugins
vim +BundleUpdate +qall

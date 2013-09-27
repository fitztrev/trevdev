#!/bin/sh

echo '########## Updating trevdev  ##############'
git pull origin master
git submodule update
git submodule foreach git pull origin master
vim +BundleUpdate +qall

echo '########## Updating gems     ###############'
gem update

echo '########## Updating homebrew ###############'
brew update && brew upgrade

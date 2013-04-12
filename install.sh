#!/bin/sh

## Install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

## Install submodules
cd ~/trevdev
git submodule update --init

## Install Vim and Zsh customizations
rm -rf ~/.vim
ln -s  ~/trevdev/vim ~/.vim

rm -f ~/.vimrc
ln -s ~/trevdev/vim/.vimrc ~/.vimrc

rm -f ~/.zshrc
ln -s ~/trevdev/shell/.zshrc ~/.zshrc

## Load new Zsh preferences
source ~/.zshrc

## Install Vim plugins
vim +BundleInstall +qall

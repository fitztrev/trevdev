#!/bin/sh

## Install submodules
cd ~/trevdev
git submodule update --init

## Install Vim and Zsh customizations
rm -rf ~/.vim
ln -s  ~/trevdev/vim ~/.vim

rm -f ~/.vimrc
ln -s ~/trevdev/vim/.vimrc ~/.vimrc

rm -f ~/.oh-my-zsh
ln -s ~/trevdev/oh-my-zsh ~/.oh-my-zsh

rm -f ~/.zshrc
ln -s ~/trevdev/shell/.zshrc ~/.zshrc

## Load new Zsh preferences
source ~/.zshrc

## Install Vim plugins
vim +BundleInstall +qall

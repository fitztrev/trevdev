#!/bin/sh

## Install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

## Install submodules
cd ~/trevdev
git submodule update --init

## Install Vim and Zsh customizations
ln -s ~/trevdev/vim ~/.vim
ln -s ~/trevdev/vim/.vimrc ~/.vimrc
ln -s ~/trevdev/shell/.zshrc ~/.zshrc
source $HOME/.zshrc

## Install Vim plugins
vim +BundleInstall +qall

#!/bin/sh

## Install submodules
cd $HOME/trevdev
git submodule update --init
git submodule foreach "(git checkout master && git pull)"

## Install Vim and Zsh customizations
rm -rf $HOME/.vim
ln -s  $HOME/trevdev/vim $HOME/.vim

rm -f $HOME/.vimrc
ln -s $HOME/trevdev/vim/.vimrc $HOME/.vimrc

rm -rf $HOME/.oh-my-zsh
ln -s  $HOME/trevdev/oh-my-zsh $HOME/.oh-my-zsh

rm -f $HOME/.zshrc
ln -s $HOME/trevdev/shell/.zshrc $HOME/.zshrc

## Load new Zsh preferences
source $HOME/.zshrc

## Install Vim plugins
vim +BundleInstall +qall

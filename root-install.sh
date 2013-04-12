#!/bin/sh

## Symlink to the settings
sudo rm -f /root/trevdev
sudo ln -s $HOME/trevdev /root/trevdev

sudo rm -f /root/.vim
sudo ln -s $HOME/trevdev/vim /root/.vim

sudo rm -f /root/.vimrc
sudo ln -s $HOME/trevdev/vim/.vimrc /root/.vimrc

sudo rm -f /root/.oh-my-zsh
sudo ln -s $HOME/trevdev/oh-my-zsh /root/.oh-my-zsh

sudo rm -f /root/.zshrc
sudo ln -s $HOME/trevdev/shell/.zshrc /root/.zshrc

## Change shell
sudo chsh -s /bin/zsh

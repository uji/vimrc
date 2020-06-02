#!/bin/sh
mkdir -p ~/dotfiles/vimrc/vim/pack/mypackage/opt
git clone https://github.com/k-takata/minpac.git ~/dotfiles/vimrc/vim/pack/mypackage/opt/minpac
vim +:qa
vim +:MinPacUpdate

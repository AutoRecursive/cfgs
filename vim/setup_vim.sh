#!/bin/bash

#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc" > ~/.config/nvim/init.vim

if [ ! -d ~/.vim_runtime ] ; then
	echo "clone runtime"
	git clone https://github.com/5cr009e/vimrc.git ~/.vim_runtime
fi

echo "cloned"
if [ ! -d ~/.vimrc ] ; then
	cp .vimrc ~/.vimrc
	echo "copied"
fi
#vim +PluginInstall +qall
vim -E -s -u "$HOME/.vimrc" +PlugInstall +qall


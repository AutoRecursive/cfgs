@echo off
mkdir %USERPROFILE%/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git %USERPROFILE%%/.vim/bundle/Vundle.vim

REM mkdir %USERPROFILE%/.config/nvim
REM touch %USERPROFILE%/.config/nvim/init.vim
REM echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after
REM let &packpath=&runtimepath
REM source ~/.vimrc" > %USERPROFILE%/.config/nvim/init.vim

git clone https://github.com/5cr009e/vimrc.git %USERPROFILE%%/.vim_runtime

mklink  %USERPROFILE%\.vimrc %cd%\.vimrc
REM vim +PluginInstall +qall
REM vim -E -s -u "$HOME/.vimrc" +PlugInstall +qall


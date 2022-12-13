iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
mkdir $env:USERPROFILE/.config/nvim
echo $null >>  $env:USERPROFILE/.config/nvim/init.vim

echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc" > $env:USERPROFILE/.config/nvim/init.vim

git clone https://github.com/5cr009e/vimrc.git $env:USERPROFILE/.vim_runtime
cmd /c "mklink  %USERPROFILE%\.vimrc %cd%\.vimrc"

# export PRELUDE_URL="https://github.com/5cr009e/prelude.git" && curl -L https://github.com/bbatsov/prelude/raw/master/utils/installer.sh | sh
# emacs -nw --eval "(shell-command \"echo finished\")"

git clone https://github.com/bbatsov/prelude.git ~/.prelude.d
git clone https://github.com/syl20bnr/spacemacs ~/.spacemacs.d

git clone https://github.com/plexus/chemacs.git ~/.chemacs
bash ~/.chemacs/install.sh
ln -s $(pwd)/.emacs-profiles.el ~/.emacs-profiles.el

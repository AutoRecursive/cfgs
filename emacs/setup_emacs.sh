export PRELUDE_URL="https://github.com/5cr009e/prelude.git" && curl -L https://github.com/bbatsov/prelude/raw/master/utils/installer.sh | sh
emacs -nw --eval "(shell-command \"echo finished\")"

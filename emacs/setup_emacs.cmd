@echo off
git clone https://github.com/5cr009e/prelude.git %USERPROFILE%\.prelude
mklink /D %USERPROFILE%\AppData\Roaming\.emacs.d  %USERPROFILE%\.prelude

git clone https://github.com/syl20bnr/spacemacs %USERPROFILE%\.spacemacs
mklink /D %USERPROFILE%\AppData\Roaming\.spacemacs.d  %USERPROFILE%\.spacemacs

git clone https://github.com/plexus/chemacs.git ..\..\chemacs
powershell ..\..\chemacs\install.ps1

mklink %USERPROFILE%\.emacs-profiles.el  %USERPROFILE%\.emacs-profiles.el
REM mklink %USERPROFILE%\AppData\Roaming\.emacs  %USERPROFILE%\.emacs

REM echo (("default" . ((user-emacs-directory . "~/.prelude"))) > %USERPROFILE%\AppData\Roaming\.emacs-profiles.el
REM echo ("spacemacs" . ((user-emacs-directory . "~/.spacemacs"))) >> %USERPROFILE%\AppData\Roaming\.emacs-profiles.el
REM echo (("default" . ((user-emacs-directory . "~/.prelude"))) > %USERPROFILE%\.emacs-profiles.el
REM echo ("spacemacs" . ((user-emacs-directory . "~/.spacemacs"))) >> %USERPROFILE%\.emacs-profiles.el

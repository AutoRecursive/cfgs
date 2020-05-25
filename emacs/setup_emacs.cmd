@echo off
git clone https://github.com/5cr009e/prelude.git %USERPROFILE%\.prelude.d
mklink /J %USERPROFILE%\AppData\Roaming\.emacs.d  %USERPROFILE%\.prelude.d

git clone https://github.com/syl20bnr/spacemacs %USERPROFILE%\.spacemacs.d
mklink /J %USERPROFILE%\AppData\Roaming\.spacemacs.d  %USERPROFILE%\.spacemacs.d

REM git clone https://github.com/plexus/chemacs.git ..\..\chemacs
REM powershell ..\..\chemacs\install.ps1
REM mklink %USERPROFILE%\AppData\Roaming\.emacs  %USERPROFILE%\.emacs

REM echo (("default" . ((user-emacs-directory . "~/.prelude"))) > %USERPROFILE%\AppData\Roaming\.emacs-profiles.el
REM echo ("spacemacs" . ((user-emacs-directory . "~/.spacemacs"))) >> %USERPROFILE%\AppData\Roaming\.emacs-profiles.el

@echo off
git clone https://github.com/bbatsov/prelude.git %USERPROFILE%\AppData\Roaming\.prelude.d
mklink /D %USERPROFILE%\.prelude %USERPROFILE%\AppData\Roaming\.prelude.d

git clone https://github.com/syl20bnr/spacemacs %USERPROFILE%\AppData\Roaming\.spacemacs.d
mklink /D %USERPROFILE%\.spacemacs %USERPROFILE%\AppData\Roaming\.spacemacs.d

git clone https://github.com/plexus/chemacs.git ..\..\chemacs
powershell ..\..\chemacs\install.ps1

@REM mklink %USERPROFILE%\.emacs-profiles.el  %USERPROFILE%\.emacs-profiles.el
@REM  mklink %USERPROFILE%\AppData\Roaming\.emacs  %USERPROFILE%\.emacs

@REM echo (("default" . ((user-emacs-directory . "~/.prelude"))) >> %USERPROFILE%\AppData\Roaming\.emacs-profiles.el
@REM echo ("spacemacs" . ((user-emacs-directory . "~/.spacemacs")))) >> %USERPROFILE%\AppData\Roaming\.emacs-profiles.el
echo (("default" . ((user-emacs-directory . "~/.prelude.d"))) > %USERPROFILE%\AppData\Roaming\.emacs-profiles.el
echo ("spacemacs" . ((user-emacs-directory . "~/.spacemacs.d")))) >> %USERPROFILE%\AppData\Roaming\.emacs-profiles.el
copy %USERPROFILE%\.emacs  %USERPROFILE%\AppData\Roaming\

@echo off
REM This batch file creates symbolic links for multiple files in the current directory

REM Set the source directory to the current directory of the batch file
set "homeDir=%USERPROFILE%"
set "dotfilesDir=%homeDir%\.dotfiles"
REM set "APPDATA=%homeDir%\AppData\Roaming"

REM Create symbolic links for each file
mklink "%homeDir%\.bash_aliases" "%dotfilesDir%\.bash_aliases"
mklink "%homeDir%\.bashrc" "%dotfilesDir%\.bashrc"
mklink "%homeDir%\.gitconfig" "%dotfilesDir%\.gitconfig"
mklink "%homeDir%\.ideavimrc" "%dotfilesDir%\.ideavimrc"
mklink "%homeDir%\_vimrc" "%dotfilesDir%\_vimrc"
mklink "%homeDir%\.vscodevimrc" "%dotfilesDir%\.vscodevimrc"
mklink "%APPDATA%\Code\User\settings.json" "%dotfilesDir%\vscode-settings.json"
mklink "%APPDATA%\Sublime Text\Packages\User\Preferences.sublime-settings" "%dotfilesDir%\.sublime-settings"

REM Add more lines if you have additional files to link

echo Symbolic links created successfully!

@echo off
REM This batch file creates symbolic links for multiple files in the current directory

REM Set the source directory to the current directory of the batch file
set "homeDir=%USERPROFILE%"
set "dFilesDir=%homeDir%\.dotfiles"

REM Create symbolic links for each file
mklink "%homeDir%\.bash_aliases" "%dFilesDir%\.bash_aliases"
mklink "%homeDir%\.bashrc" "%dFilesDir%\.bashrc"
mklink "%homeDir%\.gitconfig" "%dFilesDir%\.gitconfig"
mklink "%homeDir%\.ideavimrc" "%dFilesDir%\.ideavimrc"
mklink "%homeDir%\_vimrc" "%dFilesDir%\_vimrc"

REM Add more lines if you have additional files to link

echo Symbolic links created successfully!

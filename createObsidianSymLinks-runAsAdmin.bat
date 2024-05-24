@echo off
REM This batch file creates symbolic links for multiple files in the current directory

REM Set the source directory to the current directory of the batch file
REM change the obsidian vault destination if necessary

set "obDst=%USERPROFILE%\OneDrive\Files\0-Personal_Management\Obsidian\Alex-2024"
set "dotfilesDir=%USERPROFILE%\.dotfiles"
REM set "APPDATA=%homeDir%\AppData\Roaming"

REM Create symbolic links for each file
mklink "%obDst%\.obsidian.vimrc" "%dotfilesDir%\.obsidian.vimrc"

REM Add more lines if you have additional files to link

echo Symbolic links created successfully!

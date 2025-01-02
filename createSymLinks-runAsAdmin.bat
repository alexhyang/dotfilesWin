@echo off
REM This batch file creates symbolic links for multiple files in the current directory

REM Set the source directory to the current directory of the batch file
set "homeDir=%USERPROFILE%"
set "dotfilesDir=%homeDir%\.dotfiles"
set "APPDATA=%homeDir%\AppData"
set "Local=%APPDATA%\Local"
set "Roaming=%APPDATA%\Roaming"

REM Create symbolic links for each file
REM mklink <link> <target>
mklink "%homeDir%\.bash_aliases" "%dotfilesDir%\.bash_aliases"
mklink "%homeDir%\.bashrc" "%dotfilesDir%\.bashrc"
mklink "%homeDir%\.editorconfig" "%dotfilesDir%\.editorconfig"
mklink "%homeDir%\.gitconfig" "%dotfilesDir%\.gitconfig"
mklink "%homeDir%\.ideavimrc" "%dotfilesDir%\.ideavimrc"
mklink "%homeDir%\_vimrc" "%dotfilesDir%\_vimrc"
mklink "%homeDir%\.vscodevimrc" "%dotfilesDir%\.vscodevimrc"
mklink "%Romaing%\Code\User\settings.json" "%dotfilesDir%\vscode-settings.json"
mklink "%Romaing%\Code\User\snippets\markdown.json" "%dotfilesDir%\vscode-snippets-markdown.json"
mklink "%Romaing%\Sublime Text\Packages\User\Preferences.sublime-settings" "%dotfilesDir%\.sublime-settings"
mklink "%Local%\nvim\init.lua" "%dotfilesDir%\nvim\init.lua"

REM Add more lines if you have additional files to link

echo Symbolic links created successfully!

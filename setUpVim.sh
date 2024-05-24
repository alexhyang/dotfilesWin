#!/bin/bash
echo "Setting up Vim...";

# Git
gitpull () {
  if [[ $(pwd) = $1 ]]; then
    git pull
  else
    pushd $1
    git pull
    popd
  fi
}

if [ ! -d "$HOME/vimfiles/bundle/Vundle.vim" ]
then
    echo "Installing Vim package manager...";
    git clone https://github.com/VundleVim/Vundle.vim.git ~/vimfiles/bundle/Vundle.vim
else
    echo "Pulling the latest Vundle updates";
    gitpull ~/vimfiles/bundle/Vundle.vim
fi

if [ ! -d "$HOME/vimfiles/pack/plugins/start/ctrlp" ]
then
    mkdir -p ~/vimfiles/pack/plugins/start
    git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git ~/vimfiles/pack/plugins/start/ctrlp
    echo "Vim plugin ctrlp installed!";
fi

if [ ! -d "$HOME/vimfiles/bundle/ale" ]
then
    echo "Last step: \nrun :PluginInstall" >>  temp.md
    vim temp.md
    rm temp.md
    echo "Vim plugins installed!";
fi

if [[ -d "$HOME/vimfiles/bundle/vim-colors-solarized"  &&  ! -f "$HOME/vimfiles/colors/solarized.vim" ]]
then
    echo "Copying Solarized color file..."
    mkdir -p $HOME/vimfiles/colors/
    cp $HOME/vimfiles/bundle/vim-colors-solarized/colors/solarized.vim $HOME/vimfiles/colors/solarized.vim
    echo "solarized.vim theme configured!"
fi

echo "Vim configuration finished!"

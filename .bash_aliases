#!/bin/bash

# git
alias gsb='git status -sb'
alias gp='git push'
alias gl='git pull'
alias gco='git checkout'
alias gd='git diff'
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'"
alias glols="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --stat"
alias glola="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all"
alias ga='git add'
alias gcmsg='git commit -m'
alias gf='git fetch'

# directory
alias ..="cd .."
alias ~="cd ~"
alias dotfiles="cd ~/.dotfiles"
alias dotutils="source ~/.dotfiles/utils.sh"
alias cs61b="cd ~/cs61b"
alias reload="source ~/.bashrc"

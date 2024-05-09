#!/bin/bash
# shell
alias vimrc="vim ~/_vimrc"
alias bashrc="vim ~/.bashrc"
alias bashal="vim ~/.bash_aliases"
alias cls="clear"
alias mv="mv -i"
alias cpi="cp -i"

# git
alias gsb='git status -sb'
alias gp='git push'
alias gl='git pull'
alias gco='git checkout'
alias gd='git diff'
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'"
alias glol5="glol -n 5"
alias glols="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --stat"
alias glols5="glols -n 5"
alias glola="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all"
alias glola5="glola -n 5"
alias ga='git add'
alias gcmsg='git commit -m'
alias gf='git fetch'
alias gm="git merge"
alias gsta="git stash push"
alias gstaa="git stash apply"
alias gstd="git stash drop"
alias gsave="gsta"
alias gload="gstaa; gstd"

# directory
alias ..="cd .."
alias ~="cd ~"
alias .files="cd ~/.dotfiles"
alias .utils="source ~/.dotfiles/utils.sh"
alias rld="source ~/.bashrc"

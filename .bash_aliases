#!/bin/bash
# shell
alias bsrc="vim ~/.bashrc"
alias bsal="vim ~/.bash_aliases"
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
alias reload="source ~/.bashrc"
cs61b () {
    if [[ $1 == "" ]]; then
      cd ~/dev/cs61b || mkdir ~/dev/cs61b; cd ~/dev/cs61b;
    else
      cd "~/dev/cs61b/$1";
    fi
} 

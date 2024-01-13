#!/bin/bash

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


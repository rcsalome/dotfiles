#!/bin/bash

FILES='.bashrc
.gitconfig
.tmux.conf
.vimrc'

for f in $FILES; do
  echo $f
done

#!/usr/bin/env bash

set -e

# Bash aliases
cp dot.bash_aliases ~/.bash_aliases

# Setup git
cp dot.gitconfig ~/.gitconfig
cp dot.gitalias ~/.gitalias

# Setup vim
cp -r vimrc ~/.cc-vimrc
sh ~/.cc-vimrc/install_vimrc.sh

# Generate ssh key
[ -f ~/.ssh/id_rsa ] || ssh-keygen -t rsa

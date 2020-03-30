#!/bin/bash
# Get the parent directory of the .vim folder
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." >/dev/null 2>&1 && pwd )"
# Copy to home
cp -r "$DIR/.tmux" "$HOME/"
# Copy conf
cp "$DIR/.tmux/tmux.conf" "$HOME/.tmux.conf"
# Checkout tmp to latest
CRT_DIR=$(pwd)
cd "$HOME/.tmux/plugins/tpm"
git pull origin master
git checkout master
# Change back
cd $CRT_DIR


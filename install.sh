#!/bin/bash

# Clone Vundle package manager in the right location for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Symbolic link to set the configuration file to the current user
ln -s ${PWD}/vimrc ${HOME}/.vimrc

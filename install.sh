#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#update all submodules
git submodule update --init --recursive

# vim
ln -s ${BASEDIR}/vimrc ~/.vimrc
ln -shF ${BASEDIR}/_vim ~/.vim

# zsh
ln -s ${BASEDIR}/zshrc ~/.zshrc

# git
ln -s ${BASEDIR}/gitconfig ~/.gitconfig

ln -s ${BASEDIR}/tigrc ~/.tigrc


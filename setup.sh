#!/usr/bin/env bash

BASEDIR=$(dirname $0)
cd $BASEDIR

cp --backup ${PWD}/.bashrc ~/.bashrc
cp --backup ${PWD}/.tmux.conf ~/.tmux.conf
cp --backup ${PWD}/.vimrc ~/.vimrc
cp --backup ${PWD}/.gitconfig ~/.gitconfig

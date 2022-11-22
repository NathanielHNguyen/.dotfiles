#!/bin/bash

rm ~/.vimrc
$sed 's/source~/.dotfiles/etc/bashrc_custom/ /' ~/.bashrc
mkdir -p ~/.TRASH

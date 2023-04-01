#!/bin/bash


# Removing .vimrc file in home directory.
rm ~/.vimrc

# Removing line 'source ~/.dotfiles/bashrc custom' from .bashrc file in home directory.
sed -i '/source ~\/.dotfiles\/bashrc custom/d' ~/.bashrc

# Removing .TRASH directory inside of home directory.
rm -rf ~/.TRASH


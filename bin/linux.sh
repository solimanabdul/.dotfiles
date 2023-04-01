#!/bin/bash


# Check the operating system type is 'Linux'
if [[ "$(uname)" != "Linux" ]]; then
  # If 'uname' does not equal 'Linux' this error message will run 
  echo "Error: This script can only be run on Linux systems." >> linuxsetup.log
  # Run the 'exit' command to terminate the script
  exit 1
fi

# Checking to see if the .TRASH file exists before making it 
if [[ ! -d "$HOME/.TRASH" ]]; then
  mkdir "$HOME/.TRASH"
fi

#Changing the name of the vimrc in my home directory
if [[ -f "$HOME/.vimrc" ]]; then
  mv "$HOME/.vimrc" "$HOME/.bup vimrc"
  echo "The current '.vimrc' file was changed to '.bup vimrc'" >> linuxsetup.log
fi

# Redirecting the content etc/vimrc file to '.vimrc' in home directory
cat etc/vimrc > "$HOME/.vimrc"
echo "Overwrote the contents of /etc/vimrc to $HOME/.vimrc" >> linuxsetup.log

# Adding 'source ∼/.dotfiles/etc/bashrc custom' to the end of the .bashrc file located home directory
echo "source ∼/.dotfiles/etc/bashrc custom" >> "$HOME/.bashrc"
echo "Added 'source ∼/.dotfiles/etc/bashrc custom' to $HOME/.bashrc" >> linuxsetup.log

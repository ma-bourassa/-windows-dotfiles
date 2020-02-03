#!/bin/bash

# dotfiles directory
dotfilesdir=~/windows-dotfiles

# list of files/folders to symlink in home
dotfiles="bash_profile bashrc gitconfig eslintrc"

# create symlinks (will overwrite old dotfiles)
for file in ${dotfiles}; do
    echo "Copying $file in home directory."
    cp ${dotfilesdir}/.${file} ~/.${file}
done    

if hash npm 2>/dev/null; then
    npm install -g eslint prettier eslint-plugin-prettier eslint-config-prettier
else
    echo "Npm not installed"
fi

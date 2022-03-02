#!/usr/bin/env bash
set -e
cd "$(dirname "${BASH_SOURCE[0]}")"
dir="$(pwd -P)"
cd ~/
git -C "$dir" submodule update --init
reldir=${dir#$(pwd)/}

ln -vsf "$reldir"/.bashrc .
ln -vsf "$reldir"/.gitconfig .
ln -vsf "$reldir"/.gitignore_global .
ln -vsf "$reldir"/.screenrc .
ln -vsf "$reldir"/.vim .
ln -vsf "$reldir"/.zsh .
ln -vsf "$reldir"/.zshrc .

mkdir -p .config
ln -vsf ../"$reldir"/.config/starship.toml ./.config

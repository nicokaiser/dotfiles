#!/usr/bin/env bash
set -e
cd "$(dirname "${BASH_SOURCE[0]}")"
dir="$(pwd -P)"
cd ~/
git -C "$dir" submodule update --init
mkdir -p ~/.config
reldir=${dir#$(pwd)/}
files=".bashrc .gitconfig .gitignore_global .screenrc .vim .zsh .zshrc .config/starship.toml"
for file in $files; do
    if [[ -e ~/"$file" && ! -f ~/"$file" ]]; then
        continue
    fi
    echo $file
    ln -sf "$reldir"/"$file" "$file"
done

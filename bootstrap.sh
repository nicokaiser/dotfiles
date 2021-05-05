#!/usr/bin/env bash
set -e
dir="$(dirname "${BASH_SOURCE}")";
cd ~/
git -C "$dir" submodule update --init
reldir=${dir#$(pwd)/}
files=".bashrc .gitconfig .gitignore_global .screenrc .vim .zsh .zshrc"
for file in $files; do
    if [[ -e ~/"$file" && ! -f ~/"$file" ]]; then
        continue
    fi
    echo $file
    ln -sf "$reldir"/"$file" "$file"
done

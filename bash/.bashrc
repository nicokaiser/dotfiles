# ~/.bashrc

[ -z "$PS1" ] && return

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=20000

shopt -s nocaseglob
shopt -s checkwinsize

if [ $(id -u) -eq 0 ]; then
    PS1="\n\[\e[1;31m\]\u\[\e[0m\] at \[\e[1;32m\]\h\[\e[0m\] in \[\e[1;36m\]\w\[\e[0m\]\n\[\e[1;32m\]❯\[\e[0m\] "
else
    PS1="\n\[\e[1;33m\]\u\[\e[0m\] at \[\e[1;32m\]\h\[\e[0m\] in \[\e[1;36m\]\w\[\e[0m\]\n\[\e[1;32m\]❯\[\e[0m\] "
fi

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

alias ls='ls -CF'
alias ll='ls -lF'
alias l='ls -alF'
alias la='ls -la'
alias ..='cd ..'
alias ...='cd ../..'
alias _='sudo '

alias dco=docker-compose
alias dcb='docker-compose build'
alias dce='docker-compose exec'
alias dcps='docker-compose ps'
alias dcup='docker-compose up'
alias dcupd='docker-compose up -d'
alias dcdn='docker-compose down'
alias dcl='docker-compose logs'
alias dclf='docker-compose logs -f'
alias dcpull='docker-compose pull'

alias agu="sudo apt update"
alias agug="sudo apt upgrade"
alias agar="sudo apt autoremove --purge"
alias aguu="sudo apt update && sudo apt upgrade"

if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi

export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use

[ -r $HOME/.bashrc.local ] && \. $HOME/.bashrc.local

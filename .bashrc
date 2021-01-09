# ~/.bashrc

[ -z "$PS1" ] && return

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=20000

shopt -s nocaseglob
shopt -s checkwinsize

PS1="\[\033[36m\]\u@\[\033[34m\]\h\[\033[01;32m\] ➜ \[\033[01;36m\] \w\[\033[00m\] "

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
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

[ -r $HOME/.bashrc.local ] && \. $HOME/.bashrc.local

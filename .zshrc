# ~/.zshrc

# NVM
export NVM_DIR="$HOME/.nvm"
[[ -f "/usr/local/opt/nvm/nvm.sh" ]] && . /usr/local/opt/nvm/nvm.sh

# History
HISTSIZE=100000
SAVEHIST=100000
HIST_STAMPS="yyyy-mm-dd"

# Oh My Zsh
ZSH=$HOME/.zsh/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
DISBALE_UNTRACKED_FILES_DIRTY="true"
plugins=(history encode64 docker gitfast nvm docker-compose)
source $ZSH/oh-my-zsh.sh

# zsh-autosuggestions
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Prompt
[[ -n $SSH_CONNECTION ]] && PROMPT="%{$fg[cyan]%}$USER@%{$fg[blue]%}%m%} ${PROMPT}" 

# User configuration
export LANG=en_US.UTF-8
export EDITOR="vim"
[[ -d "$HOME/.local/bin" ]] && PATH=$HOME/.local/bin:$PATH

[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local

# Aliases
alias agu="sudo apt update"
alias agug="sudo apt upgrade"
alias agar="sudo apt autoremove --purge"
alias aguu="sudo apt update && sudo apt upgrade"
alias vup="vagrant up"
alias vssh="vagrant ssh"
alias bubo='brew update && brew outdated'
alias bubc='brew upgrade && brew cleanup'
alias bubu='bubo && bubc'

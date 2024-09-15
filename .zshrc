# ~/.zshrc

# History
HISTSIZE=100000
SAVEHIST=100000
HIST_STAMPS="yyyy-mm-dd"

# Oh My Zsh
ZSH=$HOME/.zsh/.oh-my-zsh
ZSH_DISABLE_COMPFIX=true
ZSH_CUSTOM=$HOME/.zsh/custom
ZSH_THEME="spaceship"
SPACESHIP_PROMPT_ORDER=(time user host dir line_sep exit_code char)
SPACESHIP_PROMPT_SYMBOL="❯"
DISABLE_AUTO_UPDATE="true"
DISBALE_UNTRACKED_FILES_DIRTY="true"
NVM_LAZY=1
NVM_LAZY_CMD=ncu
plugins=(docker gitfast nvm docker-compose)
source $ZSH/oh-my-zsh.sh

# zsh-autosuggestions
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Starship
[[ -x "$(command -v starship)" ]] && eval "$(starship init zsh)"

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
alias bubo='brew update && brew outdated'
alias bubc='brew upgrade && brew cleanup'
alias bubu='bubo && bubc'
alias gcd='git checkout develop'
alias gfl='git flow'
alias vsc='code .'

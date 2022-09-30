autoload -Uz compinit && compinit

bindkey -v
bindkey '^R' history-incremental-search-backward

# Docker
alias d="docker"
alias dc="docker-compose"

# Git
alias g="git"
alias gc="git checkout"
alias gp="git push"
function gpr() { git pull $* --rebase }

export EDITOR='vim'

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


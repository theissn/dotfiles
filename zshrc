autoload -Uz compinit
compinit

autoload -U colors && colors

setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_save_no_dups
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

bindkey '^R' history-incremental-search-backward

alias ll='ls -lh'
alias la='ls -lha'
alias l='ls -l'

alias g='git'
alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias gp='git pull'
alias gpo='git push origin'
alias gco='git checkout'
alias ga='git add'
alias gc='git commit'
alias gca='git commit --amend'
alias grb='git rebase'
alias gcl='git clone'
alias gdc='git diff --cached'
function gpr() { git pull $* --rebase }

alias d='dokcer'
alias dc='docker compose'

eval "$(mise activate zsh)"

export PATH="$PATH:$HOME/.composer/vendor/bin"
export EDITOR='vim'


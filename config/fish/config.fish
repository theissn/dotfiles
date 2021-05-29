alias weather="curl http://wttr.in/LCY"
alias z="zathura"

set fish_greeting

set -gx EDITOR vim
set -gx BROWSER firefox-developer-edition
set -gx PATH "$HOME/.local/bin" $PATH
set -gx PATH "$HOME/.local/bin/sb" $PATH
set -gx XDG_CONFIG_HOME "$HOME/.config"

for x in docker docker-compose pacman;
	alias $x="sudo $x"
end

if type -q nvim 
   alias vim="nvim" 
end

alias vpn-u="sudo wg-quick up vpn68-gb-lon"
alias vpn-d="sudo wg-quick down vpn68-gb-lon"

alias trem="transmission-remote"

alias weather="curl http://wttr.in/LCY"
alias z="zathura"

set fish_greeting

set -gx EDITOR vim
set -gx BROWSER firefox-developer-edition
set -gx PATH "$HOME/.local/bin" $PATH
set -gx PATH "$HOME/.local/bin/sb" $PATH

for x in docker docker-compose pacman;
	alias $x="sudo $x"
end

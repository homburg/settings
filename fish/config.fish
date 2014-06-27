# vim: ft=sh :

# Relative path
. (dirname (status -f))/vi-mode.fish

function fish_user_key_bindings
	vi_mode_insert
end

. (dirname (status -f))/virtualfish/virtual.fish

# Local php packages
if test -d ~/code/php/lib/bin
	set -x PATH ~/code/php/lib/bin $PATH
end

# go
if test -d ~/go/bin
	set -x PATH ~/go/bin $PATH
end
if test -d ~/code/go/bin
	set -x PATH ~/code/go/bin $PATH
end

# Editor
set -x EDITOR vi

# Aliases
alias grep="grep --color"
alias rgrep="grep -r --color --exclude-dir='.svn' --exclude-dir='.git'"

if test -f ~/.nvm/nvm.sh
	bash ~/.nvm/nvm.sh
end

set -gx GRADLE_OPTS "-Dorg.gradle.daemon=true"

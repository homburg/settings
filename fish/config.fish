# vim: ft=sh :

. ~/code/settings/fish/vi-mode.fish

function fish_user_key_bindings
	vi_mode_insert
end

. ~/code/settings/fish/virtualfish/virtual.fish

## paths

# This should work according to https://github.com/fish-shell/fish-shell/issues/527
# But it does not
# set -U fish_user_paths ~/bin

# This works
# ruby
if test -d /var/lib/gems/1.9/bin
	set -x PATH /var/lib/gems/1.9/bin $PATH
end
if test -d /var/Lib/gems/1.8/bin
	set -x PATH /var/lib/gems/1.8/bin $PATH
end

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

set -x PATH ~/bin $PATH /sbin

# Editor
set -x EDITOR vi

# Aliases
alias grep="grep --color"
alias rgrep="grep -r --color --exclude-dir='.svn' --exclude-dir='.git'"

if test -f ~/.nvm/nvm.sh
	bash ~/.nvm/nvm.sh
end

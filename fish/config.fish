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
set -x PATH /var/lib/gems/1.9/bin /var/lib/gems/1.8/bin $PATH

set -x PATH ~/bin ~/code/php/lib/bin ~/code/go/bin ~/go/bin $PATH

set -x PATH $PATH /sbin

# Editor
set -x EDITOR vi

# Aliases
alias grep="grep --color"
alias rgrep="grep -r --color --exclude-dir='.svn' --exclude-dir='.git'"

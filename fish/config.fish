. vi-mode.fish

## paths

# This should work according to https://github.com/fish-shell/fish-shell/issues/527
# But it does not
# set -U fish_user_paths ~/bin

# This works
# ruby
set -x PATH /var/lib/gems/1.9/bin /var/lib/gems/1.8/bin $PATH

set -x PATH ~/bin ~/code/php/lib/bin ~/code/go/bin ~/go/bin $PATH

set -x PATH $PATH /sbin

. vi-mode.fish

## paths

# This should work according to https://github.com/fish-shell/fish-shell/issues/527
# But it does not
# set -U fish_user_paths ~/bin

# This works
set -x PATH ~/bin ~/code/php/lib/bin /var/lib/gems/1.8/bin ~/go/bin $PATH

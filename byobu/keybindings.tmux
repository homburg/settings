unbind-key -n C-a
set -g prefix ^A
set -g prefix2 ^A
bind a send-prefix

bind-key -r		Space		next-layout
bind-key		|			split-window -h
bind-key		S			split-window -v

bind-key -r		h			select-pane -L
bind-key -r		j			select-pane -D
bind-key -r		k			select-pane -U
bind-key -r		l			select-pane -R

bind-key -r		C-h			resize-pane -L
bind-key -r		C-j			resize-pane -D
bind-key -r		C-k			resize-pane -U
bind-key -r		C-l			resize-pane -R

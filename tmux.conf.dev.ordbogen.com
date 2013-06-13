set -g update-environment -r
set -g prefix C-a
set -g history-limit 10000

bind-key -r		Space	next-layout

bind-key		|		split-window -h
bind-key		S		split-window -v

bind-key		h		select-pane -L
bind-key		j		select-pane -D
bind-key 		k		select-pane -U
bind-key		l		select-pane -R

bind-key -r 		C-h		resize-pane -L
bind-key -r 		C-j		resize-pane -D
bind-key -r 		C-k		resize-pane -U
bind-key -r 		C-l		resize-pane -R

bind-key			o		break-pane

# colors

set -g default-terminal "screen-256color"

set-option -g status-bg black
set-option -g status-fg colour208

set-option -g status-right-bg colour208
set-option -g status-right-fg black

set-option -g pane-border-fg black
set-option -g pane-active-border-fg colour208


# vim: set autoindent :
function fish_prompt
	set_color yellow
	printf '%s' (whoami)
	set_color normal
	printf ' at '

	set_color magenta
	printf '%s' (hostname|cut -d . -f 1)
	set_color normal
	printf ' in '

	set_color $fish_color_cwd
	printf '%s' (prompt_pwd)
	set_color normal

	set -g __fish_git_prompt_color_prefix red
	set -g __fish_git_prompt_color_branch green
	set -g __fish_git_prompt_color_suffix red
	printf " *%s" (__fish_git_prompt)
	set_color normal

	# Line 2
	echo
	if test $VIRTUAL_ENV
		 printf "%s%s%s " \
			 (set_color red)"("(set_color normal) \
			 (set_color blue)(basename $VIRTUAL_ENV)(set_color normal) \
			 (set_color red)")"(set_color normal)
	end


	set_color yellow
	printf '⚡'

	set_color normal
	printf ' '
end

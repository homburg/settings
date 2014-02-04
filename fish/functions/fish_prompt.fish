# vim: set autoindent :
echo "loaded..."
function fish_prompt
	echo "-"
	set_color $fish_color_user
	printf '%s' (whoami)
	set_color $fish_color_prompt_base
	printf ' at '

	set_color $fish_color_hostname
	printf '%s' (hostname|cut -d . -f 1)
	set_color $fish_color_prompt_base
	printf ' in '

	set_color $fish_color_cwd
	printf '%s' (prompt_pwd)
	set_color $fish_color_prompt_base

	set -g __fish_git_prompt_color_prefix $fish_color_git_branch_wrap
	set -g __fish_git_prompt_color_branch $fish_color_git_branch
	set -g __fish_git_prompt_color_suffix $fish_color_git_branch_wrap
	printf " *%s" (__fish_git_prompt)
	set_color $fish_color_prompt_base

	# Line 2
	echo
	if test $VIRTUAL_ENV
		 printf "%s%s%s " \
			 (set_color red)"("(set_color normal) \
			 (set_color blue)(basename $VIRTUAL_ENV)(set_color normal) \
			 (set_color red)")"(set_color normal)
	end


	set_color $fish_color_prompt_prompt
	printf 'λ'

	set_color normal
	printf ' '
end

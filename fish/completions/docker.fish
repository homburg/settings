#completion for docker

function __fish_docker_no_subcommand --description 'Test if docker has yet to be given the subcommand'
	for i in (commandline -opc)
		if contains -- $i attach build commit diff events export history images import info insert inspect kill login logs port top ps pull push restart rm rmi run search start stop tag version wait
			return 1
		end
	end
	return 0
end

function __fish_docker_use_running_container --description 'Test if docker command should have a running container as parameter'
	for i in (commandline -opc)
		if contains -- $i attach stop logs top restart
			return 0
		end
	end
	return 1
end

complete -c docker -n '__fish_docker_use_running_container' -f -a '(docker ps | tail -1 | cut -d " " -f 1 | tr "\n" " " | head -c -1)' --description 'Running container'

complete -f -n '__fish_docker_no_subcommand' -c docker -a 'attach build commit diff events export history images import info insert inspect kill login logs port top ps pull push restart rm rmi run search start stop tag version wait'

function wrk
	if [ 0 -eq (count $argv) ]
		cd ~/code/
		return
	end

	cd ~/code/$argv
end

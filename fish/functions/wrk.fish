function wrk -d "Go to working dir"
	if [ 0 -eq (count $argv) ]
		cd ~/code/
		return
	end

	cd ~/code/$argv
end

function pet
	if test (count $argv) -ge 1 -a $argv[1] = "alte"
		commandline -i (command pet search $argv[2..-1])
	else
		command pet $argv
	end
end

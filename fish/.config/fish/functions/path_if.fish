function path_if
	if status --is-login
		if test -d $argv[1]
			set -x PATH $argv[1] $PATH
		end
	end
end

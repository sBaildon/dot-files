function path_if
	if status --is-login
		if test -d $argv[1]
			for val in $PATH
				if test $val = $argv[1]
					return
				end
			end
			set -x PATH $argv[1] $PATH
		end
	end
end

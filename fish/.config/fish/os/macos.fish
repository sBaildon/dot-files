if not uname | grep Darwin > /dev/null
	exit 0
end

set -x HOMEBREW_NO_EMOJI 1
set -x HOMEBREW_NO_ANALYTICS 1

if status --is-login
	set -l paths /usr/local/opt/curl/bin
	set -l paths /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin/ $paths

	for path in $paths
		if test -d $path
			set -x PATH $path $PATH
		end
	end
end

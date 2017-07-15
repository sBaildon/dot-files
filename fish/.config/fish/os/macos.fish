if not uname | grep Darwin > /dev/null
	exit 0
end

set -x HOMEBREW_NO_EMOJI 1
set -x HOMEBREW_NO_ANALYTICS 1

if status --is-login
	set -x PATH /usr/local/opt/curl/bin $PATH
end

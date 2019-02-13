if not uname | grep Darwin > /dev/null
	exit 0
end

set -x HOMEBREW_NO_EMOJI 1
set -x HOMEBREW_NO_ANALYTICS 1

set fish_user_paths /usr/local/opt/curl/bin $fish_user_paths

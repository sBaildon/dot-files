if ! type --query flyctl
	exit 0
end

set -x FLY_NO_UPDATE_CHECK 1

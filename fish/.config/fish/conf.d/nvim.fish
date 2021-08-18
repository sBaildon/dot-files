if ! type --query nvim
	exit 0
end

set -x EDITOR (type --path nvim)


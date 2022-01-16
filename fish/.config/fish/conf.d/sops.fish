if ! type --query sops
	exit 0
end

set -x SOPS_AGE_KEY_FILE $XDG_DATA_HOME/age/keys.txt

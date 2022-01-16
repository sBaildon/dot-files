if ! type --query yubikey-agent
	exit 0
end

set -x SSH_AUTH_SOCK /tmp/yubikey-agent.sock

if ! type --query gpg
	exit 0
end

if not test -d $GNUPGHOME
	mkdir -p -m 700 $GNUPGHOME
end

# set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)

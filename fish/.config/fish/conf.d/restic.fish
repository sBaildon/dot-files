if type -q op
	set -x RESTIC_PASSWORD_COMMAND "op get item restic --fields password"
end

if not type -q restic
	exit 0
end

if type -q op
	set -x RESTIC_PASSWORD_COMMAND "op get item restic --fields password"
end

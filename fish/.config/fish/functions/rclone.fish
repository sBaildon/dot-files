function rclone
	command sops exec-file --output-type=ini $XDG_CONFIG_HOME/rclone/rclone.conf "rclone --config={} $argv"
end

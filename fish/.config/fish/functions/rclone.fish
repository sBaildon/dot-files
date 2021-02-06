function rclone
	command sops exec-file --output-type=ini ~/.config/rclone/rclone.conf "rclone --config={} $argv"
end

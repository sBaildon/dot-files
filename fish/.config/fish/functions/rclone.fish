function rclone
	command sops exec-file $XDG_CONFIG_HOME/rclone/rclone.conf.ini "rclone --config={} $argv"
end

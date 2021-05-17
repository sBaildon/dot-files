function rclone --wraps=rclone
	command sops exec-file --no-fifo $XDG_CONFIG_HOME/rclone/rclone.conf.ini "rclone --config={} $argv"
end

function redis-cli
	nix-shell --packages redis --run "redis-cli $argv"
end

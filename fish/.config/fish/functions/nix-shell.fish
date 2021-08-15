function nix-shell
	command nix-shell \
		--keep TERMINFO \
		--keep LANG \
		--keep XDG_CONFIG_HOME \
		--keep XDG_DATA_HOME \
		--keep XDG_CACHE_HOME \
		$argv
end

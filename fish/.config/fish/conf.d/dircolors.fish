if not type -q gdircolors
	exit 0
end

eval (gdircolors --c-shell $XDG_CONFIG_HOME/dircolors/config)

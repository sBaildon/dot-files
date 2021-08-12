if test "$TERM" != "xterm-kitty"
	exit 0
end

set -l interface_style (defaults read -g AppleInterfaceStyle 2> /dev/null)
if test -n "$interface_style" -a "$interface_style" = "Dark"
	set theme ~/.config/kitty/base16-darktooth-256.conf
else
	set theme ~/.config/kitty/base16-mexico-light-256.conf
end

kitty @ set-colors --all --configured $theme

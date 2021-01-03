if test -d $XDG_CONFIG_HOME/base16-shell; and status --is-interactive
	# todo: AppleInterfaceThemeChangedNotification
	# https://github.com/mnewt/dotemacs/blob/master/bin/dark-mode-notifier.swift

	set -l theme (defaults read -g AppleInterfaceStyle 2> /dev/null)
	if test -n "$theme" -a "$theme" = "Dark"
		eval sh $XDG_CONFIG_HOME/base16-shell/scripts/base16-tomorrow-night.sh
	else
		eval sh $XDG_CONFIG_HOME/base16-shell/scripts/base16-tomorrow.sh
	end
end

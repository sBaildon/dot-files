# Set colours
if test -d $HOME/.config/base16-shell/
	if status --is-interactive
		eval sh $HOME/.config/base16-shell/scripts/base16-tomorrow-night.sh
	end
	set fish_color_command purple
	set fish_color_param cyan
end

# XDG Specification
set -x XDG_CONFIG_HOME "$HOME"/.config
set -x XDG_CACHE_HOME "$HOME"/.cache
set -x XDG_DATA_HOME "$HOME"/.local/share
set -x XDG_DATA_DIRS /usr/local/share/:/usr/share
set -x XDG_CONFIG_DIRS /etc/xdg

# Configure programs to use XDG spec
set -x ATOM_HOME "$XDG_DATA_HOME"/atom
set -x CADDYPATH "$XDG_DATA_HOME"/caddy
set -x CARGO_HOME "$XDG_DATA_HOME"/cargo
set -x GEM_HOME "$XDG_DATA_HOME"/gem/
set -x GIMP2_DIRECTORY "$XDG_CONFIG_HOME"/gimp
set -x GNUPGHOME "$XDG_DATA_HOME"/gnupg
set -x GTK2_RC_FILES "$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
set -x GTK_RC_FILES "$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
set -x HISTFILE "$XDG_DATA_HOME"/bash/history
set -x ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
set -x INFINIT_DATA_HOME "$XDG_DATA_HOME"/infinit/filesystem/
set -x LESSHISTFILE "$XDG_DATA_HOME"/less/history
set -x LESSKEY "$XDG_CONFIG_HOME"/less/key
set -x NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME"/npm/config
set -x PYTHON_EGG_CACHE "$XDG_CACHE_HOME"/python-eggs
set -x SCREENRC "$XDG_CONFIG_HOME"/screen/screenrc
set -x TERMINFO "$XDG_DATA_HOME"/terminfo
set -x TIGRC_USER "$XDG_CONFIG_HOME"/tig/tigrc
set -x WEECHAT_HOME "$XDG_CONFIG_HOME"/weechat
set -x WINEPREFIX "$XDG_DATA_HOME"/wine

# Load extra files
for f in "$XDG_CONFIG_HOME"/fish/extras/*.fish
	source $f
end

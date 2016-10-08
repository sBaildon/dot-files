# Set colours
if status --is-interactive
	if test -d $HOME/.config/base16-shell/
		eval sh $HOME/.config/base16-shell/scripts/base16-tomorrow-night.sh
	end
end
set fish_color_command purple
set fish_color_param cyan

# XDG Specification
set -x XDG_CONFIG_HOME "$HOME"/.config/
set -x XDG_CACHE_HOME "$HOME"/.cache/
set -x XDG_DATA_HOME "$HOME"/.local/share/
set -x XDG_DATA_DIRS /usr/local/share/:/usr/share/
set -x XDG_CONFIG_DIRS /etc/xdg

# Configure programs to use XDG spec
set -x NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME"npm/config
set -x GEM_HOME "$XDG_DATA_HOME"gem/
set -x GNUPGHOME "$XDG_DATA_HOME"gnupg
set -x INFINIT_DATA_HOME "$XDG_DATA_HOME"infinit/filesystem/
set -x LESSHISTFILE "$XDG_DATA_HOME"less/lesshst

# Specific options for me
set -x projects "$HOME"/Projects/
set -x GOPATH "$projects"golang/

# Set path
set -x PATH /opt/local/bin /opt/local/sbin $PATH
set -x PATH "$GOPATH"bin $PATH
set -x PATH "$GEM_HOME"bin $PATH

# Load extra files
for f in "$XDG_CONFIG_HOME"fish/extras/*.fish
	source $f
end

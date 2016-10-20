# Set colours
if test -d $HOME/.config/base16-shell/
	if status --is-interactive
		eval sh $HOME/.config/base16-shell/scripts/base16-tomorrow-night.sh
	end
	set fish_color_command purple
	set fish_color_param cyan
end

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
set -x LESSHISTFILE "$XDG_DATA_HOME"less/history
set -x LESSKEY "$XDG_CONFIG_HOME"less/key
set -x CARGO_HOME "$XDG_DATA_HOME"cargo
set -x GIMP2_DIRECTORY "$XDG_CONFIG_HOME"gimp
set -x TMUX_TMPDIR "$XDG_RUNTIME_DIR"tmux
set -x WEECHAT_HOME "$XDG_CONFIG_HOME"weechat
set -x ATOM_HOME "$XDG_DATA_HOME"atom
set -x GTK2_RC_FILES "$XDG_CONFIG_HOME"gtk-2.0/gtkrc
set -x GTK_RC_FILES "$XDG_CONFIG_HOME"gtk-1.0/gtkrc
set -x SCREENRC "$XDG_CONFIG_HOME"screen/screenrc
set -x PYTHON_EGG_CACHE "$XDG_CACHE_HOME"python-eggs
set -x WINEPREFIX "$XDG_DATA_HOME"wine
set -x XAUTHORITY "$XDG_RUNTIME_DIR"X11/xauthority

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

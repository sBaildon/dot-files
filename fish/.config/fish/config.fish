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
set -x CUDA_CACHE_PATH "$XDG_CACHE_HOME"/nv
set -x GEM_HOME "$XDG_DATA_HOME"/gem
set -x GIMP2_DIRECTORY "$XDG_CONFIG_HOME"/gimp
set -x GNUPGHOME "$XDG_DATA_HOME"/gnupg
set -x GRADLE_USER_HOME "$XDG_DATA_HOME"/gradle
set -x GTK2_RC_FILES "$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
set -x GTK_RC_FILES "$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
set -x HISTFILE "$XDG_DATA_HOME"/bash/history
set -x ICEAUTHORITY "$XDG_CACHE_HOME"/ICEauthority
set -x INFINIT_DATA_HOME "$XDG_DATA_HOME"/infinit/filesystem
set -x LESSHISTFILE "$XDG_DATA_HOME"/less/history
set -x LESSKEY "$XDG_CONFIG_HOME"/less/key
set -x N_PREFIX "$XDG_DATA_HOME"
set -x NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME"/npm/config
set -x PASSWORD_STORE_DIR "$XDG_DATA_HOME"/pass
set -x PGPASSFILE "$XDG_CONFIG_HOME"/pg/pgpass
set -x PGSERVICEFILE "$XDG_CONFIG_HOME"/pg/pg_service.conf
set -x PSQLRC "$XDG_CONFIG_HOME"/pg/psqlrc
set -x PSQL_HISTORY "$XDG_CACHE_HOME"/pg/psql_history
set -x PYTHON_EGG_CACHE "$XDG_CACHE_HOME"/python-eggs
set -x RIPGREP_CONFIG_PATH "$XDG_CONFIG_HOME"/rg/.ripgreprc
set -x RUSTUP_HOME "$XDG_DATA_HOME"/rustup
set -x SCREENRC "$XDG_CONFIG_HOME"/screen/screenrc
set -x TERMINFO "$XDG_DATA_HOME"/terminfo
set -x TIGRC_USER "$XDG_CONFIG_HOME"/tig/tigrc
set -x TMUX_PLUGIN_MANAGER_PATH "$XDG_DATA_HOME"/tmux/plugins
set -x UNISON "$XDG_DATA_HOME"/unison
set -x WEECHAT_HOME "$XDG_CONFIG_HOME"/weechat
set -x WGETRC "$XDG_CONFIG_HOME"/wget/config
set -x WINEPREFIX "$XDG_DATA_HOME"/wine
set -x __GL_SHADER_DISK_CACHE_PATH "$XDG_CACHE_HOME"/nv

# Other
set -x GOPATH ~/Projects/golang
set -x ANSIBLE_NOCOWS 1
if type -q rustc
	set -x RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src
end

# Path stuff
path_if "$GOPATH"/bin
path_if "$GEM_HOME"/bin
path_if "$XDG_DATA_HOME"/npm/bin
path_if "$XDG_DATA_HOME"/cargo/bin
path_if "$XDG_DATA_HOME"/bin

set -x PATH node_modules/.bin $PATH
# Load extra files
for f in "$XDG_CONFIG_HOME"/fish/{extras,os}/*.fish
	source $f
end

# Set colours
if test -d $XDG_CONFIG_HOME/base16-shell; and status --is-interactive
	eval sh $XDG_CONFIG_HOME/base16-shell/scripts/base16-tomorrow.sh
end
set fish_color_command purple
set fish_color_param cyan

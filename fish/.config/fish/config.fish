# XDG Specification
set -x XDG_CONFIG_HOME "$HOME"/.config
set -x XDG_CACHE_HOME "$HOME"/.cache
set -x XDG_DATA_HOME "$HOME"/.local/share
set -x XDG_DATA_DIRS /usr/local/share/:/usr/share
set -x XDG_CONFIG_DIRS /etc/xdg

# Configure programs to use XDG spec
set -x ATOM_HOME "$XDG_DATA_HOME"/atom
set -x AWS_SHARED_CREDENTIALS_FILE "$XDG_CONFIG_HOME"/aws/credentials
set -x AWS_CONFIG_FILE "$XDG_CONFIG_HOME"/aws/config
set -x CADDYPATH "$XDG_DATA_HOME"/caddy
set -x CARGO_HOME "$XDG_DATA_HOME"/cargo
set -x CUDA_CACHE_PATH "$XDG_CACHE_HOME"/nv
set -x DOCKER_CONFIG "$XDG_CONFIG_HOME"/docker
set -x GIMP2_DIRECTORY "$XDG_CONFIG_HOME"/gimp
set -x GNUPGHOME "$XDG_DATA_HOME"/gnupg
set -x GRADLE_USER_HOME "$XDG_DATA_HOME"/gradle
set -x GTK2_RC_FILES "$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
set -x GTK_RC_FILES "$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
set -x HELM_HOME "$XDG_CONFIG_HOME"/helm
set -x HISTFILE "$XDG_DATA_HOME"/bash/history
set -x HTTPIE_CONFIG_DIR "$XDG_CONFIG_HOME"/httpie
set -x ICEAUTHORITY "$XDG_CACHE_HOME"/ICEauthority
set -x INFINIT_DATA_HOME "$XDG_DATA_HOME"/infinit/filesystem
set -x LESSHISTFILE "$XDG_DATA_HOME"/less/history
set -x LESSKEY "$XDG_CONFIG_HOME"/less/key
set -x MINIKUBE_HOME "$XDG_CONFIG_HOME"/minikube
set -x N_PREFIX "$XDG_DATA_HOME"
set -x NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME"/npm/config
set -x NPM_CONFIG_DEVDIR "$XDG_CACHE_HOME"/npm/node-gyp
set -x NODE_REPL_HISTORY "$XDG_CACHE_HOME"/node/repl_history
set -x PASSWORD_STORE_DIR "$XDG_DATA_HOME"/pass
set -x PGPASSFILE "$XDG_CONFIG_HOME"/pg/pgpass
set -x PGSERVICEFILE "$XDG_CONFIG_HOME"/pg/pg_service.conf
set -x PSQLRC "$XDG_CONFIG_HOME"/pg/psqlrc
set -x PSQL_HISTORY "$XDG_CACHE_HOME"/pg/psql_history
set -x PYENV_ROOT "$XDG_DATA_HOME"/pyenv
set -x PYTHON_EGG_CACHE "$XDG_CACHE_HOME"/python-eggs
set -x RBENV_ROOT "$XDG_DATA_HOME"/rbenv
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
set -x DOTNET_CLI_TELEMETRY_OPTOUT 1
set -x AWS_PROFILE personal
if type -q rustc
	set -x RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src
end

set -x FZF_DEFAULT_OPTS "--color=light --multi"

# Path stuff
set fish_user_paths ~/.local/bin
set fish_user_paths "$GOPATH"/bin $fish_user_paths
set fish_user_paths "$XDG_DATA_HOME"/npm/bin $fish_user_paths
set fish_user_paths "$XDG_DATA_HOME"/cargo/bin $fish_user_paths
set fish_user_paths "$XDG_DATA_HOME"/bin $fish_user_paths
set fish_user_paths "$PYENV_ROOT"/shims $fish_user_paths
set fish_user_paths "$RBENV_ROOT"/shims $fish_user_paths

# Load extra files
for f in "$XDG_CONFIG_HOME"/fish/{extras,os}/*.fish
	source $f
end

# Use fisher
if not functions -q fisher
	set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
	curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
	fish -c fisher
end

if type -q gpg; and not test -d $GNUPGHOME
	mkdir -p $GNUPGHOME
end

# Set colours
if test -d $XDG_CONFIG_HOME/base16-shell; and status --is-interactive
	eval sh $XDG_CONFIG_HOME/base16-shell/scripts/base16-tomorrow.sh
end
set fish_color_command purple
set fish_color_param cyan


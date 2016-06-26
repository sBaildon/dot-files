# Set colours
eval sh $HOME/.config/base16-shell/base16-tomorrow.dark.sh

# XDG Specification
set -x XDG_CONFIG_HOME "$HOME"/.config/
set -x XDG_CACHE_HOME "$HOME"/.cache/
set -x XDG_DATA_HOME "$HOME"/.local/share
set -x XDG_DATA_DIRS /usr/local/share/:/usr/share/
set -x XDG_CONFIG_DIRS /etc/xdg

# Configure programs to use XDG spec
set -x NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME"/npm/config
set -x GEM_HOME "$XDG_DATA_HOME"/gem
set -x GNUPGNOME "$XDG_DATA_HOME"/gnupg
set -x INFINIT_DATA_HOME "$XDG_DATA_HOME"infinit/filesystem/

# Specific options for me
set -x projects "$HOME"/Projects/
set -x work "$projects"snakeway/
set -x GOPATH "$projects"golang

# Set path
set -U fish_user_paths "$GOPATH"/bin /opt/local/bin /opt/local/sbin

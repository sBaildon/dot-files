set -x XDG_CONFIG_HOME "$HOME/.config/"
set -x XDG_CACHE_HOME "$HOME/.cache/"
set -x XDG_DATA_HOME "$HOME/.local/share"

set -x NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/config"
set -x GEM_HOME "$XDG_DATA_HOME/gem"
set -x GNUPGNOME "$XDG_DATA_HOME/gnupg"

set -x projects "$HOME/Projects/"
set -x work "$projects/snakeway/"

set -U fish_user_paths /opt/local/bin /opt/local/sbin

set fish_user_paths ~/.local/bin $fish_user_paths
set fish_user_paths "$GOPATH"/bin $fish_user_paths
set fish_user_paths "$XDG_DATA_HOME"/npm/bin $fish_user_paths
set fish_user_paths "$XDG_DATA_HOME"/cargo/bin $fish_user_paths
set fish_user_paths "$XDG_DATA_HOME"/bin $fish_user_paths
set fish_user_paths (python3 -c 'import site; print(site.USER_BASE + "/bin")' | tr -d '\n') $fish_user_paths
set fish_user_paths ~/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/ $fish_user_paths

fish_add_path ~/.local/bin
fish_add_path "$GOPATH"/bin
fish_add_path "$XDG_DATA_HOME"/npm/bin
fish_add_path "$XDG_DATA_HOME"/cargo/bin
fish_add_path "$XDG_DATA_HOME"/bin
fish_add_path (python3 -c 'import site; print(site.USER_BASE + "/bin")' | tr -d '\n')
fish_add_path ~/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/

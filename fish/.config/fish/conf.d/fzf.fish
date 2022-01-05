if type --query fd
	set -x FZF_DEFAULT_COMMAND 'fd --color=always --type file --follow --hidden --exclude .git'
	set -x FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND
	set -x FZF_ALT_C_COMMAND 'fd --color=always --type directory'
end

set -x FZF_DEFAULT_OPTS
set -x --append FZF_DEFAULT_OPTS --color=fg:-1,hl:3,gutter:0,query:7:regular,fg+:21:regular,bg+:18,hl+:3:reverse,info:8,border:8
set -x --append FZF_DEFAULT_OPTS --multi
set -x --append FZF_DEFAULT_OPTS --border=sharp
set -x --append FZF_DEFAULT_OPTS --preview-window=border-sharp
set -x --append FZF_DEFAULT_OPTS --info=inline
set -x --append FZF_DEFAULT_OPTS --ansi

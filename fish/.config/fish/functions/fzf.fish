function fzf
	command fzf \
		--color=fg:-1,hl:3,gutter:0,query:7:regular,fg+:21:regular,bg+:18,hl+:3:reverse,info:8,border:8 \
		--multi \
		--border=sharp \
		--info=inline \
		$argv
end

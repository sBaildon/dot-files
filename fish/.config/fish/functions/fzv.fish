function fzv
	set -l files (fd $argv | fzf --preview="bat --color=always {}")

	if test -n "$files"
		vim $files
	end
end

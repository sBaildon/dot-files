function fzv
	set -l files (fd $argv | fzf)

	if test -n "$files"
		vim $files
	end
end

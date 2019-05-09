function shortmv
	set -l dest (dirname $argv[1])
	mv $argv[1] $dest"/"$argv[2]
end

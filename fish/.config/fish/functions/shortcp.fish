function shortcp
	set -l dest (dirname $argv[1])
	cp $argv[1] $dest"/"$argv[2]
end

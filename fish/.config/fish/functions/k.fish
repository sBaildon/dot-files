function k
	switch (echo $argv[1])
	case "describe"
		kubectl describe pod (kubectl get pods | rg $argv[2] | fzf | awk '{print $1}') | rg "Image:"
	end
end


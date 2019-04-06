function k
	switch (echo $argv[1])
	case "describe"
		kubectl describe pod (kubectl get pods | rg $argv[2] | awk '{print $1}'  | fzf) | rg "Image:"
	end
end


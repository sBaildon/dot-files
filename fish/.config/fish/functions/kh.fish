function kh
	ssh-keygen -R [$argv[1]]:$argv[2]
	ssh-keyscan -p $argv[2] $argv[1] >> ~/.ssh/known_hosts
end

function notify
	set -l title (printf $argv[1] | base64)
	set -l body (printf $argv[2] | base64)


	printf "\x1b]99;i=1:d=0:e=1;$title\x1b\\"
	printf "\x1b]99;i=1:d=1:p=body:e=1;$body\x1b\\"
end

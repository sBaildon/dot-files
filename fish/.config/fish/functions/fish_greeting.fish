function fish_greeting
	if type fortune > /dev/null 2>&1
		fortune -as | sed "s/^/"(tput sitm)"/" | sed "s/\$/"(tput sgr0)"/"
	end
end

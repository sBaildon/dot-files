function fish_greeting
	if type fortune > /dev/null
		fortune -as | sed "s/^/"(tput sitm)"/" | sed "s/\$/"(tput sgr0)"/"
	end
end

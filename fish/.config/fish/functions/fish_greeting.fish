function fish_greeting
	if type fortune > /dev/null
		echo (tput sitm)(fortune -as)(tput sgr0)
	end
end

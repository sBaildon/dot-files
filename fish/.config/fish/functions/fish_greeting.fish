function fish_greeting
	if type fortune > /dev/null
		fortune -as
	else
		echo "Fortune not installed"
	end
end

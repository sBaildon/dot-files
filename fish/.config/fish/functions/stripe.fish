function stripe
	docker run --rm -it -v $XDG_CONFIG_HOME/stripe:/root/.config/stripe stripe/stripe-cli:v1.7.0 $argv
end

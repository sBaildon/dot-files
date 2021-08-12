local npairs = require('nvim-autopairs')

npairs.setup({
	check_ts = true
})

require("nvim-autopairs.completion.compe").setup({
	map_cr = true, --  map <CR> on insert mode
	map_complete = true -- it will auto insert `(` after select function or method item
})


local endwise = require("nvim-autopairs.ts-rule").endwise

npairs.add_rules({
	endwise(' do$', 'end', 'elixir', 'do_block')
})


local npairs = require('nvim-autopairs')

npairs.setup({
	check_ts = true
})

-- local cmp_available = pcall(require, "cmp")
local cmp_available = false

if cmp_available then
	require("nvim-autopairs.completion.cmp").setup({
		map_cr = true, --  map <CR> on insert mode
		map_complete = true, -- it will auto insert `(` after select function or method item
	})
end

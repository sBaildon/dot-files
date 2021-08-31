local cmp = require("cmp")

cmp.setup({
	mapping = {
		['<C-Space>'] = cmp.mapping.complete()
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "buffer "},
		{ name = "path" },
	}
})

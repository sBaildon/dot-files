local cmp = require("cmp")

cmp.setup({
	mapping = {
		['<C-Space>'] = cmp.mapping.complete()
	},
	documentation = {
		border = { '┌', '─', '┐', '│', '┘', '─', '└', '│' },
		winhighlight = 'NormalFloat:Pmenu,FloatBorder:Pmenu'
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "buffer "},
		{ name = "path" },
	}
})

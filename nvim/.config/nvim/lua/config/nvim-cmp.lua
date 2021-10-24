local cmp = require("cmp")

local opts = {
	mapping = {
		['<C-Space>'] = cmp.mapping.complete()
	},
	documentation = {
		border = { '┌', '─', '┐', '│', '┘', '─', '└', '│' },
		winhighlight = 'NormalFloat:Pmenu,FloatBorder:Pmenu'
	},
	completion = {
		completeopt = 'menu,menuone,noinsert',
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "buffer "},
		{ name = "path" },
	}
}

local lspkind_available, lspkind = pcall(require, "lspkind")
if lspkind_available then
	opts.formatting = {
		format = lspkind.cmp_format()
	}
end

cmp.setup(opts)

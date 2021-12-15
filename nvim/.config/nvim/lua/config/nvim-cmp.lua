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
	experimental = {
		ghost_text = true
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

local autopairs_available, autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if autopairs_available then
	cmp.event:on( 'confirm_done', autopairs.on_confirm_done({ map_char = { tex = '' } }))
end


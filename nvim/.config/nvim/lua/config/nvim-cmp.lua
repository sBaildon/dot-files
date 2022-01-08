local present, cmp = pcall(require, "cmp")

if not present then return end

local opts = {
	mapping = {
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		['<C-y>'] = cmp.config.disable,
		['<CR>'] = cmp.mapping.confirm({ select = true }),
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
		{ name = 'luasnip' },
		{ name = 'treesitter' }
	},
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			require'luasnip'.lsp_expand(args.body)
		end,
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


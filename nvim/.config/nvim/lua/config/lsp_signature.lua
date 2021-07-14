require('lsp_signature').on_attach({
	bind = false,
	handler_opts = {
		border = "single"
	},
	use_lspsaga = false,
	hint_enable = false,
	max_width = 300,
	max_height = 300,
})

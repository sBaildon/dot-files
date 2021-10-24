require("indent_blankline").setup({
	show_trailing_blankline_indent = true,
	show_first_indent_level = true,
	use_treesitter = true,
	filetype_exclude = {"help", "terminal", "packer", "NvimTree", "Outline", "lspinfo", "Trouble", "lsp-installer"}
	-- show_current_context = true -- not working rn. breaks colourscheme entirely
})

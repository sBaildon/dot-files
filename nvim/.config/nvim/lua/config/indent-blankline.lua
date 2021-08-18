require("indent_blankline").setup({
	show_trailing_blankline_indent = false,
	show_first_indent_level = true,
	use_treesitter = true,
	filetype_exclude = {"help", "terminal", "packer"}
	-- show_current_context = true -- not working rn. breaks colourscheme entirely
})
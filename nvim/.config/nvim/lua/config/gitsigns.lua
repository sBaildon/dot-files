require('gitsigns').setup({
	current_line_blame = true,
	current_line_blame_position = 'right_align',
	signs = {
		add = { text = "+" },
		change = { text = "~" },
		delete = { text = "-" },
		topdelete = { text = "‾" },
		changedelete = { text = "~" },
	}
})

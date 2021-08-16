require('gitsigns').setup({
	current_line_blame = true,
	current_line_blame_position = 'eol',
	signs = {
		add = { text = "▍" },
		change = { text = "▍" },
		delete = { text = "▍" },
		topdelete = { text = "‾" },
		changedelete = { text = "▍" },
	},

})

local present, gitsigns = pcall(require, "gitsigns")

if present then
	gitsigns.setup({
		current_line_blame = true,
		current_line_blame_opts = {
			virt_text = true,
			virt_text_pos = "eol"
		},
		signs = {
			add = { text = "▍" },
			change = { text = "▍" },
			delete = { text = "▍" },
			topdelete = { text = "‾" },
			changedelete = { text = "▍" },
		},

	})
end

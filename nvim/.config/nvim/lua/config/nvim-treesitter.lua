require('nvim-treesitter.configs').setup({
	ensure_installed = "maintained",
	highlight = { enable = true },
	indent = { enable = true },
	refactor = {
		highlight_current_scope = { enable = false },
		highlight_definitions = { enable = true }
	},
	playground = {
		enable = true,

	},
	autopairs = {
		enable = true
	},
	context_commentstring = {
		enable = true
	}
})

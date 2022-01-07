local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then return end

treesitter.setup({
	ensure_installed = "maintained",
	highlight = { enable = true },
	indent = { enable = true },
	textobjects = {
		select = {
			enable = true,

			keymaps = {
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
			}
		},
		swap = {
			enable = true,
			swap_next = {
				["<leader>a"] = "@parameter.inner",
			},
			swap_previous = {
				["<leader>A"] = "@parameter.inner",
			}
		},
		move = {
			enable = true,
			set_jumps = true,
			goto_next_start = {
				["]m"] = "@function.outer",
				["]]"] = "@class.outer",
			},
			goto_next_end = {
				["]M"] = "@function.outer",
				["]["] = "@class.outer",

			},
			goto_previous_start = {
				["[m"] = "@function.outer",
				["[["] = "@class.outer",

			},
			goto_previous_end = {
				["[M"] = "@function.outer",
				["[]"] = "@class.outer",

			}
		}
	}
	--[[ playground = {
		enable = true,

	}, ]]
	--[[ autopairs = {
		enable = true
	},
	context_commentstring = {
		enable = true
	} ]]
})

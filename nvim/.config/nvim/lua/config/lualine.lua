local present, gps = pcall(require, "nvim-gps")
local _, lsp_status = pcall(require, "lsp-status")


lsp_status.config({
	indicator_errors = '❗',
	indicator_warnings = '⚠️',
	indicator_info = '⚡',
	indicator_hint = '💡',
	indicator_separator = '',
	indicator_ok = '',
	status_symbol = '',
})

local lualine_c
if present then
	lualine_c =  {
		{ lsp_status.status },
		"filename",
		{ gps.get_location, condition = gps.is_available, lower = false },

	}
else
	lualine_c =  {
		{ lsp_status.status },
		"filename"
	}
end

local function indentation()
	local indent_style = vim.api.nvim_buf_get_option(0, "expandtab") == true and "Spaces" or "Tabs"
	local indent_size = vim.api.nvim_buf_get_option(0, "tabstop")

	return indent_style .. ": " .. indent_size
end

local lualine_b = {
	"branch",
	{ 'diff', color_added = "#008080", color_modified = "#800080", color_removed = "#800000" }
}

require('lualine').setup({
	options = {
		icons_enabled = false,
		lower = true,
		section_separators = {'', ''},
		component_separators = {'', ''},
		theme = "base16_256",
		disabled_filetypes = {
			"outline"
		}
	},
	sections = {
		lualine_a = lualine_a,
		lualine_b = lualine_b,
		lualine_c = lualine_c,
		lualine_z = {
			"progress",
			"location"

		},
		lualine_x = {
			indentation,
			"encoding",
			"fileformat",
			"filetype",
			separator = "│"
		}
	}
})

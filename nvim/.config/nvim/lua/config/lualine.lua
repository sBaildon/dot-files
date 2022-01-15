local present, lualine = pcall(require, "lualine")

if not present then return end

local gps_present, gps = pcall(require, "nvim-gps")
local lsp_present, lsp_status = pcall(require, "lsp-status")


local lualine_c = {}

if lsp_present then
	lsp_status.config({
		indicator_ok = '',
		status_symbol = '',
	})

	table.insert(lualine_c, { lsp_status.status})
end

table.insert(lualine_c, "filename")

if gps_present then
	table.insert(lualine_c, { gps.get_location, condition = gps.is_available, lower = false })
end

local function indentation()
	local indent_style = vim.api.nvim_buf_get_option(0, "expandtab") == true and "Spaces" or "Tabs"
	local indent_size = vim.api.nvim_buf_get_option(0, "tabstop")

	return indent_style .. ": " .. indent_size
end

local lualine_b = {
	"branch"
}

lualine.setup({
	options = {
		icons_enabled = true,
		fmt = string.lower,
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
			"filetype"
		}
	}
})

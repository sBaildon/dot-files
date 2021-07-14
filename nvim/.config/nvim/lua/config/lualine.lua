require('lualine').setup({
	options = {
		icons_enabled = false,
		lower = true,
		component_separators = {'', ''},
		section_separators = {'', ''},
		theme = "base16_256"
	},
	sections = {
		lualine_c = {
			"filename",
			{ 'diff', color_added = "#008080", color_modified = "#800080", color_removed = "#800000" }
		}
	}

})

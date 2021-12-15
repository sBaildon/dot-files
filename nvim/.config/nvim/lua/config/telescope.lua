local present, telescope = pcall(require, "telescope")

if present then
	telescope.setup({
		defaults = {
			borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
		}
	})
end


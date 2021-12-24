local present, nvim_tree = pcall(require, "nvim-tree")

if present then
	nvim_tree.setup({
		view = {
			auto_resize = false
		},
		filters = {
			dotfiles = true
		},
		git = {
			ignore = true
		}
	})
end


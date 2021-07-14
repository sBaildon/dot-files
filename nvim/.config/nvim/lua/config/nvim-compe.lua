require('compe').setup({
	enabled = true;
	autocomplete = true;
	debug = false;
	documentation = true;
	min_length = 1;
	preselect = 'enable';
	max_menu_width = 0;

	source = {
		path = true;
		buffer = true;
		calc = true;
		nvim_lsp = true;
		nvim_lua = false;
		nvim_treesitter = true;
	};
})

require('lspsaga').init_lsp_saga({
	warn_sign = 'W',
	error_sign = 'E',
	code_action_prompt = {
		enable = true,
		sign = true,
		virtual_text = false
	}
})

vim.api.nvim_set_keymap('n', '<Leader>ca', [[<Cmd>lua require('lspsaga.codeaction').code_action()<CR>]], { noremap = true, silent = true })


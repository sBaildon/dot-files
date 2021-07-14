require('lspsaga').init_lsp_saga()

vim.api.nvim_set_keymap('n', '<Leader>ca', [[<Cmd>lua require('lspsaga.codeaction').code_action()<CR>]], { noremap = true, silent = true })


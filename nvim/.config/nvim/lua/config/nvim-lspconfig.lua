require('lspconfig').gopls.setup({})

require('lspconfig').elixirls.setup({
	cmd = { vim.loop.os_homedir().."/.nix-profile/bin/elixir-ls" };
})

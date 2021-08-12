local on_attach = function(client, bufnr)
  vim.lsp.handlers["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = "single"})
  --vim.lsp.handlers["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = "single"})
end

require('lspconfig').gopls.setup({
	on_attach = on_attach
})

require('lspconfig').yamlls.setup({
	on_attach = on_attach
})

require('lspconfig').elixirls.setup({
	cmd = { vim.loop.os_homedir().."/.nix-profile/bin/elixir-ls" },
	on_attach = on_attach
})

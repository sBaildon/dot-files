local present, virtualtypes = pcall(require, "virtualtypes")

local on_attach = function(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	local opts = {
		noremap = true,
		silent = true
	}


	vim.lsp.handlers["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = "single"})
	vim.lsp.handlers["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signatureHelp, {border = "single"})
	vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
		vim.lsp.diagnostic.on_publish_diagnostics, {
			underline = true,
			virtual_text = false
		}
	)

	buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
	buf_set_keymap('n', '<C-u>', '<cmd>lua vim.diagnostic.open_float({header = false, border = "single"})<CR>', opts)
	buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
	buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev( { float = { header = false, border = "single" } })<CR>', opts)
	buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next( { float = { header = false, border = "single" } })<CR>', opts)
	buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
	buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
	buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
	buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
	buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

	if client.resolved_capabilities.document_formatting then
		buf_set_keymap("n", "<leader>gf", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
		vim.api.nvim_command[[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
		-- vim.api.nvim_command[[autocmd InsertLeave <buffer> lua vim.lsp.buf.formatting_sync()]]
	elseif client.resolved_capabilities.document_range_formatting then
		buf_set_keymap("n", "<leader>gf", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
		vim.api.nvim_command[[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
	end

	if present then
		virtualtypes.on_attach(client, bufnr)
	end

end

local capabilities = vim.lsp.protocol.make_client_capabilities()

local cmp_present = pcall(require, "cmp")
if cmp_present then
	capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
end

local present, lspconfig = pcall(require, "lspconfig")

if present then
	lspconfig.gopls.setup({
		on_attach = on_attach,
		capabilities = capabilities
	})

	lspconfig.terraformls.setup({
		on_attach = on_attach
	})

	--[[ require('lspconfig').yamlls.setup({
		on_attach = on_attach
	}) ]]

	lspconfig.elixirls.setup({
		cmd = { "elixir-ls" },
		on_attach = on_attach,
	--[[ on_attach = lsp_status.on_attach,
		capabilities = lsp_status.capabilities ]]
	})

	lspconfig.tsserver.setup({
		on_attach = on_attach,
		capabilities = capabilities
	})
end

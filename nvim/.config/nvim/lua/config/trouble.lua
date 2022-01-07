local present, trouble = pcall(require, "trouble")

if not present then return end

trouble.setup({
	use_lsp_diagnostic_signs = false
})

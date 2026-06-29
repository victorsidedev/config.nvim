local function setup_lsp_keymaps()
	vim.api.nvim_create_autocmd("LspAttach", {
		callback = function(event)
			local opts = { buffer = event.buf }

			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
		end,
	})
end

-- mason download language servers
-- mason-lspconfig bridge plugin scans these language server binaries and automatically executes vim.lsp.enable()
-- neovim auto configures from lsp/ folder
return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			setup_lsp_keymaps()
		end,
	},
}

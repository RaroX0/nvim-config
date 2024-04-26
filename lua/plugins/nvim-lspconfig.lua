return {
	"neovim/nvim-lspconfig",
	config=function()
		local lspconfig = require("lspconfig")
		require("neodev").setup({})
		lspconfig.lua_ls.setup({
			filetype = { "lua" }
		})
		lspconfig.clangd.setup({
			filetype = { "c", "cpp" }
		})
		lspconfig.pylsp.setup({
			filetype = { "python" }
		})
		lspconfig.tsserver.setup({
			filetype = { "javascript", "typescript" }
		})
		lspconfig.jsonls.setup({
			filetype = { "json" }
		})
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
		vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
		vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
	end
}

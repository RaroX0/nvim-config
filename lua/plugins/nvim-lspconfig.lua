return {
	"neovim/nvim-lspconfig",
	config=function()
		local lspconfig = require("lspconfig")
		require("neodev").setup({})
		lspconfig.lua_ls.setup({})
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
		vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, {})
		vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
	end
}

return {
	"mrcjkb/rustaceanvim",
	version = "^4",
	lazy = true,
	ft = { 'rust' },
	config = function ()
		vim.api.nvim_create_autocmd("LspAttach",
			{
				callback = function (args)
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					client.server_capabilities.semanticTokensProvider = nil
				end
			}
		)
	end
}

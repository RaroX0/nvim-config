local cmp = require("cmp")

return function()
	cmp.setup({
		snippet = {
			expand = function(args)
				vim.fn["vsnip#anonymous"](args.body)
			end
		},
		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered()
		},
		mapping = cmp.mapping.preset.insert({
			['<C-Space>'] = cmp.mapping.complete(),
			['<C-e>'] = cmp.mapping.abort(),
			['<Tab>'] = cmp.mapping.confirm({select = true}),
			['<Cr>'] = cmp.mapping.confirm({select = true})
		}),
		sources = cmp.config.sources(
			{
				{name = 'nvim_lsp'},
				{name = 'vsnip'}
			}
		)
	})
end

return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function ()
    	require("nvim-autopairs").setup({
				disable_filetype = {"TelescopePrompt", "vim"}
		})
    end
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
}

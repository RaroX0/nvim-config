local config = function()
	require("nvim-treesitter.configs").setup({
		ensure_installed={"c", "cpp", "lua", "vim", "vimdoc", "rust"},
		sync_install=false,
		highlight={enable=true},
		indent={enable=true}
	})
end

return config

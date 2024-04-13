return {
	"nvim-treesitter/nvim-treesitter",
	build=":TSUpdate",
	config=require("custom.configs.tree-sitter")
}

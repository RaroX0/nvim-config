vim.g.mapleader=" "
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

--Lazy.nvim init~
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

require("custom.configs.cmp_config")()

require("custom.keymaps")

vim.wo.number = true
vim.wo.relativenumber = true

vim.cmd.colorscheme "catppuccin"
vim.api.nvim_set_hl(0, "Normal", {bg="none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg="none"})
vim.api.nvim_set_hl(0, "NvimTreeNormal", {bg="none"})
vim.api.nvim_set_hl(0, "LineNr", {fg="pink"})

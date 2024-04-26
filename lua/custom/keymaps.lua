local opts = { noremap = true, silent = true }
local set_keymap = vim.api.nvim_set_keymap
local keymap = vim.keymap.set
local ts_builtin = require('telescope.builtin')
local cmp = require('cmp')

local keymaps = {
	-- I'm Dumb binds:
	set_keymap('i', '<C-c>', [[<Esc>]], opts),
	keymap("n", '<leader>d', vim.diagnostic.open_float, { noremap = false, silent = true }),
	-- NvimTree binds: 
	set_keymap('n', '<leader>n', [[:NvimTreeToggle <CR>]], opts),
	set_keymap('n', '<leader>h', [[:NvimTreeFocus <CR>]], opts),
	-- xClip binds: 
	set_keymap('x', '<leader>y', [["+y gv "*y]], opts),
	-- Telescope binds:
	keymap('n', '<leader>ff', ts_builtin.find_files, opts),
	keymap('n', '<leader>fs', ts_builtin.live_grep, {}),
	-- Cmp binds:
	keymap("i", "<C-k>", cmp.mapping.select_prev_item(), {noremap = false, silent = true}),
	keymap("i", "<C-j>", cmp.mapping.select_next_item(), {noremap = false, silent = true})
}

return keymaps

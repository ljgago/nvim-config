-- ===========
-- Keymappings
-- ===========

vim.g.mapleader = ' '
-- Explorer
vim.api.nvim_set_keymap('n', '<Leader><SPACE>', ':NERDTreeToggle\n', { noremap = true })
-- Search
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Files\n', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>fg', ':GFiles\n', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>sp', ':Rg\n', { noremap = true })
-- Buffers
vim.api.nvim_set_keymap('n', '<Leader>bb', ':Buffers\n', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>bn', ':bnext\n', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>bp', ':bprevious\n', { noremap = true })
-- Open
vim.api.nvim_set_keymap('n', '<Leader>on', ':NERDTreeToggle\n', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>ot', ':terminal\n', { noremap = true })
-- Window
vim.api.nvim_set_keymap('n', '<Leader>ws', ':split\n', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>wv', ':vsplit\n', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>wh', '<C-w>H', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>wj', '<C-w>J', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>wk', '<C-w>K', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>wl', '<C-w>L', { noremap = true })


vim.api.nvim_set_keymap('x', 'ga', '<Plug>(EasyAlign)', {})
vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)', {})

--vim.api.nvim_exec([[
--" Start interactive EasyAlign in visual mode (e.g. vipga)
--xmap ga <Plug>(EasyAlign)
--
--" Start interactive EasyAlign for a motion/text object (e.g. gaip)
--nmap ga <Plug>(EasyAlign)
--]], true)

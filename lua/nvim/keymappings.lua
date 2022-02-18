-- ===========
-- Keymappings
-- ===========

local M = {}

function M.load(keymaps)
  for _, keymap in pairs(keymaps) do
    local mode, key, val, opts = unpack(keymap)
    vim.api.nvim_set_keymap(mode, key, val, opts)
  end
end

function M.keymaps()
  vim.g.mapleader = " "

  return {
    {'n', '<Leader><SPACE>', ':NvimTreeToggle\n', { noremap = true, silent=true }},
    -- Explorer
    {'n', '<Leader>ff', ':Files\n', { noremap = true }},
    {'n', '<Leader>fg', ':GFiles\n', { noremap = true }},
    {'n', '<Leader>sp', ':Rg\n', { noremap = true }},
    {'n', '<Leader>sb', ':Lines\n', { noremap = true }},
    -- Buffers
    {'n', '<Leader>bb', ':Buffers\n', { noremap = true }},
    {'n', '<Leader>bn', ':bnext\n', { noremap = true }},
    {'n', '<Leader>bp', ':bprevious\n', { noremap = true }},
    -- Open
    {'n', '<Leader>on', ':NERDTreeToggle\n', { noremap = true }},
    {'n', '<Leader>ot', ':terminal\n', { noremap = true }},
    -- Window
    {'n', '<Leader>ws', ':split\n', { noremap = true }},
    {'n', '<Leader>wv', ':vsplit\n', { noremap = true }},
    {'n', '<Leader>wh', '<C-w>H', { noremap = true }},
    {'n', '<Leader>wj', '<C-w>J', { noremap = true }},
    {'n', '<Leader>wk', '<C-w>K', { noremap = true }},
    {'n', '<Leader>wl', '<C-w>L', { noremap = true }},
    -- Move line in Normal mode
    {'n', '<C-Down>', ':m .+1<CR>==', { noremap = true }},
    {'n', '<C-Up>', ':m .-2<CR>==', { noremap = true }},
    -- Move line in Insert mode
    {'i', '<C-Down>', '<ESC>:m .+1<CR>==gi', { noremap = true }},
    {'i', '<C-Up>', '<ESC>:m .-2<CR>==gi', { noremap = true }},
    -- Move line in Visual mode
    {'v', '<C-Down>', ':m \">+1<CR>gv=gv', { noremap = true }},
    {'v', '<C-Up>', ':m \"<-2<CR>gv=gv', { noremap = true }},

    {'x', 'ga', '<Plug>(EasyAlign}', {}},
    {'n', 'ga', '<Plug>(EasyAlign)', {}},

    -- Increment/decrement
    {'n', '+', '<C-a>', { noremap = true }},
    {'n', '-', '<C-x>', { noremap = true }},

    -- LSP
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    {'n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap=true, silent=true }},
    {'n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap=true, silent=true }},
    {'n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap=true, silent=true }},
    {'n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', { noremap=true, silent=true }},
    {'n', 'gh', ':lua vim.diagnostic.open_float()\n', { noremap=true, silent=true }},
  }
end

function M.setup()
  local keymaps = M.keymaps()
  M.load(keymaps)
end

return M

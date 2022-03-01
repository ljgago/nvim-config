-- ===========
-- Keymappings
-- ===========

local M = {}

function M.map(mode, key, val, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, key, val, options)
end

function M.load(keymaps)
  for _, keymap in pairs(keymaps) do
    local mode, key, val, opts = unpack(keymap)
    M.map(mode, key, val, opts)
    -- vim.api.nvim_set_keymap(mode, key, val, opts)
  end
end

function M.keymaps()
  return {
    -- Move line in Normal mode
    { 'n', '<C-Down>', ':m .+1<CR>==' },
    { 'n', '<C-Up>', ':m .-2<CR>==' },

    -- Move line in Insert mode
    { 'i', '<C-Down>', '<ESC>:m .+1<CR>==gi' },
    { 'i', '<C-Up>', '<ESC>:m .-2<CR>==gi' },

    -- Move line in Visual mode
    { 'v', '<C-Down>', ':m \">+1<CR>gv=gv' },
    { 'v', '<C-Up>', ':m \"<-2<CR>gv=gv' },

    -- EasyAlign
    { 'x', 'ga', '<Plug>(EasyAlign}' },
    { 'n', 'ga', '<Plug>(EasyAlign)' },

    -- Increment/decrement
    { 'n', '+', '<C-a>' },
    { 'n', '-', '<C-x>' },

    -- Folding
    { 'i', '<F9>', '<ESC>za' },
    { 'n', '<F9>', 'za' },
    { 'o', '<F9>', '<ESC>za' },
    { 'v', '<F9>', 'zf' },

    -- Terminal
    { 't', '<Space><ESC>', '<C-\\><C-n>' },

    -- LSP
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    -- {'n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>' },
    -- {'n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>' },
    -- {'n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>' },
    -- {'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', },
    -- {'n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>' },
    -- {'n', 'gh', ':lua vim.diagnostic.open_float()\n' },
  }
end

function M.setup()
  local keymaps = M.keymaps()
  M.load(keymaps)
end

return M

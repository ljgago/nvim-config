-- ===========================
-- Onedark Night - Colorscheme
-- ===========================

local M = {}

function M.colors()
  return {
    alt_bg   = '#2c323c',
    bg       = '#1e2127',
    fg       = '#bbc2cf',
    yellow   = '#ECBE7B',
    cyan     = '#008080',
    darkblue = '#081633',
    green    = '#98be65',
    orange   = '#FF8800',
    violet   = '#a9a1e1',
    magenta  = '#c678dd',
    blue     = '#51afef',
    red      = '#ec5f67',
  }
end

function M.theme()
  vim.o.termguicolors = true
  vim.cmd('colorscheme onedark-night')
end

return M

-- ===========================
-- Onedark Night - Colorscheme
-- ===========================

local M = {}

function M.colors()
  return {
    -- bg       = "#073642",
    bg       = "#002b36",
    fg       = "#eee8d5",
    red      = "#dc322f",
    green    = "#859900",
    yellow   = "#b58900",
    blue     = "#268db2",
    purple   = "#d33682",
    aqua     = "#2aa198",
    orange   = "#cb4b16",
  }
end

function M.theme()
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.cmd("colorscheme solarized8")
end

return M

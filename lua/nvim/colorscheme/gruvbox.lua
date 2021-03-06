-- ===========================
-- Onedark Night - Colorscheme
-- ===========================

local M = {}

function M.colors()
  return {
    alt_bg   = "#2c323c",
    bg       = "#282828",
    fg       = "#ebdbb2",
    red      = "#fb4934",
    green    = "#b8bb26",
    yellow   = "#fabd2f",
    blue     = "#83a598",
    purple   = "#d3869b",
    aqua     = "#8ec07c",
    orange   = "#d65d0e",
  }
end

function M.theme()
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.cmd("colorscheme gruvbox")
end

return M

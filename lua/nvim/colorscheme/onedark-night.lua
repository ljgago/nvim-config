-- ===========================
-- Onedark Night - Colorscheme
-- ===========================

local M = {}

function M.colors()
  return {
    alt_bg   = "#2c323c",
    bg       = "#1e2127",
    fg       = "#bbc2cf",
    red      = "#ec5f67",
    green    = "#98be65",
    yellow   = "#ECBE7B",
    blue     = "#51afef",
    -- darkblue = "#081633",
    purple   = "#a9a1e1",
    aqua     = "#008080",
    -- magenta  = "#c678dd",
    orange   = "#FF8800",
  }
end

function M.theme()
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.cmd("colorscheme onedark-night")
end

return M

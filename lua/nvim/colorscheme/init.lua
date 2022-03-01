-- ===========
-- Colorscheme
-- ===========

local M = {}

function M.colors()
  -- Default Colorscheme
  return require("nvim.colorscheme.gruvbox").colors()
end

function M.setup()
  -- default theme
  require("nvim.colorscheme.gruvbox").theme()
end

return M

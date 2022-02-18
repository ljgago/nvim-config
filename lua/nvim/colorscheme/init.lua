-- ===========
-- Colorscheme
-- ===========

local M = {}

function M.colors()
  -- Default Colorscheme
  return require("nvim.colorscheme.onedark-night").colors()
end

function M.setup()
  -- default theme
  require("nvim.colorscheme.onedark-night").theme()
end

return M

local M = {}

function M.colors()
  return {
    alt_bg   = "#2c323c",
    bg       = "#1F1F28",
    fg       = "#DCD7BA",
    red      = "#C34043",
    green    = "#76946A",
    yellow   = "#DCA561",
    blue     = "#658594",
    purple   = "#938AA9",
    aqua     = "#6A9589",
    orange   = "#FFA066",
  }
end

function M.theme()
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.cmd("colorscheme kanagawa")
end

return M


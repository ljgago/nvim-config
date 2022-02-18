-- ========================================
-- Plugin - nvim-treesitter/nvim-treesitter
-- ========================================

local M = {}

function M.config()
  local colors = require("nvim.colorscheme").colors()

  return {
    highlight = {
      enable = true,
      --disable = {"go"}
    },
    rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil,
      colors = {
        colors.violet,
        colors.blue,
        colors.magenta,
        colors.green,
      },
      disable = {'go', 'lua', 'rust', 'javascript', 'typescript'}
    }
  }
end

function M.setup()
  local config = M.config()
  require("nvim-treesitter.configs").setup(config)
end

return M

-- ===================================
-- Plugin - akinsho/flutter-tools.nvim
-- ===================================

local M = {}

function M.config()
  return {
    lsp = {
      on_attach = require("nvim.plugins.lsp").on_attach,
    }
  }
end

function M.setup()
  local config = M.config()
  require('flutter-tools').setup(config)
end

return M

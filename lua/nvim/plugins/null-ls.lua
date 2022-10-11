-- ========================================
-- Plugin - jose-elias-alvarez/null-ls.nvim
-- ========================================

local null_ls = require("null-ls")

local M = {}

function M.config()
  return {
    sources = {
      require("null-ls").builtins.diagnostics.vale,
    }
  }
end

function M.highlight()
  local colors = require("nvim.colorscheme").colors()

  -- nvim 0.6.x and 0.7.x
  -- Errors in red
  vim.cmd('hi DiagnosticError guifg='..colors.red)
  vim.cmd('hi DiagnosticUnderlineError guisp='..colors.red..' cterm=undercurl gui=undercurl')
  vim.fn.sign_define('DiagnosticSignError', { text = "", texthl = "DiagnosticError", linehl="", numhl="" })

  -- Warnings in yellow
  vim.cmd('hi DiagnosticWarn guifg='..colors.yellow)
  vim.cmd('hi DiagnosticUnderlineWarn guisp='..colors.yellow..' cterm=undercurl gui=undercurl')
  vim.fn.sign_define('DiagnosticSignWarn', { text = "", texthl = "DiagnosticWarn", linehl="", numhl="" })

  -- Hints in aqua
  vim.cmd('hi DiagnosticHint guifg='..colors.aqua)
  vim.cmd('hi DiagnosticUnderlineHint guisp='..colors.aqua..' cterm=undercurl gui=undercurl')
  vim.fn.sign_define('DiagnosticSignHint', { text = "", texthl = "DiagnosticHint", linehl="", numhl="" })

  -- Info in blue
  vim.cmd('hi DiagnosticInfo guifg='..colors.blue)
  vim.cmd('hi DiagnosticUnderlineInfo guisp='..colors.blue..' cterm=undercurl gui=undercurl')
  vim.fn.sign_define('DiagnosticSignInfo', { text = "", texthl = "DiagnosticInfo", linehl="", numhl="" })
end

local on_attach = {
  method = null_ls.methods.DIAGNOSTICS,
  filetypes = { "markdown", "text" },
  generator = { fn = M.highlight },
}

function M.setup()
  local config = M.config()
  null_ls.register(on_attach)
  null_ls.setup(config)
end

return M

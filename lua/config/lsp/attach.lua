local filetype_attach = setmetatable({}, {
  __index = function()
    return function() end
  end,
})
return function(client, bufnr)
  local filetype = vim.api.nvim_buf_get_option(0, "filetype")

  local colors = require("plugins.colorscheme").colors()

  -- nvim 0.6.x
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

  -- Disable LSP on Clojure REPL buffer with conjure
  vim.cmd('autocmd BufNewFile conjure-log-* lua vim.diagnostic.disable(0)')

  -- Attach any filetype specific options to the client
  filetype_attach[filetype](client, bufnr)
end

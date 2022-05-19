-- ==============================
-- Plugin - neovim/nvim-lspconfig
-- ==============================

local M = {}

vim.g.go_gopls_enabled = 0
vim.g.go_fmt_autosave = 0
vim.g.go_mod_fmt_autosave = 0
vim.g.go_asmfmt_autosave = 0
vim.g.go_imports_autosave = 0

local servers = {
  -- "denols",
  "elixirls",
  "gopls",
  "pyright",
  "rnix",
  "rust_analyzer",
  "tsserver"
}

function M.load(keymaps)
  for _, keymap in pairs(keymaps) do
    local buf, mode, key, val, opts = unpack(keymap)
    vim.api.nvim_buf_set_keymap(buf, mode, key, val, opts)
  end
end

function M.highlight()
  local colors = require("nvim.colorscheme").colors()

  -- nvim 0.5.x
  -- Errors in red
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsError guifg='..colors.red)
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsVirtualTextError guifg='..colors.red)
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsErrorSign guifg='..colors.red)
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsErrorFloating guifg='..colors.red)
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsUnderlineError guisp='..colors.red..' cterm=undercurl gui=undercurl')
  vim.fn.sign_define('LspDiagnosticsSignError', { text = "", texthl = "LspDiagnosticsError", linehl="", numhld="" })

  -- Warnings in yellow
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsWarn guifg='..colors.yellow)
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsVirtualTextWarning guifg='..colors.yellow)
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsWarningSign guifg='..colors.yellow)
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsWarningFloating guifg='..colors.yellow)
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsUnderlineWarning guisp='..colors.yellow..' cterm=undercurl gui=undercurl')
  vim.fn.sign_define('LspDiagnosticsSignWarning', { text = "", texthl = "LspDiagnosticsWarning", linehl="", numhl="" })

  -- Hints in aqua
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsHint guifg='..colors.aqua)
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsVirtualTextHint guifg='..colors.aqua)
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsHintSign guifg='..colors.aqua)
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsHintFloating guifg='..colors.aqua)
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsUnderlineHint guisp='..colors.aqua..' cterm=undercurl gui=undercurl')
  vim.fn.sign_define('LspDiagnosticsSignHint', { text = "", texthl = "LspDiagnosticsHint", linehl="", numhl="" })

  -- Info in blue
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsInformation guifg='..colors.blue)
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsVirtualTextInformation guifg='..colors.blue)
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsInformationSign guifg='..colors.blue)
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsInformationFloatting guifg='..colors.blue)
  vim.cmd('autocmd ColorScheme * hi LspDiagnosticsUnderlineInformation guisp='..colors.blue..' cterm=undercurl gui=undercurl')
  vim.fn.sign_define('LspDiagnosticsSignInformation', { text = "", texthl = "LspDiagnosticsInformation", linehl="", numhl="" })

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
end

function M.config(client, bufnr)
  -- Custom config
end

function M.on_attach(client, bufnr)
  -- Load the lsp highlight
  M.highlight()
  -- Load the config
  M.config(client, bufnr)
end

function M.setup()
  for _, server in pairs(servers) do
    if server == "elixirls" then
      require('lspconfig')[server].setup {
        cmd = { "/home/lgago/.local/share/elixir-ls/language_server.sh" },
        on_attach = M.on_attach,
        flags = {
          -- This will be the default in neovim 0.7+
          debounce_text_changes = 150,
        }
      }
    else
      require('lspconfig')[server].setup {
        on_attach = M.on_attach,
        flags = {
          -- This will be the default in neovim 0.7+
          debounce_text_changes = 150,
        }
      }
    end
  end
end

return M

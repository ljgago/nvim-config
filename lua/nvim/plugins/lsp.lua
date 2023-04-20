-- ==============================
-- Plugin - neovim/nvim-lspconfig
-- ==============================

local M = {}

local servers = {
  "clojure_lsp",
  -- "denols",
  "dhall_lsp_server",
  "elixirls",
  -- "eslint",
  "jdtls",
  -- "java_language_server",
  "jsonls",
  "gopls",
  "hls",
  "pyright",
  "rnix",
  -- "rome",
  "svelte",
  "rust_analyzer",
  "vuels",
  "tsserver",
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

  -- Disable LSP on Clojure REPL buffer with conjure
  vim.cmd('autocmd BufNewFile conjure-log-* lua vim.diagnostic.disable(0)')
end

function M.config(client, bufnr)
  -- Custom config
end

function M.on_attach_common(client, bufnr)
  -- Load the config
  M.config(client, bufnr)
end

function M.on_attach_eslint(client, bufnr)
  -- client.server_capabilities.document_formatting = true
  -- client.server_capabilities.goto_definition = false
  client.server_capabilities.documentFormattingProvider = true
  client.server_capabilities.documentGotoDefinitionProvider = false
end

function M.on_attach_tsserver(client, bufnr)
  -- client.server_capabilities.document_formatting = false
  -- client.server_capabilities.goto_definition = true
  client.server_capabilities.document_formatting = false
  client.server_capabilities.documentGotoDefinitionProvider = true
end

function M.on_attach(server)
  if server == "eslint" then
    return M.on_attach_eslint
  end

  if server == "tsserver" then
    return M.on_attach_tsserver
  end

  return M.on_attach_common
end

function M.setup()
  -- Load the lsp highlight
  M.highlight()

  for _, server in pairs(servers) do
    if server == "elixirls" then
      require('lspconfig')[server].setup {
        cmd = { "/home/lgago/.local/share/elixir-ls/language_server.sh" },
        on_attach = M.on_attach(server),
        flags = {
          -- This will be the default in neovim 0.7+
          debounce_text_changes = 150,
        }
      }
    -- elseif server == "rust_analyzer" then
    --   require('lspconfig')[server].setup {
    --     cmd = { "rustup run stable rust-analyzer" },
    --     on_attach = M.on_attach(server),
    --   }
    -- elseif server == "java_language_server" then
    --   require('lspconfig')[server].setup {
    --     cmd = { "lang_server_linux.sh" },
    --     on_attach = M.on_attach(server),
    --   }
    elseif server == "rome" then
      require('lspconfig')[server].setup {
        formater = {
          indentStyle = "space",
        }
      }
    elseif server == "svelte" then
      require('lspconfig')[server].setup {
        filetypes = { "svelte", "typescript", "javascript" }
      }
    else
      require('lspconfig')[server].setup {
        on_attach = M.on_attach(server),
        flags = {
          -- This will be the default in neovim 0.7+
          debounce_text_changes = 150,
        }
      }
    end
  end
end

return M

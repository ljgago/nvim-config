return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "williamboman/mason.nvim",
      opts = {
        ui = {
          border = "rounded",
        },
      },
    },
    "jose-elias-alvarez/null-ls.nvim",
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    {
      "lvimuser/lsp-inlayhints.nvim",
      config = function()
        require("lsp-inlayhints").setup()
        vim.api.nvim_create_augroup("LspAttach_inlayhints", {})
        vim.api.nvim_create_autocmd("LspAttach", {
          group = "LspAttach_inlayhints",
          callback = function(args)
            if not (args.data and args.data.client_id) then
              return
            end

            local bufnr = args.buf
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            require("lsp-inlayhints").on_attach(client, bufnr, false)
          end,
        })
      end,
    },
    {
      "j-hui/fidget.nvim",
      tag = "legacy",
      opts = {
        window = {
          blend = 0,
        },
        sources = {
          ["null-ls"] = {
            ignore = true,
          },
        },
      },
    },
  },
  event = "VeryLazy",
  config = function()
    require "config.lsp"
  end,
}

-- local servers = {
--   "clojure_lsp",
--   -- "denols",
--   "dhall_lsp_server",
--   "elixirls",
--   -- "eslint",
--   "jdtls",
--   -- "java_language_server",
--   "jsonls",
--   "gopls",
--   "hls",
--   "pyright",
--   "rnix",
--   -- "rome",
--   "svelte",
--   "rust_analyzer",
--   "vuels",
--   "tsserver",
-- }
--
-- local function highlight()
--   local colors = require("plugins.colorscheme").colors()
--
--   -- nvim 0.6.x
--   -- Errors in red
--   vim.cmd('hi DiagnosticError guifg='..colors.red)
--   vim.cmd('hi DiagnosticUnderlineError guisp='..colors.red..' cterm=undercurl gui=undercurl')
--   vim.fn.sign_define('DiagnosticSignError', { text = "", texthl = "DiagnosticError", linehl="", numhl="" })
--
--   -- Warnings in yellow
--   vim.cmd('hi DiagnosticWarn guifg='..colors.yellow)
--   vim.cmd('hi DiagnosticUnderlineWarn guisp='..colors.yellow..' cterm=undercurl gui=undercurl')
--   vim.fn.sign_define('DiagnosticSignWarn', { text = "", texthl = "DiagnosticWarn", linehl="", numhl="" })
--
--   -- Hints in aqua
--   vim.cmd('hi DiagnosticHint guifg='..colors.aqua)
--   vim.cmd('hi DiagnosticUnderlineHint guisp='..colors.aqua..' cterm=undercurl gui=undercurl')
--   vim.fn.sign_define('DiagnosticSignHint', { text = "", texthl = "DiagnosticHint", linehl="", numhl="" })
--
--   -- Info in blue
--   vim.cmd('hi DiagnosticInfo guifg='..colors.blue)
--   vim.cmd('hi DiagnosticUnderlineInfo guisp='..colors.blue..' cterm=undercurl gui=undercurl')
--   vim.fn.sign_define('DiagnosticSignInfo', { text = "", texthl = "DiagnosticInfo", linehl="", numhl="" })
--
--   -- Disable LSP on Clojure REPL buffer with conjure
--   vim.cmd('autocmd BufNewFile conjure-log-* lua vim.diagnostic.disable(0)')
-- end
--
-- local function on_attach_eslint(client, bufnr)
--   -- client.server_capabilities.document_formatting = true
--   -- client.server_capabilities.goto_definition = false
--   client.server_capabilities.documentFormattingProvider = true
--   client.server_capabilities.documentGotoDefinitionProvider = false
-- end
--
-- local function on_attach_tsserver(client, bufnr)
--   -- client.server_capabilities.document_formatting = false
--   -- client.server_capabilities.goto_definition = true
--   client.server_capabilities.document_formatting = false
--   client.server_capabilities.documentGotoDefinitionProvider = true
-- end
--
-- return {
--   "neovim/nvim-lspconfig",
--   dependencies = {},
--   lazy = true,
--   config = function()
--     highlight()
--
--     for _, server in pairs(servers) do
--       if server == "tsserver" then
--         require('lspconfig')[server].setup {
--           on_attach = on_attach_tsserver,
--         }
--       elseif server == "eslint" then
--         require('lspconfig')[server].setup {
--           on_attach = on_attach_eslint,
--         }
--       elseif server == "elixirls" then
--         require('lspconfig')[server].setup {
--           cmd = { "/home/lgago/.local/share/elixir-ls/language_server.sh" },
--           flags = {
--             -- This will be the default in neovim 0.7+
--             debounce_text_changes = 150,
--           }
--         }
--       elseif server == "rome" then
--         require('lspconfig')[server].setup {
--           formater = {
--             indentStyle = "space",
--           }
--         }
--       elseif server == "svelte" then
--         require('lspconfig')[server].setup {
--           filetypes = { "svelte", "typescript", "javascript" }
--         }
--       else
--         require('lspconfig')[server].setup {}
--       end
--     end
--   end,
-- }

return {
  "mason-org/mason.nvim",
  dependencies = {
    "mason-org/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        border = "rounded",
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "biome",
        "cssls",
        "elixirls",
        -- "emmet_ls",
        "graphql",
        "html",
        "jsonls",
        "lua_ls",
        "pyright",
        "rust_analyzer",
        "svelte",
        "tailwindcss",
        "taplo",
        "ts_ls",
        "tsp_server",
        "yamlls",
        "zls",
      },
    })
  end,
}

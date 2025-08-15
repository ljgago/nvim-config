return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "saghen/blink.cmp"
  },
  config = function()
    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = " ",
          [vim.diagnostic.severity.WARN] = " ",
          [vim.diagnostic.severity.INFO] = " ",
          [vim.diagnostic.severity.HINT] = "󰠠 ",
        },
        numhl = {
          [vim.diagnostic.severity.ERROR] = "",
          [vim.diagnostic.severity.WARN] = "",
          [vim.diagnostic.severity.HINT] = "",
          [vim.diagnostic.severity.INFO] = "",
        },
      },
    })

    local on_attach = function(client, bufnr)
      local opts = { noremap = true, silent = true, buffer = bufnr }

      opts.desc = "Go to declaration"
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

      opts.desc = "Show LSP definitions"
      vim.keymap.set("n", "gd", ":Telescope lsp_definitions<CR>", opts) -- show lsp definitions

      opts.desc = "Show LSP implementations"
      vim.keymap.set("n", "gi", ":Telescope lsp_implementations<CR>", opts) -- show lsp implementations

      opts.desc = "Show LSP references"
      vim.keymap.set("n", "gr", ":Telescope lsp_references<CR>", opts) -- show lsp implementations

      -- if vim.bo[bufnr].filetype == "svelte" then
      --   client.server_capabilities.documentFormattingProvider = false
      --   client.server_capabilities.documentRangeFormattingProvider = false
      -- end
    end

    vim.lsp.config("*", {
      on_attach = on_attach
    })

    vim.lsp.config("html", {
      on_attach = on_attach,
      filetypes = { "html", } -- Only enable for specific types
    })

    vim.lsp.config("ts_ls", {
      on_attach = on_attach,
      filetypes = { "typescript", "typescriptreact", "javascriptreact" } -- Only enable for specific types
    })

    vim.lsp.config("biome", {
      on_attach = on_attach,
      filetypes = { "astro", "javascript", "javascriptreact", "typescript", "typescript.tsx", "typescriptreact", "vue" }
    })

    -- vim.lsp.config("tailwindcss", {
    --   on_attach = on_attach,
    --   settings = {
    --     tailwindCSS = {
    --       classAttributes = { "class", "className", "class:list", "classList", "ngClass" },
    --       includeLanguages = {
    --         heex = "html-eex",
    --         elixir = "html-eex",
    --         eelixir = "html-eex",
    --         eruby = "erb",
    --         htmlangular = "html",
    --         svelte = "svelte",
    --         templ = "html"
    --       },
    --       lint = {
    --         cssConflict = "warning",
    --         invalidApply = "error",
    --         invalidConfigPath = "error",
    --         invalidScreen = "error",
    --         invalidTailwindDirective = "error",
    --         invalidVariant = "error",
    --         recommendedVariantOrder = "warning"
    --       },
    --       validate = true
    --     }
    --   }
    -- })
  end,
}

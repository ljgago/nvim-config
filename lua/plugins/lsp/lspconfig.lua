return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    {
      "antosha417/nvim-lsp-file-operations",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-tree.lua",
      },
      -- commit = "9bb09acea495e6bc2325a89722e522c13d2ed40b",
      config = function()
        require("lsp-file-operations").setup()
      end,
    },
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
      event = "LspAttach",
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
  config = function()
    -- import lspconfig plugin
    local lspconfig = require("lspconfig")

    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    -- local bufopts = { noremap = true, silent = true }

    ---@diagnostic disable-next-line: unused-local
    local on_attach = function(client, bufnr)
      local opts = { noremap = true, silent = true, buffer = bufnr }

      -- -- set keybinds
      -- opts.desc = "Show LSP references"
      -- keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

      opts.desc = "Go to declaration"
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

      opts.desc = "Show LSP definitions"
      vim.keymap.set("n", "gd", ":Telescope lsp_definitions<CR>", opts) -- show lsp definitions

      opts.desc = "Show LSP implementations"
      vim.keymap.set("n", "gi", ":Telescope lsp_implementations<CR>", opts) -- show lsp implementations

      opts.desc = "Show LSP references"
      vim.keymap.set("n", "gr", ":Telescope lsp_references<CR>", opts) -- show lsp implementations

      -- opts.desc = "Show LSP type definitions"
      -- keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

      -- opts.desc = "See available code actions"
      -- keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

      -- opts.desc = "Smart rename"
      -- keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

      -- opts.desc = "Show buffer diagnostics"
      -- keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

      -- opts.desc = "Show line diagnostics"
      -- keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

      -- opts.desc = "Go to previous diagnostic"
      -- keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

      -- opts.desc = "Go to next diagnostic"
      -- keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

      -- opts.desc = "Show documentation for what is under cursor"
      -- keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

      -- opts.desc = "Restart LSP"
      -- keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
    end

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- theme colors
    local colors = require("plugins.colorscheme").colors()

    -- Change the Diagnostic symbols in the sign column (gutter)
    local diagnostics = {
      Error = { icon = " ", color = colors.red },
      Warn = { icon = " ", color = colors.yellow },
      Hint = { icon = "󰠠 ", color = colors.aqua },
      Info = { icon = " ", color = colors.blue },
    }

    for type, opts in pairs(diagnostics) do
      local hl = "Diagnostic" .. type
      local hl_underline = "DiagnosticUnderline" .. type
      local hl_sign = "DiagnosticSign" .. type

      vim.api.nvim_set_hl(0, hl, { fg = opts.color })
      vim.api.nvim_set_hl(0, hl_underline, { sp = opts.color, undercurl = true })
      vim.fn.sign_define(hl_sign, { text = opts.icon, texthl = hl, linehl = "", numhl = "" })
    end

    local lsp_servers = {
      "ada_ls",
      "astro",
      "crystalline",
      -- "cssls",
      "biome",
      "gleam",
      "gopls",
      "html",
      "jsonls",
      -- "kotlin_language_server",
      -- "lexical",
      "ocamllsp",
      "pyright",
      "rust_analyzer",
      -- "tailwindcss",
      "taplo",
      "tsp_server",
      "tinymist",
      "volar",
      "yamlls",
    }

    for _, server in ipairs(lsp_servers) do
      lspconfig[server].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })
    end

    lspconfig["elixirls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      cmd = { "elixir-ls" },
    })


    -- configure tailwindcss server
    lspconfig["tailwindcss"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        tailwindCSS = {
          classAttributes = { "class", "className", "class:list", "classList", "ngClass" },
          includeLanguages = {
            heex = "html-eex",
            elixir = "html-eex",
            eelixir = "html-eex",
            eruby = "erb",
            htmlangular = "html",
            templ = "html"
          },
          lint = {
            cssConflict = "warning",
            invalidApply = "error",
            invalidConfigPath = "error",
            invalidScreen = "error",
            invalidTailwindDirective = "error",
            invalidVariant = "error",
            recommendedVariantOrder = "warning"
          },
          validate = true
        }
      }
    })

    lspconfig["eslint"].setup({
      capabilities = capabilities,
      -- on_attach = on_attach,
      on_attach = function(_, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          command = "EslintFixAll",
        })
      end,
    })

    -- configure zig server
    lspconfig["zls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        zig = {
          inlayHints = {
            includeInlayFunctionParameterTypeHints = false,
          },
        },
      },
    })

    -- configure typescript server with denols
    lspconfig["denols"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      root_dir = lspconfig.util.root_pattern("deno.json", "deno.json")
    })

    -- configure typescript server with ts_ls
    lspconfig["ts_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        typescript = {
          inlayHints = {
            -- includeInlayParameterNameHints = "all",
            -- includeInlayParameterNameHintsWhenArgumentMatchesName = false,
            includeInlayFunctionParameterTypeHints = true,
            -- includeInlayVariableTypeHints = true,
            -- includeInlayPropertyDeclarationTypeHints = true,
            -- includeInlayFunctionLikeReturnTypeHints = true,
            -- includeInlayEnumMemberValueHints = true,
          },
        },
        javascript = {
          inlayHints = {
            -- includeInlayParameterNameHints = "all",
            -- includeInlayParameterNameHintsWhenArgumentMatchesName = false,
            includeInlayFunctionParameterTypeHints = true,
            -- includeInlayVariableTypeHints = true,
            -- includeInlayPropertyDeclarationTypeHints = true,
            -- includeInlayFunctionLikeReturnTypeHints = true,
            -- includeInlayEnumMemberValueHints = true,
          },
        },
      },
      root_dir = lspconfig.util.root_pattern("package.json"),
      single_file_support = false,
    })

    -- -- configure svelte server
    -- lspconfig["svelte"].setup({
    --   capabilities = capabilities,
    --   on_attach = function(client, bufnr)
    --     on_attach(client, bufnr)
    --
    --     vim.api.nvim_create_autocmd("BufWritePost", {
    --       pattern = { "*.js", "*.ts" },
    --       callback = function(ctx)
    --         if client.name == "svelte" then
    --           client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.file })
    --         end
    --       end,
    --     })
    --   end,
    -- })

    -- configure lua server (with special settings)
    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = { -- custom settings for lua
        Lua = {
          -- make the language server recognize "vim" global
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            -- make language server aware of runtime files
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })
  end,
}

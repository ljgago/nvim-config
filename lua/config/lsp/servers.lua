local lsp_attach = require "config.lsp.attach"

local lsp_flags = {
  debounce_text_changes = 150,
}

local default = function()
  return {
    on_attach = lsp_attach,
    flags = lsp_flags,
  }
end

return {
  ["clojure_lsp"] = default,
  ["crystalline"] = default,
  ["csharp_ls"] = default,
  ["dhall_lsp_server"] = default,
  ["elixirls"] = function()
    return {
      on_attach = lsp_attach,
      flags = lsp_flags,
      cmd = { "elixir-ls" },
    }
  end,
  -- ["eslint"] = default,
  ["gopls"] = default,
  ["html"] = default,
  -- ["jdtls"] = default,
  ["jsonls"] = default,
  ["pyright"] = default,
  ["rnix"] = function()
    return {
      on_attach = lsp_attach,
      flags = lsp_flags,
      filetypes = { "nix" },
    }
  end,
  ["svelte"] = function()
    return {
      on_attach = lsp_attach,
      flags = lsp_flags,
      filetypes = { "svelte", "typescript", "javascript" },
    }
  end,
  ["rust_analyzer"] = default,
  -- ["tailwindcss"] = function()
  --   return {
  --     on_attach = lsp_attach,
  --     flags = lsp_flags,
  --     filetypes = { "blade", "html", "svelte" },
  --   }
  -- end,
  ["tsserver"] = function()
    return {
      on_attach = lsp_attach,
      flags = lsp_flags,
      settings = {
        typescript = {
          inlayHints = {
            includeInlayParameterNameHints = "all",
            includeInlayParameterNameHintsWhenArgumentMatchesName = false,
            includeInlayFunctionParameterTypeHints = true,
            includeInlayVariableTypeHints = true,
            includeInlayPropertyDeclarationTypeHints = true,
            includeInlayFunctionLikeReturnTypeHints = true,
            includeInlayEnumMemberValueHints = true,
          },
        },
        javascript = {
          inlayHints = {
            includeInlayParameterNameHints = "all",
            includeInlayParameterNameHintsWhenArgumentMatchesName = false,
            includeInlayFunctionParameterTypeHints = true,
            includeInlayVariableTypeHints = true,
            includeInlayPropertyDeclarationTypeHints = true,
            includeInlayFunctionLikeReturnTypeHints = true,
            includeInlayEnumMemberValueHints = true,
          },
        },
      },
    }
  end,
  -- ["typst_lsp"] = default,
  ["vuels"] = default,
}

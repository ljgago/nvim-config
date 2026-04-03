return {
  "ray-x/go.nvim",
  dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  -- lazy = false,
  -- priority = 1000,
  event = { "CmdlineEnter" },
  ft = { "go", "gomod" },
  config = function()

    -- vim.g.go_gopls_enabled = 0
    -- vim.g.go_fmt_autosave = 0
    -- vim.g.go_mod_fmt_autosave = 0
    -- vim.g.go_asmfmt_autosave = 0
    -- vim.g.go_imports_autosave = 0
    -- -- vim.g.go_addtags_transform = "snakecase"
    -- vim.g.go_addtags_transform = "camelcase"
    -- vim.g.go_nvim_tag_default = "json"

    require("go").setup({
      tag_transform = "snakecase",
      tag_options = "json=omitempty",
      lsp_codelens = false,
      diagnostic = false,
    })
  end,
  -- build = ":lua require("go.install").update_all_sync()" -- if you need to install/update all binaries
}

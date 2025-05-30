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
    require("go").setup({
      tag_transform = "snakecase",
      tag_options = "json=omitempty",
      lsp_codelens = false,
      diagnostic = false,
    })
  end,
  -- build = ":lua require("go.install").update_all_sync()" -- if you need to install/update all binaries
}

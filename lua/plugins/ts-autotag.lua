return {
  "windwp/nvim-ts-autotag",
  event = "VeryLazy",
  config = function()
    require("nvim-treesitter.configs").setup({
      autotag = {
        enable = true,
      }
    })
  end,
}

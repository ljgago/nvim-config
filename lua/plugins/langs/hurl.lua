return {
  "pfeiferj/nvim-hurl",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  ft = "hurl",
  lazy = false,
  priority = 2000,
  config = function()
    require("hurl").setup({
      color = true,
      hurl_flags = {
        "--insecure",
        "--max-time 30",
      }
    })
  end,
}

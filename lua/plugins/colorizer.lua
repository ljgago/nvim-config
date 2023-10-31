return {
  "NvChad/nvim-colorizer.lua",
  event = "VeryLazy",
  config = function()
    require("colorizer").setup {
      user_default_options = {
        rgb_fn = true, -- CSS rgb() and rgba() functions
      }
    }
  end,
}

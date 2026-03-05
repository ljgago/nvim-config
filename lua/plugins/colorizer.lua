return {
  "catgoose/nvim-colorizer.lua",
  event = "VeryLazy",
  config = function()
    require("colorizer").setup({
      options = {
        parsers = {
          css = true, -- preset: enables names, hex, rgb, hsl, oklch
          css_fn = true, -- preset: enables rgb, hsl, oklch
          names = {
            enable = false,
          },
        },
      },
    })
  end,
}

return {
  "ellisonleao/gruvbox.nvim",
  name = "gruvbox",
  lazy = false,
  priority = 1000,
  init = function()
    vim.o.termguicolors = true
    vim.o.background = "dark"
    vim.cmd.colorscheme("gruvbox")
  end,
  config = function()
    require("gruvbox").setup({
      overrides = {
        -- Operator = { fg = "#fe8019", italic = false },
        ["Delimiter"] = { link = "GruvboxOrange" },
        ["@module.elixir"] = { link = "GruvboxYellow" },
      }
    })
  end,
  -- colors isn't part of lazy.nvim
  colors = function()
    return {
      alt_bg = "#2c323c",
      bg     = "#282828",
      fg     = "#ebdbb2",
      red    = "#fb4934",
      green  = "#b8bb26",
      yellow = "#fabd2f",
      blue   = "#83a598",
      purple = "#d3869b",
      aqua   = "#8ec07c",
      orange = "#fe8019",
    }
  end,
}

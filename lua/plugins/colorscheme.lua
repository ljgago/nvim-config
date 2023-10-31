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
  opts = {
    overrides = {
      Operator = { fg = "#fe8019", italic = false },
    }
  },
  config = function(opts)
    require("gruvbox").setup(opts)
  end,
  -- colors isn't part of lazy.ncim
  colors = function()
    return {
      alt_bg   = "#2c323c",
      bg       = "#282828",
      fg       = "#ebdbb2",
      red      = "#fb4934",
      green    = "#b8bb26",
      yellow   = "#fabd2f",
      blue     = "#83a598",
      purple   = "#d3869b",
      aqua     = "#8ec07c",
      orange   = "#fe8019",
    }
  end,
}

-- return {
--   "projekt0n/github-nvim-theme",
--   -- name = "everforest",
--   lazy = false,
--   priority = 1000,
--   init = function()
--     vim.o.termguicolors = true
--     vim.o.background = "dark"
--     vim.cmd.colorscheme("github_dark")
--   end,
--   opts = {
--     -- colors = {                   -- add/modify theme and palette colors
--     --   palette = {},
--     --   theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--     -- },
--     -- background = {               -- map the value of 'background' option to a theme
--     --   dark = "wave",           -- try "dragon" !
--     --   light = "lotus"
--     -- },
--   },
--   config = function(opts)
--     require("github-theme").setup({})
--   end,
--   -- colors isn't part of lazy.ncim
--   colors = function()
--     return {
--       alt_bg   = "#2c323c",
--       bg       = "#282828",
--       fg       = "#ebdbb2",
--       red      = "#fb4934",
--       green    = "#b8bb26",
--       yellow   = "#fabd2f",
--       blue     = "#83a598",
--       purple   = "#d3869b",
--       aqua     = "#8ec07c",
--       orange   = "#fe8019",
--     }
--   end,
-- }

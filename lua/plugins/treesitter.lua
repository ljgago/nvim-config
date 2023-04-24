return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "p00f/nvim-ts-rainbow"
    -- "HiPhish/nvim-ts-rainbow2"
  },
  init = function()
    -- local colors = require("plugins.colorscheme").colors()
    --
    -- vim.cmd('hi TSRainbowOrange guifg='..colors.orange)
    -- vim.cmd('hi TSRainbowViolet guifg='..colors.purple)
    -- vim.cmd('hi TSRainbowYellow guifg='..colors.yellow)
    -- vim.cmd('hi TSRainbowBlue guifg='..colors.blue)
    -- vim.cmd('hi TSRainbowRed guifg='..colors.red)
    -- vim.cmd('hi TSRainbowGreen guifg='..colors.green)
    -- vim.cmd('hi TSRainbowCyan guifg='..colors.aqua)
  end,
  config = function()
    local colors = require("plugins.colorscheme").colors()

    require("nvim-treesitter.configs").setup {
      -- ensure_installed = {
      --   "eex",
      --   "elixir",
      --   "erlang",
      --   "heex",
      --   "html",
      --   "surface"
      -- },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        --disable = {"go"}
      },
      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
        colors = {
          colors.purple,
          colors.orange,
          colors.yellow,
          colors.blue,
          -- colors.purple,
          -- colors.blue,
          -- colors.aqua,
          -- colors.green,
        },
        -- query = 'rainbow-parens',
        -- strategy = require('ts-rainbow').strategy.global,
        disable = { 'lua' } --, 'javascript', 'typescript'}
      }
    }
  end,
}

return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "hiphish/rainbow-delimiters.nvim"
  },
  -- lazy = false,
  priority = 3000,
  init = function()
    local colors = require("plugins.colorscheme").colors()

    -- vim.cmd("hi RainbowDelimiterOrange guifg=" .. colors.orange)
    -- vim.cmd("hi RainbowDelimiterViolet guifg=" .. colors.purple)
    -- vim.cmd("hi RainbowDelimiterYellow guifg=" .. colors.yellow)
    -- vim.cmd("hi RainbowDelimiterBlue guifg=" .. colors.blue)
    -- vim.cmd("hi RainbowDelimiterRed guifg=" .. colors.red)
    -- vim.cmd("hi RainbowDelimiterGreen guifg=" .. colors.green)
    -- vim.cmd("hi RainbowDelimiterCyan guifg=" .. colors.aqua)

    local raincolor = {
      { name = "Orange", color = colors.orange },
      { name = "Yellow", color = colors.yellow },
      { name = "Blue", color = colors.blue },
      { name = "Violet", color = colors.purple },
      { name = "Red", color = colors.red },
      { name = "Green", color = colors.green },
      { name = "Cyan", color = colors.aqua },
    }

    for _, opt in ipairs(raincolor) do
      local hl = "RainbowDelimiter" .. opt.name
      vim.api.nvim_set_hl(0, hl, { fg = opt.color })
    end

  end,
  config = function()
    require("rainbow-delimiters.setup")({
      highlight = {
        "RainbowDelimiterOrange",
        -- "RainbowDelimiterCyan",
        "RainbowDelimiterBlue",
        "RainbowDelimiterYellow",
        "RainbowDelimiterViolet",
        -- "RainbowDelimiterRed",
        -- "RainbowDelimiterCyan",
        -- "RainbowDelimiterGreen",
      },
      blacklist = { "lua", "zig" },
    })

    require("nvim-treesitter.configs").setup({
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
        -- additional_vim_regex_highlighting = false,
        --disable = {"go"}
      },
      indent = {
        enable = true,
      },
      -- rainbow = {
      --   enable = true,
      --   -- extended_mode = true,
      --   -- max_file_lines = nil,
      --   colors = {
      --     colors.purple,
      --     colors.orange,
      --     colors.yellow,
      --     colors.blue,
      --     -- colors.purple,
      --     -- colors.blue,
      --     -- colors.aqua,
      --     -- colors.green,
      --   },
      --   -- query = 'rainbow-parens',
      --   -- strategy = require('ts-rainbow').strategy.global,
      --   disable = { 'lua' } --, 'javascript', 'typescript'
      -- }
    })
  end,
}

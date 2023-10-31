return {
  "lewis6991/gitsigns.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local colors = require("plugins.colorscheme").colors()

    -- nvim 0.6.x
    vim.cmd('hi GitSignsAdd guifg='..colors.green..' guibg='..colors.bg)
    vim.cmd('hi GitSignsChange guifg='..colors.orange..' guibg='..colors.bg)
    vim.cmd('hi GitSignsDelete guifg='..colors.red..' guibg='..colors.bg)
    vim.cmd('hi GitSignsAddNr guifg='..colors.green..' guibg='..colors.bg)
    vim.cmd('hi GitSignsChangeNr guifg='..colors.orange..' guibg='..colors.bg)
    vim.cmd('hi GitSignsDeleteNr guifg='..colors.red..' guibg='..colors.bg)
    vim.cmd('hi GitSignsAddLn guifg=#1e2127 guibg='..colors.green)
    vim.cmd('hi GitSignsChangeLn guifg=#1e2127 guibg='..colors.orange)
    vim.cmd('hi GitSignsDeleteLn guifg=#1e2127 guibg='..colors.red)
    vim.cmd('hi GitSignsDeleteLn guifg=#1e2127 guibg='..colors.red)
    vim.cmd('hi clear SignColumn')

    local gitsigns = require("gitsigns")
    gitsigns.setup({
      signs = {
        add = {
          hl = "GitSignsAdd",
          text = "▎",
          numhl = "GitSignsAddNr",
          linehl = "GitSignsAddLn",
        },
        change = {
          hl = "GitSignsChange",
          text = "▎",
          numhl = "GitSignsChangeNr",
          linehl = "GitSignsChangeLn",
        },
        delete = {
          hl = "GitSignsDelete",
          -- text = "▎",
          numhl = "GitSignsDeleteNr",
          linehl = "GitSignsDeleteLn",
        },
        topdelete = {
          hl = "GitSignsDelete",
          -- text = "▎",
          numhl = "GitSignsDeleteNr",
          linehl = "GitSignsDeleteLn",
        },
        changedelete = {
          hl = "GitSignsChange",
          text = "▎",
          numhl = "GitSignsChangeNr",
          linehl = "GitSignsChangeLn",
        },
      },
      numhl = false,
      linehl = false,
      -- keymaps = {
      --   -- Default keymap options
      --   noremap = true,
      --   buffer = true,
      -- },
      signcolumn = true,
      word_diff = false,
      attach_to_untracked = true,
      current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
        delay = 1000,
        ignore_whitespace = false,
      },
      current_line_blame_formatter_opts = {
        relative_time = false,
      },
      max_file_length = 40000,
      preview_config = {
        -- Options passed to nvim_open_win
        border = "rounded",
        style = "minimal",
        relative = "cursor",
        row = 0,
        col = 1,
      },
      watch_gitdir = {
        interval = 1000,
        follow_files = true,
      },
      sign_priority = 6,
      update_debounce = 200,
      status_formatter = nil, -- Use default
    })
  end,
}

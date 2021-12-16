local colors = require("colorscheme").colors()

-- nvim 0.5.x
vim.cmd('autocmd ColorScheme * hi GitSignsAdd guifg='..colors.green)
vim.cmd('autocmd ColorScheme * hi GitSignsChange guifg='..colors.orange)
vim.cmd('autocmd ColorScheme * hi GitSignsDelete guifg='..colors.red)
vim.cmd('autocmd ColorScheme * hi GitSignsAddNr guifg='..colors.green)
vim.cmd('autocmd ColorScheme * hi GitSignsChangeNr guifg='..colors.orange)
vim.cmd('autocmd ColorScheme * hi GitSignsDeleteNr guifg='..colors.red)
vim.cmd('autocmd ColorScheme * hi GitSignsAddLn guifg=#1e2127 guibg='..colors.green)
vim.cmd('autocmd ColorScheme * hi GitSignsChangeLn guifg=#1e2127 guibg='..colors.orange)
vim.cmd('autocmd ColorScheme * hi GitSignsDeleteLn guifg=#1e2127 guibg='..colors.red)

-- nvim 0.6.x
vim.cmd('hi GitSignsAdd guifg='..colors.green)
vim.cmd('hi GitSignsChange guifg='..colors.orange)
vim.cmd('hi GitSignsDelete guifg='..colors.red)
vim.cmd('hi GitSignsAddNr guifg='..colors.green)
vim.cmd('hi GitSignsChangeNr guifg='..colors.orange)
vim.cmd('hi GitSignsDeleteNr guifg='..colors.red)
vim.cmd('hi GitSignsAddLn guifg=#1e2127 guibg='..colors.green)
vim.cmd('hi GitSignsChangeLn guifg=#1e2127 guibg='..colors.orange)
vim.cmd('hi GitSignsDeleteLn guifg=#1e2127 guibg='..colors.red)

require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '▎', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '▎', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '契', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '契', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '▎', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  keymaps = {
    -- Default keymap options
    noremap = true,
    buffer = true,

    ['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'"},
    ['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'"},

    ['n <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
    ['n <leader>hu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
    ['n <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
    ['n <leader>hR'] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
    ['n <leader>hp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
    ['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line()<CR>',

    -- Text objects
    ['o ih'] = ':<C-U>lua require"gitsigns".text_object()<CR>',
    ['x ih'] = ':<C-U>lua require"gitsigns".text_object()<CR>'
  },
  watch_index = {
    interval = 1000
  },
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000,
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
}

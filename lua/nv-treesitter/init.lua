local colors = require("colorscheme").colors()

require('nvim-treesitter.configs').setup {
  --ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true, -- false will disable the whole extension
    --disable = {"go"}
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
    colors = {
      colors.violet,
      colors.blue,
      colors.magenta,
      colors.green,
    },
    disable = {'go', 'lua', 'rust'}
  }
  --playground = {
  --  enable = true,
  --  disable = {},
  --  updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
  --  persist_queries = false -- Whether the query persists across vim sessions
  --},
  --autotag = {enable = true},
  --rainbow = {enable = false}
  -- refactor = {highlight_definitions = {enable = true}}
}



-- ========
-- Settings
-- ========

local M = {}

function M.setup()
  vim.o.title         = true                -- show the file name as title
  vim.wo.number       = true                -- show line numbers.
  vim.o.mouse         = "a"                 -- enable mouse.
  vim.o.history       = 1000                -- increase history size.
  vim.wo.wrap         = false               -- do not divide the line if it is long.
  vim.wo.cursorline   = true                -- show the current line.
  vim.o.synmaxcol     = 160                 -- show syntax highlight until column number.

  -- Default Identation
  vim.o.tabstop       = 2                   -- tabs with 2 spaces.
  vim.o.shiftwidth    = 2                   --
  vim.o.softtabstop   = 2                   --
  vim.o.shiftround    = true                --
  vim.o.expandtab     = true                -- inserts spaces indest <Tab>s.

  -- Folding Settings
  vim.o.foldmethod    = "indent"
  vim.o.foldnestmax   = 10
  vim.o.foldenable    = false
  vim.o.foldlevel     = 2
  vim.o.hidden        = true                -- allow buffer switching without saving.
  vim.o.ignorecase    = true                -- case insensitive for searchs.
  vim.o.autoread      = true
  vim.o.spelllang     = "en,es"             -- spell check (english and spanish)
  vim.o.encoding      = "UTF-8"             -- encodig utf-8
  vim.o.backspace     = "indent,eol,start"  -- backspaceever work on insert mode

  vim.cmd("set shortmess+=c")
  vim.o.clipboard = "unnamedplus"
  vim.cmd('let NERDTreeQuitOnOpen=1')
  vim.g.webdevicons_enable_nerdtree = 0
  vim.g.completion_enable_auto_popup = 1

  -- Go
  vim.g.go_gopls_enabled = 0
  vim.g.go_fmt_autosave = 0
  vim.g.go_mod_fmt_autosave = 0
  vim.g.go_asmfmt_autosave = 0
  vim.g.go_imports_autosave = 0
  vim.g.go_addtags_transform = "snakecase"
  -- vim.g.go_addtags_transform = "camelcase"

  -- Command remap
  vim.cmd(':command! WQ wq')
  vim.cmd(':command! WQ wq')
  vim.cmd(':command! Wq wq')
  vim.cmd(':command! Wqa wqa')
  vim.cmd(':command! W w')
  vim.cmd(':command! Q q')
end

return M

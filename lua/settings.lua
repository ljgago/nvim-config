-- ========
-- Settings
-- ========

vim.o.title         = true                -- show the file name as title
vim.wo.number       = true                -- show line numbers.
vim.o.mouse         = "a"                 -- enable mouse.
vim.o.history       = 1000                -- increase history size.
vim.wo.wrap         = false               -- do not divide the line if it is long.
vim.wo.cursorline   = true                -- show the current line.
vim.o.synmaxcol     = 160                 -- show syntax highlight until column number.

-- default identation
vim.o.tabstop       = 2                   -- tabs with 2 spaces.
vim.o.shiftwidth    = 2                   --
vim.o.softtabstop   = 2                   --
vim.o.shiftround    = true                --
vim.o.expandtab     = true                -- inserts spaces indest <Tab>s.
-- vim.o.smartindent   = true
--vim.cmd('set noexpandtab')

vim.o.hidden        = true                -- allow buffer switching without saving.

vim.o.ignorecase    = true                -- case insensitive for searchs.
vim.o.autoread      = true

vim.o.spelllang     = "en,es"             -- spell check (english and spanish)
vim.o.encoding      = "UTF-8"             -- encodig utf-8
vim.o.backspace     = "indent,eol,start"  -- backspaceever work on insert mode

--vim.cmd([[set listchars=tab:\ \ ,trail:-,extends:>,precedes:<,nbsp:+]])
--vim.wo.list = true

--vim.o.lcs = [[tab:  ,trail:-,extends:>,precedes:<,nbsp:+]]

vim.cmd("set shortmess+=c")
vim.o.clipboard = "unnamedplus"

vim.cmd('let NERDTreeQuitOnOpen=1')
vim.g.webdevicons_enable_nerdtree = 0

vim.g.completion_enable_auto_popup = 1

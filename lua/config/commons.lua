vim.g.mapleader    = " "
vim.o.title        = true -- show the file name as title
vim.wo.number      = true -- show line numbers.
vim.o.mouse        = "a"  -- enable mouse.
vim.o.history      = 1000 -- increase history size.
vim.wo.cursorline  = true -- show the current line.
vim.o.synmaxcol    = 160  -- show syntax highlight until column number.

-- divide the line if it is long.
vim.wo.wrap        = true

-- break lines at appropriate points within words, avoiding the splitting of words
vim.wo.linebreak   = true

-- wrapped lines indent according to the original line's indentation level
vim.wo.breakindent = true

-- Define global borders (some plugins still don't take this option in consideration)
vim.o.winborder    = "single"

-- Default Identation
vim.o.tabstop      = 2    -- tabs with 2 spaces.
vim.o.shiftwidth   = 2    --
vim.o.softtabstop  = 2    --
vim.o.shiftround   = true --
vim.o.expandtab    = true -- inserts spaces indest <Tab>s.

-- Folding Settings
vim.o.foldmethod   = "indent"
vim.o.foldnestmax  = 10
vim.o.foldenable   = false
vim.o.foldlevel    = 2
vim.o.hidden       = true               -- allow buffer switching without saving.
vim.o.ignorecase   = true               -- case insensitive for searchs.
vim.o.autoread     = true
vim.o.spelllang    = "en,es"            -- spell check (english and spanish)
vim.o.encoding     = "UTF-8"            -- encodig utf-8
vim.o.backspace    = "indent,eol,start" -- backspaceever work on insert mode
-- Window
vim.o.splitbelow   = true
vim.o.splitright   = true

vim.cmd("set shortmess+=c")
-- vim.o.clipboard = "unnamedplus"
vim.cmd('let NERDTreeQuitOnOpen=1')
vim.g.webdevicons_enable_nerdtree = 0
vim.g.completion_enable_auto_popup = 1

-- vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
--   pattern = "*.hurl",
--   command = "set filetype=hurl"
-- })

-- Command remap
vim.cmd(':command! WQ wq')
vim.cmd(':command! WQ wq')
vim.cmd(':command! Wq wq')
vim.cmd(':command! Wqa wqa')
vim.cmd(':command! W w')
vim.cmd(':command! Q q')

vim.g.terminal_color_1 = "#fb4934"
vim.g.terminal_color_2 = "#fb4934"
vim.g.terminal_color_3 = "#fb4934"
vim.g.terminal_color_4 = "#fb4934"

vim.g.editorconfig = true
vim.g.lsp_no_default_keymaps = true

local opts = { noremap = true, silent = true }

-- Copy/paste with system clipboard
vim.keymap.set({ "n", "x" }, "gy", '"+y', { desc = 'Copy to system clipboard' })
vim.keymap.set({ "n", "v" }, "gp", '"+p', { desc = 'Paste from system clipboard' })
-- Paste in Visual with `P` to not copy selected text (`:h v_P`)
vim.keymap.set({ "n", "v", "x" }, "gP", '"+P', { desc = 'Paste from system clipboard' })

-- Move line in Normal mode
vim.keymap.set("n", "<C-Up>", "<Cmd>m -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", "<Cmd>m +1<CR>", opts)

-- Move line in Insert mode
-- vim.keymap.set("i", "<C-Up>", "<ESC>:m .-2<CR>==gi", opts)
-- vim.keymap.set("i", "<C-Down>", "<ESC>:m .+1<CR>==gi", opts)
vim.keymap.set("i", "<C-Up>", "<Cmd>m -2<CR>", opts)
vim.keymap.set("i", "<C-Down>", "<Cmd>m +1<CR>", opts)

-- Move line in Visual mode
vim.keymap.set("v", "<C-Up>", ":m \'<-2<CR>gv=gv", opts)
vim.keymap.set("v", "<C-Down>", ":m \'>+1<CR>gv=gv", opts)

-- EasyAlign
vim.keymap.set("x", "ga", "<Plug>(EasyAlign}", opts)
vim.keymap.set("n", "ga", "<Plug>(EasyAlign)", opts)

-- Increment/decrement
vim.keymap.set("n", "+", "<C-a>", opts)
vim.keymap.set("n", "-", "<C-x>", opts)

-- Folding
vim.keymap.set("i", "<F9>", "<Esc>za", opts)
vim.keymap.set("n", "<F9>", "za", opts)
vim.keymap.set("o", "<F9>", "<Esc>za", opts)
vim.keymap.set("v", "<F9>", "zf", opts)

-- Terminal
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", opts)

-- Replace unused key
vim.keymap.set("n", "K", "k", opts)

-- Helix
vim.keymap.set("n", "x", "V", opts)
vim.keymap.set("v", "x", "j", opts)
vim.keymap.set("n", "X", "V", opts)
vim.keymap.set("v", "X", "j", opts)

-- Cursor move
vim.keymap.set("n", "gh", "0", { noremap = true, silent = true, desc = "Goto line start" })
vim.keymap.set("n", "gl", "$", { noremap = true, silent = true, desc = "Goto line end" })

-- Move cursor between wrap linebreak
-- local linebreak_opts = { expr = true, silent = true }
-- vim.keymap.set("n", "j", "v:count == 0 ? \"gj\" : \"j\"", linebreak_opts)
-- vim.keymap.set("n", "k", "v:count == 0 ? \"gk\" : \"k\"", linebreak_opts)
-- vim.keymap.set("v", "j", "v:count == 0 ? \"gj\" : \"j\"", linebreak_opts)
-- vim.keymap.set("v", "k", "v:count == 0 ? \"gk\" : \"k\"", linebreak_opts)
-- vim.keymap.set("n", "<Down>", "v:count == 0 ? \"gj\" : \"j\"", linebreak_opts)
-- vim.keymap.set("n", "<Up>", "v:count == 0 ? \"gk\" : \"k\"", linebreak_opts)
-- vim.keymap.set("i", "<Up>", "v:count == 0 ? \"<C-o>gk\" : \"k\"", linebreak_opts)
-- vim.keymap.set("i", "<Down>", "v:count == 0 ? \"<C-o>gj\" : \"j\"", linebreak_opts)
-- vim.keymap.set("v", "<Up>", "v:count == 0 ? \"gk\" : \"k\"", linebreak_opts)
-- vim.keymap.set("v", "<Down>", "v:count == 0 ? \"gj\" : \"j\"", linebreak_opts)

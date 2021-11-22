-- Go Lang
require('lspconfig').gopls.setup{
  on_attach = require('lsp').custom_attach
}

vim.g.go_gopls_enabled = 0
vim.g.go_fmt_autosave = 0
vim.g.go_mod_fmt_autosave = 0
vim.g.go_asmfmt_autosave = 0
vim.g.go_imports_autosave = 0

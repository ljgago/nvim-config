-- Go Lang
require('lspconfig').gopls.setup{
  on_attach = require('lsp').custom_attach
}

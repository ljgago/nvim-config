-- CSS Lang
require'lspconfig'.cssls.setup{
  on_attach = require('lsp').custom_attach
}

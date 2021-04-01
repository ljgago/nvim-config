-- Zig Lang
require('lspconfig').zls.setup{
  on_attach = require('lsp').custom_attach
}


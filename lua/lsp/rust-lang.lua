-- Rust Lang
require('lspconfig').rust_analyzer.setup {
  on_attach = require('lsp').custom_attach
}

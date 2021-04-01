-- Elixir Lang
require('lspconfig').elixirls.setup{
  on_attach = require('lsp').custom_attach,
  cmd = { "elixir_ls" }
}

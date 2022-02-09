-- Javascipt and Typescript Lang
require('lspconfig').tsserver.setup{
  on_attach = require('lsp').custom_attach,
  -- capabilities = require('lsp').capabilities
}
-- require'lspconfig'.eslint.setup{
--   on_attach = require('lsp').custom_attach
-- }
-- require'lspconfig'.denols.setup{}

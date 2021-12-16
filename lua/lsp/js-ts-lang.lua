-- Javascipt and Typescript Lang
require('lspconfig').tsserver.setup{
  on_attach = require('lsp').custom_attach
}
-- require'lspconfig'.eslint.setup{
--   on_attach = require('lsp').custom_attach
-- }
-- require'lspconfig'.denols.setup{}

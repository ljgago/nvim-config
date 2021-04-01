-- Python Lang
require('lspconfig').pyright.setup {
  on_attach = require('lsp').custom_attach,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off",
        diagnosticSeverityOverrides = {
          reportUnusedVariable = false,
          reportFunctionMemberAccess = false,
        },

        reportUnusedVariable = false,
        reportFunctionMemberAccess = false,

      }
    }
  }
}

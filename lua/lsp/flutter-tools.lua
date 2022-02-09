vim.g.dart_style_guide = 2
vim.g.dart_format_on_save = 1
vim.g.dartfmt_options = {'--fix'}

require("flutter-tools").setup {} -- use defaults

-- alternatively you can override the default configs
-- require("flutter-tools").setup {
--   debugger = { -- integrate with nvim dap + install dart code debugger
--     enabled = false,
--   },
--   flutter_path = "flutter", -- <-- this takes priority over the lookup
--   flutter_lookup_cmd = nil, -- example "dirname $(which flutter)" or "asdf where flutter"
--   widget_guides = {
--     enabled = false,
--   },
--   -- closing_tags = {
--   --   highlight = "ErrorMsg", -- highlight for the closing tag
--   --   prefix = "// ", -- character to use for close tag e.g. > Widget
--   --   enabled = true, -- set to false to disable
--   -- },
--   -- dev_log = {
--   --   open_cmd = "tabedit", -- command to use to open the log buffer
--   -- },
--   dev_tools = {
--     autostart = start, -- autostart devtools server if not detected
--   },
--   outline = {
--     open_cmd = "30vnew", -- command to use to open the outline buffer
--   },
--   lsp = {
--     on_attach = my_custom_on_attach,
--     capabilities = my_custom_capabilities, -- e.g. lsp_status capabilities
--     settings = {
--       showTodos = true,
--       completeFunctionCalls = true, -- NOTE: this is WIP and doesn't work currently
--     }
--   }
-- }

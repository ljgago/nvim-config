local lsp_config = {}

function lsp_config.custom_attach(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  -- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  -- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  -- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)

  -- formatting
  if client.name == 'tsserver' then
    client.resolved_capabilities.document_formatting = false
  end

  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end

  -- local protocol = require'vim.lsp.protocol'
  -- protocol.CompletionItemKind = {
  --   '', -- Text
  --   '', -- Method
  --   '', -- Function
  --   '', -- Constructor
  --   '', -- Field
  --   '', -- Variable
  --   '', -- Class
  --   'ﰮ', -- Interface
  --   '', -- Module
  --   '', -- Property
  --   '', -- Unit
  --   '', -- Value
  --   '', -- Enum
  --   '', -- Keyword
  --   '﬌', -- Snippet
  --   '', -- Color
  --   '', -- File
  --   '', -- Reference
  --   '', -- Folder
  --   '', -- EnumMember
  --   '', -- Constant
  --   '', -- Struct
  --   '', -- Event
  --   'ﬦ', -- Operator
  --   '', -- TypeParameter
  -- }

  -- Set up completion using nvim_cmp with LSP source
  -- local capabilities = require('cmp_nvim_lsp').update_capabilities(
  --   vim.lsp.protocol.make_client_capabilities()
  -- )

  -- -- Set some keybinds conditional on server capabilities
  -- if client.resolved_capabilities.document_formatting then
  --   buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  -- elseif client.resolved_capabilities.document_range_formatting then
  --   buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
  -- end

  -- -- Set autocommands conditional on server_capabilities
  -- if client.resolved_capabilities.document_highlight then
  --   vim.api.nvim_exec([[
  --     hi LspReferenceRead cterm=bold ctermbg=red guifg=#1e1e1e guibg=#e5c07b
  --     hi LspReferenceText cterm=bold ctermbg=red guifg=#1e1e1e guibg=#e5c07b
  --     hi LspReferenceWrite cterm=bold ctermbg=red guifg=#1e1e1e guibg=#e5c07b
  --     augroup lsp_document_highlight
  --       autocmd! * <buffer>
  --       autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
  --       autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
  --     augroup END
  --   ]], false)
  -- end

end

function lsp_config.capabilities()
  local protocol = require('vim.lsp.protocol')
  -- protocol.CompletionItemKind = {
  --   '', -- Text
  --   '', -- Method
  --   '', -- Function
  --   '', -- Constructor
  --   '', -- Field
  --   '', -- Variable
  --   '', -- Class
  --   'ﰮ', -- Interface
  --   '', -- Module
  --   '', -- Property
  --   '', -- Unit
  --   '', -- Value
  --   '', -- Enum
  --   '', -- Keyword
  --   '﬌', -- Snippet
  --   '', -- Color
  --   '', -- File
  --   '', -- Reference
  --   '', -- Folder
  --   '', -- EnumMember
  --   '', -- Constant
  --   '', -- Struct
  --   '', -- Event
  --   'ﬦ', -- Operator
  --   '', -- TypeParameter
  -- }

  local capabilities = protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

  return capabilities
end

return lsp_config

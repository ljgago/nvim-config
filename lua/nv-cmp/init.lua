vim.o.completeopt = "menuone,noselect"

local cmp = require('cmp')

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
  local col = vim.fn.col(".") - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil
end

local kind_icons = {
  Text = '', -- Text
  Method = '', -- Method
  Function = '', -- Function
  Constructor = '', -- Constructor
  Field = '', -- Field
  Variable = 'α', -- Variable
  Class = '', -- Class
  Interface = 'ﰮ', -- Interface
  Module = '', -- Module
  Property = '', -- Property
  Unit = '', -- Unit
  Value = '', -- Value
  Enum = '', -- Enum
  Keyword = '', -- Keyword
  Snippet = '﬌', -- Snippet
  Color = '', -- Color
  File = '', -- File
  Reference = '', -- Reference
  Folder = '', -- Folder
  EnumMember = '', -- EnumMember
  Constant = '', -- Constant
  Struct = '', -- Struct
  Event = '', -- Event
  Operator = 'ﬦ', -- Operator
  TypeParameter = '', -- TypeParameter
}

cmp.setup {
  formatting = {
    format = function(_, vim_item)
      -- Kind icons
      -- This concatonates the icons with the name of the item kind
      vim_item.kind = string.format('%s  %s', kind_icons[vim_item.kind], vim_item.kind)
      -- vim_item.kind = string.format('%s ', kind_icons[vim_item.kind])
      -- Source
      -- set a name for each source
      -- vim_item.menu = ({
      --     buffer = "[Buffer]",
      --     nvim_lsp = "[LSP]",
      --     ultisnips = "[UltiSnips]",
      --     nvim_lua = "[Lua]",
      --     cmp_tabnine = "[TabNine]",
      --     look = "[Look]",
      --     path = "[Path]",
      --     spell = "[Spell]",
      --     calc = "[Calc]",
      --     emoji = "[Emoji]"
      -- })[entry.source.name]
      return vim_item
    end
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true
    }),
    ["<Tab>"] = cmp.mapping(
      function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end, {"i", "s"}
    ),
    ["<S-Tab>"] = cmp.mapping(
      function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        else
          fallback()
        end
      end,
      {"i", "s"}
    )
  },
  snippet = {expand = function(args) vim.fn["UltiSnips#Anon"](args.body) end},
  sources = {
    {name = 'buffer'}, {name = 'nvim_lsp'}, {name = "ultisnips"},
    {name = "nvim_lua"}, {name = "look"}, {name = "path"},
    {name = "calc"}, {name = "spell"}, {name = "emoji"}
  },
  completion = {completeopt = 'menu,menuone,noinsert'}
}

-- Database completion
vim.api.nvim_exec([[
  autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
]], false)

--     source = {
--         path = {kind = "  "},
--         buffer = {kind = "  "},
--         calc = {kind = "  "},
--         vsnip = {kind = "  "},
--         nvim_lsp = {kind = "  "},
--         nvim_lua = {kind = "  "},
--         spell = {kind = "  "},
--         tags = false,
--         snippets_nvim = {kind = "  "},
--         treesitter = {kind = "  "},
--         emoji = {kind = " ﲃ "}
--         -- for emoji press : (idk if that in compe tho)
--     }
-- }

-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- ﬘
-- 
-- 
-- 
-- m
-- 
-- 
-- 
-- 

vim.o.completeopt = "menuone,noselect"

local cmp = require('cmp')

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
  local col = vim.fn.col(".") - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil
end

cmp.setup {
  formatting = {
    format = function(entry, vim_item)
      -- set a name for each source
      vim_item.menu = ({
          buffer = "[Buffer]",
          nvim_lsp = "[LSP]",
          ultisnips = "[UltiSnips]",
          nvim_lua = "[Lua]",
          cmp_tabnine = "[TabNine]",
          look = "[Look]",
          path = "[Path]",
          spell = "[Spell]",
          calc = "[Calc]",
          emoji = "[Emoji]"
      })[entry.source.name]
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

-- require('compe').setup {
--     enabled = true,
--     autocomplete = true,
--     debug = false,
--     min_length = 1,
--     preselect = 'enable',
--     throttle_time = 80,
--     source_timeout = 200,
--     incomplete_delay = 400,
--     max_abbr_width = 100,
--     max_kind_width = 100,
--     max_menu_width = 100,
--     documentation = true,
--
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

-- local cmp = require'cmp'

-- cmp.setup {
--   enabled = true;
--   autocomplete = true;
--   debug = false;
--   min_length = 1;
--   preselect = 'enable';
--   throttle_time = 80;
--   source_timeout = 200;
--   incomplete_delay = 400;
--   max_abbr_width = 100;
--   max_kind_width = 100;
--   max_menu_width = 100;
--   documentation = true;

--   source = {
--     path = true;
--     buffer = true;
--     calc = true;
--     nvim_lsp = true;
--     nvim_lua = true;
--     vsnip = true;
--   };
-- }


-- local t = function(str)
--     return vim.api.nvim_replace_termcodes(str, true, true, true)
-- end

-- local check_back_space = function()
--     local col = vim.fn.col('.') - 1
--     if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
--         return true
--     else
--         return false
--     end
-- end

-- -- Use (s-)tab to:
-- --- move to prev/next item in completion menuone
-- --- jump to prev/next snippet's placeholder
-- _G.tab_complete = function()
--     if vim.fn.pumvisible() == 1 then
--         return t "<C-n>"
--     elseif vim.fn.call("vsnip#available", {1}) == 1 then
--         return t "<Plug>(vsnip-expand-or-jump)"
--     elseif check_back_space() then
--         return t "<Tab>"
--     else
--         return cmp.complete()
--         -- return vim.fn['cmp#complete']()
--     end
-- end

-- _G.s_tab_complete = function()
--     if vim.fn.pumvisible() == 1 then
--         return t "<C-p>"
--     elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
--         return t "<Plug>(vsnip-jump-prev)"
--     else
--         return t "<S-Tab>"
--     end
-- end

-- vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true, noremap = true})
-- vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true, noremap = true})
-- vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true, noremap = true})
-- vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true, noremap = true})

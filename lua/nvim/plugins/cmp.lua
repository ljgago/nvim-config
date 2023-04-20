-- =========================
-- Plugin - hrsh7th/nvim-cmp
-- =========================

local M = {}

function M.config()
  local status_cmp_ok, cmp = pcall(require, "cmp")
  if not status_cmp_ok then
    return nil
  end

  -- require("luasnip.loaders.from_vscode").lazy_load({})
  require("luasnip").filetype_extend("dart", { "flutter" })

  local kind_icons = {
    Text = '',
    Method = '',
    Function = '',
    Constructor = '',
    Field = '',
    Variable = 'α',
    Class = '',
    Interface = 'ﰮ',
    Module = '',
    Property = '',
    Unit = '',
    Value = '',
    Enum = '',
    Keyword = '',
    Snippet = '﬌',
    Color = '',
    File = '',
    Reference = '',
    Folder = '',
    EnumMember = '',
    Constant = '',
    Struct = '',
    Event = '',
    Operator = 'ﬦ',
    TypeParameter = '',
  }

  source_names = {
    buffer = "[Buffer]",
    nvim_lsp = "[LSP]",
    luasnip = "[LuaSnip]",
    -- vsnip = "[VSnip]",
    nvim_lua = "[Lua]",
    cmp_tabnine = "[TabNine]",
    look = "[Look]",
    path = "[Path]",
    spell = "[Spell]",
    calc = "[Calc]",
    emoji = "[Emoji]"
  }

  -- source_names = {
  --   nvim_lsp = "(LSP)",
  --   emoji = "(Emoji)",
  --   path = "(Path)",
  --   calc = "(Calc)",
  --   cmp_tabnine = "(Tabnine)",
  --   vsnip = "(Snippet)",
  --   luasnip = "(Snippet)",
  --   buffer = "(Buffer)",
  -- }

  return {
    formatting = {
      fields = { 'kind', 'abbr', 'menu' },
      format = function(entry, vim_item)
        -- Kind icons
        -- This concatonates the icons with the name of the item kind
        -- vim_item.kind = string.format("%s  %s", vim_item.kind, kind_icons[vim_item.kind])
        vim_item.kind = string.format("%s ", kind_icons[vim_item.kind])
        -- Source
        -- set a name for each source
        vim_item.menu = source_names[entry.source.name]
        return vim_item
      end
    },
    mapping = {
      ["<C-p>"] = cmp.mapping.select_prev_item(),
      ["<C-n>"] = cmp.mapping.select_next_item(),
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.close(),
      ["<CR>"] = cmp.mapping.confirm({
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
    snippet = {
      expand = function(args)
        -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end
    },
    sources = {
      { name = "nvim_lsp" },
      -- { name = 'vsnip' }, -- For vsnip users.
      { name = "luasnip" }, -- For luasnip users.
      {name = "nvim_lua"}, {name = "look"}, {name = "path"},
      {name = "calc"}, {name = "spell"}, {name = "emoji"}
    },
    completion = {completeopt = "menu,menuone,noinsert"}
  }
end

function M.setup()
  local config = M.config()
  require("cmp").setup(config)
end

return M

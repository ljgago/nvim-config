local colors = require("plugins.colorscheme").colors()

-- Lsp client
local function lsp_client()
  -- local msg = 'No Active Lsp'
  local msg = ''
  local buf_ft = vim.api.nvim_get_option_value('filetype', {})
  local clients = vim.lsp.get_clients()
  if next(clients) == nil then
    return msg
  end
  for _, client in ipairs(clients) do
    local filetypes = client.config.filetypes
    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
      return client.name
    end
  end
  return msg
end

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local custom_gruvbox = require("lualine.themes.gruvbox_dark")

    custom_gruvbox.insert.c.bg = "#3c3836"
    custom_gruvbox.command.c.bg = "#3c3836"
    custom_gruvbox.command.c.fg = "#a89984"
    custom_gruvbox.visual.c.bg = "#3c3836"
    custom_gruvbox.visual.c.fg = "#a89984"

    require("lualine").setup({
      options = {
        theme = custom_gruvbox,
        icons_enabled = true,
        globalstatus = true,
        always_divide_middle = true,
        -- section_separators = { left = '', right = ''},
        -- component_separators = { left = '', right = ''},
        component_separators = { left = "|", right = "|" },
        section_separators = "",
      },
      extensions = { "quickfix", "fugitive" },
      sections = {
        lualine_a = { { "mode", upper = false } },
        lualine_b = { { "branch", icon = "" }, "db_ui#statusline" },
        lualine_c = { { "filename", file_status = true, path = 1, use_mode_colors = false, } },
        lualine_x = {
          {
            "diagnostics",
            symbols = { error = " ", warn = " ", hint = "󰠠 ", info = " " },
          },
          {
            "diff",
            colored = true,
            -- symbols = { added = '  ', modified = ' 柳 ', removed = '  ' },
            -- symbols = { added = '  ', modified = '~', removed = '  ' },
            symbols = { added = '+', modified = '~', removed = '-' },
            diff_color = {
              added = { fg = colors.green },
              modified = { fg = colors.orange },
              removed = { fg = colors.red },
            },
          },
          {
            require("lazy.status").updates,
            cond = require("lazy.status").has_updates,
            -- color = { fg = "ff9e64" },
          },
        },
        lualine_y = {
          {
            lsp_client,
            -- cond = conditions.check_lsp_client,
            color = { fg = colors.yellow, gui = 'bold' },
          },
          "filetype"
        },
        lualine_z = { "location", "progress" },
      },
      winbar = {},
      inactive_winbar = {},
    })
  end,
}

-- local colors = require("plugins.colorscheme").colors()
--
-- -- Aux functions
-- local conditions = {
--   buffer_not_empty = function()
--     return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
--   end,
--   hide_in_width = function()
--     return vim.fn.winwidth(0) > 80
--   end,
--   check_git_workspace = function()
--     local filepath = vim.fn.expand('%:p:h')
--     local gitdir = vim.fn.finddir('.git', filepath .. ';')
--     return gitdir and #gitdir > 0 and #gitdir < #filepath
--   end,
--   check_lsp_client = function()
--     local tbl = {['dashboard'] = true, [''] = true}
--     if tbl[vim.bo.filetype] then
--       return false
--     end
--     return true
--   end,
-- }
--
-- local function file_readonly()
--   if vim.bo.filetype == 'help' then
--     return ''
--   end
--   if vim.bo.readonly == true then
--     return "  "
--   end
--   return ''
-- end
--
-- local function left_line()
-- return '▎ '
-- end
--
-- local function mode()
--   local mode_color = {
--     n = colors.green,
--     i = colors.blue,
--     v = colors.magenta,
--     [''] = colors.magenta,
--     V = colors.magenta,
--     c = colors.red,
--     no = colors.red,
--     s = colors.orange,
--     S = colors.orange,
--     [''] = colors.orange,
--     ic = colors.yellow,
--     R = colors.purple,
--     Rv = colors.purple,
--     cv = colors.red,
--     ce=colors.red,
--     r = colors.aqua,
--     rm = colors.aqua,
--     ['r?'] = colors.aqua,
--     ['!']  = colors.red,
--       t = colors.red
--   }
--   vim.api.nvim_command('hi LualineMode guifg=' .. mode_color[vim.fn.mode()])
--   return '  '
-- end
--
-- local function filepath()
--   local path = vim.fn.expand('%:.:h')
--   if vim.fn.empty(path) == 1 then return '' end
--   if path == '.' then return '' end
--   -- path = path_short(path)
--   if vim.bo.modifiable then
--     if vim.bo.modified then
--       vim.api.nvim_command('hi LualineFilepath guifg=' .. colors.red .. ' gui=bold')
--       return '  ' .. path .. '/'
--     end
--   end
--   vim.api.nvim_command('hi LualineFilepath guifg=' .. colors.green .. ' gui=bold')
--   return path .. '/'
-- end
--
-- local function filename()
--   local path = vim.fn.expand('%:.:h')
--   local file = vim.fn.expand('%:t')
--   if vim.fn.empty(file) == 1 then return '' end
--   if string.len(file_readonly()) ~= 0 then
--     return file .. file_readonly()
--   end
--   if vim.bo.modifiable then
--     if vim.bo.modified then
--       vim.api.nvim_command('hi LualineFileName guifg=' .. colors.red .. ' gui=bold')
--       if path == '.' then
--         return '  ' .. file
--       else
--         return file
--       end
--     end
--   end
--   vim.api.nvim_command('hi LualineFileName guifg=' .. colors.fg .. ' gui=bold')
--   return file
-- end
--
-- local function filename_inactive()
--   local file = vim.fn.expand('%:t')
--   if vim.fn.empty(file) == 1 then return '' end
--   if string.len(file_readonly()) ~= 0 then
--     return file .. file_readonly()
--   end
--   if vim.bo.modifiable then
--     if vim.bo.modified then
--       vim.api.nvim_command('hi LualineFilenameNC guifg=' .. colors.red .. ' gui=bold')
--       return '  ' .. file
--     end
--   end
--   vim.api.nvim_command('hi LualineFilenameNC guifg=' .. colors.fg .. ' gui=bold')
--   return file
-- end
--
-- -- Lsp client
-- function lsp_client()
--   -- local msg = 'No Active Lsp'
--   local msg = ''
--   local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
--   local clients = vim.lsp.get_active_clients()
--   if next(clients) == nil then
--     return msg
--   end
--   for _, client in ipairs(clients) do
--     local filetypes = client.config.filetypes
--     if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
--       return client.name
--     end
--   end
--   return msg
-- end
--
-- return {
--   "nvim-lualine/lualine.nvim",
--   dependencies = {
--     "nvim-tree/nvim-web-devicons"
--   },
--   lazy = false,
--   config = function()
--     local nvimtree = {
--       options = {
--         theme = {
--           normal = { c = { fg = colors.fg, bg = colors.bg } },
--           inactive = { c = { fg = colors.fg, bg = colors.bg } },
--         },
--       },
--       sections = {
--         lualine_a = {},
--       },
--       filetypes = { 'NvimTree' },
--     }
--
--     require("lualine").setup {
--       options = {
--         -- Disable sections and component separators
--         component_separators = '',
--         section_separators = '',
--         theme = {
--           normal = { c = { fg = colors.fg, bg = colors.bg } },
--           inactive = { c = { fg = colors.fg, bg = colors.bg } },
--         },
--       },
--       sections = {
--         -- these are to remove the defaults
--         lualine_a = {},
--         lualine_b = {},
--         lualine_y = {},
--         lualine_z = {},
--         lualine_c = {
--           {
--             left_line,
--             color = { fg = colors.blue }, -- Sets highlighting of component
--             padding = { left = 0, right = 0 }, -- We don't need space before this
--           },
--           {
--             mode,
--             color = 'LualineMode',
--             padding = { right = 1 },
--           },
--           {
--             filepath,
--             cond = conditions.buffer_not_empty,
--             color = 'LualineFilepath',
--             padding = { right = 0 }, -- We don't need space before this
--           },
--           {
--             filename,
--             cond = conditions.buffer_not_empty,
--             color = 'LualineFilename',
--             padding = { left = 0, right = 2 }, -- We don't need space before this
--           },
--           {
--             'location'
--           },
--           {
--             'progress',
--             color = { fg = colors.fg, gui = 'bold' }
--           },
--           {
--             'diagnostics',
--             sources = { 'nvim_diagnostic' },
--             symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
--             diagnostics_color = {
--               error = { fg = colors.red },
--               warn = { fg = colors.yellow },
--               info = { fg = colors.blue },
--               hint = { fg = colors.aqua },
--             },
--             padding = { left = 3, right = 3 }, -- We don't need space before this
--           }
--         },
--         lualine_x = {
--           {
--             'diff',
--             -- Is it me or the symbol for modified us really weird
--             symbols = { added = '  ', modified = ' 柳', removed = '  ' },
--             diff_color = {
--               added = { fg = colors.green },
--               modified = { fg = colors.orange },
--               removed = { fg = colors.red },
--             },
--             cond = conditions.hide_in_width,
--           },
--           {
--             'branch',
--             icon = '',
--             color = { fg = colors.purple, gui = 'bold' },
--           },
--           {
--             lsp_client,
--             cond = conditions.check_lsp_client,
--             color = { fg = colors.yellow, gui = 'bold' },
--           },
--           {
--             'o:encoding',
--             fmt = string.upper,
--             cond = conditions.hide_in_width,
--             color = { fg = colors.green, gui = 'bold' },
--             padding = { left = 1, right = 1 },
--           },
--           {
--             'fileformat',
--             fmt = string.upper,
--             icons_enabled = false,
--             color = { fg = colors.green, gui = 'bold' },
--             padding = { left = 0, right = 1 },
--           },
--           {
--             'filetype',
--             cond = conditions.buffer_not_empty,
--             fmt = string.upper,
--             icons_enabled = false,
--             color = { fg = colors.blue, gui = 'bold' },
--           },
--           {
--             'filetype',
--             cond = conditions.buffer_not_empty,
--             fmt = string.upper,
--             colored = false,
--             icons_enabled = true, -- I think icons are cool but Eviline doesn't have them. sigh
--             icon_only = true,
--             color = { fg = colors.fg, gui = 'bold' },
--             padding = { left = 1, right = 2 }, -- We don't need space before this
--           }
--         },
--       },
--       inactive_sections = {
--         -- these are to remove the defaults
--         lualine_a = {},
--         lualine_b = {},
--         lualine_y = {},
--         lualine_z = {},
--         lualine_c = {
--           {
--             left_line,
--             color = { fg = colors.fg }, -- Sets highlighting of component
--             padding = { left = 0, right = 0 }, -- We don't need space before this
--           },
--           {
--             filename_inactive,
--             cond = conditions.buffer_not_empty,
--             color = 'LualineFilenameNC',
--             padding = { left = 0, right = 0 }, -- We don't need space before this
--           },
--
--         },
--         lualine_x = {
--           {
--             'filetype',
--             cond = conditions.buffer_not_empty,
--             fmt = string.upper,
--             icons_enabled = false,
--             color = { fg = colors.fg, gui = 'bold' },
--           },
--           {
--             'filetype',
--             cond = conditions.buffer_not_empty,
--             fmt = string.upper,
--             colored = false,
--             icons_enabled = true, -- I think icons are cool but Eviline doesn't have them. sigh
--             icon_only = true,
--             color = { fg = colors.fg, gui = 'bold' },
--             padding = { left = 1, right = 2 }, -- We don't need space before this
--           }
--         },
--       },
--       extensions = { nvimtree },
--     }
--   end,
-- }

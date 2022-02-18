-- =================================
-- Plugin - kyazdani42/nvim-tree.lua
-- =================================

local M = {}

function M.config()
  -- local colors = require("nvim.colorscheme").colors()
  -- vim.cmd('hi NvimTreeStatusLineNC guibg='..colors.bg)
  -- vim.cmd('hi NvimTreeStatusLine guibg='..colors.bg)

  return {
    disable_netrw        = false,
    hijack_netrw         = true,
    open_on_setup        = false,
    ignore_ft_on_setup   = {},
    auto_close           = false,
    auto_reload_on_write = true,
    open_on_tab          = false,
    hijack_cursor        = false,
    update_cwd           = false,
    hijack_unnamed_buffer_when_opening = false,
    hijack_directories   = {
      enable = true,
      auto_open = true,
    },
    diagnostics = {
      enable = false,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      }
    },
    update_focused_file = {
      enable      = true,
      update_cwd  = true,
      ignore_list = {}
    },
    system_open = {
      cmd  = nil,
      args = {}
    },
    filters = {
      dotfiles = false,
      custom = {}
    },
    git = {
      enable = true,
      ignore = true,
      timeout = 500,
    },
    view = {
      width = 30,
      height = 30,
      hide_root_folder = false,
      side = 'left',
      auto_resize = false,
      mappings = {
        custom_only = false,
        list = {}
      },
      number = false,
      relativenumber = false,
      signcolumn = "yes"
    },
    trash = {
      cmd = "trash",
      require_confirm = true
    },
    actions = {
      change_dir = {
        global = true,
      },
      open_file = {
        quit_on_open = true,
      }
    }
  }
end

function M.setup()
  local config = M.config()
  require("nvim-tree").setup(config)
end

return M

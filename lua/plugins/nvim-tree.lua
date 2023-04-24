return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local nvimtree = require "nvim-tree"

    nvimtree.setup {
      disable_netrw        = false,
      hijack_netrw         = true,
      auto_reload_on_write = true,
      open_on_tab          = false,
      hijack_cursor        = false,
      update_cwd           = false,
      hijack_unnamed_buffer_when_opening = false,
      reload_on_bufenter = false,
      hijack_directories   = {
        enable = true,
        auto_open = true,
      },
      diagnostics = {
        enable = true,
        show_on_dirs = false,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        }
      },
      update_focused_file = {
        enable      = true,
        update_cwd  = false,
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
        hide_root_folder = false,
        side = 'left',
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
  end,
}

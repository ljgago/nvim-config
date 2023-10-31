return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
  },
  config = function()
    require('telescope').setup({
      defaults = {
        mappings = {
          i = {
            ["<Esc>"] = "close",
            ["<C-c>"] = false,
          },
          n = {
            -- ...
          },
        },
      },
      pickers = {
        buffers = {
          -- ignore_current_buffer = true,
          sort_lastused = true,
          -- bufnr_width = 100,
          sort_mru = true,
        },
        find_files = {
          find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
        },
      },
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {},
          specific_opts = {
            codeactions = true,
          },
        },
      },
    })
    require("telescope").load_extension("ui-select")
  end,
}

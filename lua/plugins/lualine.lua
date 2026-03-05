
-- Lsp client
local function lsp_client()
  -- local msg = "No Active Lsp"
  local msg = ""
  local buf_ft = vim.api.nvim_get_option_value("filetype", {})
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
    local colors = require("plugins.colorscheme").colors()

    require("lualine").setup({
      options = {
        theme = require("lualine.themes.everforest"),
        icons_enabled = true,
        globalstatus = true,
        always_divide_middle = true,
        -- section_separators = { left = "", right = ""},
        -- component_separators = { left = "", right = ""},
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
            -- symbols = { added = "  ", modified = " 柳 ", removed = "  " },
            -- symbols = { added = "  ", modified = "~", removed = "  " },
            symbols = { added = "+", modified = "~", removed = "-" },
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
            color = { fg = colors.yellow, gui = "bold" },
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

local builtins = {
  -- Commons
  "nvim.colorscheme",
  "nvim.keymappings",
  "nvim.settings",

  -- Package Manager
  "nvim.plugins.packer",

  -- Plugins
  "nvim.plugins.autopairs",
  "nvim.plugins.cmp",
  "nvim.plugins.colorizer",
  "nvim.plugins.gitsigns",
  "nvim.plugins.lsp",
  "nvim.plugins.lualine",
  "nvim.plugins.nvimtree",
  "nvim.plugins.treesitter",
}

for _, builtin_path in ipairs(builtins) do
  local builtin = require(builtin_path)
  -- setup the config
  builtin.setup()
end

-- return {
--   "ellisonleao/gruvbox.nvim",
--   name = "gruvbox",
--   lazy = false,
--   priority = 1000,
--   init = function()
--     vim.o.termguicolors = true
--     vim.o.background = "dark"
--     vim.cmd.colorscheme("gruvbox")
--
--     vim.cmd.colorscheme("gruvbox")
--     vim.api.nvim_set_hl(0, "InsertCursor", { bg = "#83a598" })
--     vim.api.nvim_set_hl(0, "VisualCursor", { bg = "#fe8019" })
--     vim.o.guicursor = "i-ci:block-InsertCursor,v-ve:block-VisualCursor"
--   end,
--   config = function()
--     require("gruvbox").setup({
--       overrides = {
--         -- Operator = { fg = "#fe8019", italic = false },
--         ["Delimiter"] = { link = "GruvboxOrange" },
--         ["@module.elixir"] = { link = "GruvboxYellow" },
--       }
--     })
--   end,
--   -- colors isn't part of lazy.nvim
--   colors = function()
--     return {
--       alt_bg = "#2c323c",
--       bg     = "#282828",
--       fg     = "#ebdbb2",
--       red    = "#fb4934",
--       green  = "#b8bb26",
--       yellow = "#fabd2f",
--       blue   = "#83a598",
--       purple = "#d3869b",
--       aqua   = "#8ec07c",
--       orange = "#fe8019",
--     }
--   end,
-- }

return {
  "sainnhe/everforest",
  name = "everforest",
  init = function()
    vim.o.termguicolors = true
    vim.o.background = "dark"
    vim.g.everforest_better_performance = 1
    vim.g.everforest_background = "medium"
    vim.cmd.colorscheme("everforest")

    vim.api.nvim_set_hl(0, "NormalCursor", { bg = "#a7c080" })
    vim.api.nvim_set_hl(0, "InsertCursor", { bg = "#d3c6aa" })
    vim.api.nvim_set_hl(0, "VisualCursor", { bg = "#e67e80" })
    vim.o.guicursor = "n:block-NormalCursor,i-ci:block-InsertCursor,v-ve:block-VisualCursor"
  end,
  colors = function()
    return {
      alt_bg = "#333c43", -- Un gris verdoso suave para capas secundarias
      bg     = "#2d353b", -- El fondo "confort" característico de Everforest
      fg     = "#d3c6aa", -- Un blanco crema que no deslumbra
      red    = "#e67e80", -- Rojo desaturado (tirando a coral)
      green  = "#a7c080", -- El verde "bosque" protagonista
      yellow = "#dbbc7f", -- Amarillo ámbar suave
      blue   = "#7fbbb3", -- Azul aqua (muy lejos del azul eléctrico)
      purple = "#d699b6", -- Malva empolvado
      aqua   = "#83c092", -- Verde menta suave
      orange = "#e69875", -- Naranja terracota
    }
  end,
}

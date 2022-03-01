-- ======================================
-- Plugin - nvim-telescope/telescope.nvim
-- ======================================

local M = {}

function M.config()
  local actions = require("telescope.actions")
  return {
    -- defaults = {
    --   mappings = {
    --     i = {
    --       ["<esc>"] = actions.close,
    --     },
    --   },
    -- },
    -- extensions = {
    --   fzf = {
    --     fuzzy = true,                    -- false will only do exact matching
    --     override_generic_sorter = true,  -- override the generic sorter
    --     override_file_sorter = true,     -- override the file sorter
    --     case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    --   }
    -- }
  }
end

function M.setup()
  local config = M.config()
  require("telescope").setup(config)
  require("telescope").load_extension("fzf")
end

return M

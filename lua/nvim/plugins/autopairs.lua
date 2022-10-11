-- ==============================
-- Plugin - windwp/nvim-autopairs
-- ==============================

local M = {}

function M.config()
  return {
    disable_filetype = { "TelescopePrompt" , "vim" },
    fast_wrap = {},
    enable_check_bracket_line = false,
  }
end

function M.setup()
  local config    = M.config()
  local autopairs = require("nvim-autopairs")
  local Rule      = require("nvim-autopairs.rule")

  autopairs.setup(config)
  -- autopairs.add_rules {
  --   Rule(" ", " ")
  --     :with_pair(function (opts)
  --       local pair = opts.line:sub(opts.col - 1, opts.col)
  --       return vim.tbl_contains({ "()", "[]", "{}" }, pair)
  --     end),
  --   Rule("( ", " )")
  --     :with_pair(function() return false end)
  --     :with_move(function(opts)
  --       return opts.prev_char:match(".%)") ~= nil
  --     end)
  --     :use_key(")"),
  --   Rule("{ ", " }")
  --     :with_pair(function() return false end)
  --     :with_move(function(opts)
  --       return opts.prev_char:match(".%}") ~= nil
  --     end)
  --     :use_key("}"),
  --   Rule("[ ", " ]")
  --     :with_pair(function() return false end)
  --     :with_move(function(opts)
  --       return opts.prev_char:match(".%]") ~= nil
  --     end)
  --     :use_key("]")
  -- }
end

return M

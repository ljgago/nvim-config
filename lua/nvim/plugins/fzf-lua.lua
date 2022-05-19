-- =========================
-- Plugin - ibhagwan/fzf-lua
-- =========================

local M = {}

function M.config()
  return {
    fzf_opts = {
      ["--layout"] = "default",
    }
  }
end

function M.setup()
  local config = M.config()
  require("fzf-lua").setup(config)
end

return M

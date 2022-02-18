-- ====================================
-- Plugin - norcalli/nvim-colorizer.lua
-- ====================================

local M = {}

function M.config()
  return {
    {'*';},
    {
      RGB      = true;         -- #RGB hex codes
      RRGGBB   = true;         -- #RRGGBB hex codes
      names    = true;         -- "Name" codes like Blue
      RRGGBBAA = false;        -- #RRGGBBAA hex codes
      rgb_fn   = false;        -- CSS rgb() and rgba() functions
      hsl_fn   = false;        -- CSS hsl() and hsla() functions
      css      = false;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
      css_fn   = false;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
    }
  }
end

function M.setup()
  local config1, config2 = unpack(M.config())
  require("colorizer").setup(config1, config2)
end

return M

return {
  "numToStr/Comment.nvim",
  -- keys = { { "gcc", desc = "Comment current line" }, { "gc", mode = "v", desc = "Comment selected text" } },
  lazy = false,
  priority = 1002,
  init = function()
    local ft = require("Comment.ft")
    ft.set("hurl", { "#%s" })
    ft.set("typespec", { "//%s" })
  end,
  config = true
}

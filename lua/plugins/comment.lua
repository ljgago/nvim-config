return {
  "numToStr/Comment.nvim",
  -- keys = { { "gcc", desc = "Comment current line" }, { "gc", mode = "v", desc = "Comment selected text" } },
  lazy = false,
  priority = 1002,
  init = function()
    local ft = require("Comment.ft")
    ft.set("hurl", { "#%s" })
    ft.set("typespec", { "//%s" })
    ft.set("templ", { "//%s", "<!--%s-->" })
  end,
  config = function()
    require("Comment").setup({
      toggler = { line = "<C-c>" },
      opleader = { line = "<C-c>" },
    })
  end
}
